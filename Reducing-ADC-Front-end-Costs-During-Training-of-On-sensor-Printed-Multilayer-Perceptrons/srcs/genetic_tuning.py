import sys
import numpy as np
import pandas as pd
import os
from multiprocessing.pool import ThreadPool
from sklearn.model_selection  import train_test_split

# import torch
# import torch.nn as nn
import keras

from pymoo.algorithms.moo.nsga2 import NSGA2
from pymoo.optimize import minimize
from pymoo.core.problem import ElementwiseProblem
from pymoo.operators.crossover.sbx import SBX
from pymoo.operators.mutation.pm import PM
from pymoo.operators.repair.rounding import RoundingRepair
from pymoo.operators.sampling.rnd import IntegerRandomSampling
from pymoo.core.problem import StarmapParallelization

from adc import adc_levels_pruned
from calculate_adc_area import adc_levels_pruned_area
from QATraining_model import train_quantized_model_parameterized

INPUT_BITS=4

pool = ThreadPool(50)
class MyProblem(ElementwiseProblem):

    def __init__(self, coefficients, dataset_name, topology, X_test, Y_test, X_train, Y_train, baseline_acc, **kwargs):

        self.coefficients=coefficients
        self.dataset_name=dataset_name
        self.topology=topology
        self.X_test=X_test
        self.Y_test=Y_test
        self.X_train=X_train 
        self.Y_train=Y_train
        self.baseline_acc=baseline_acc
        self.num_sensors=len(X_train[0])

        xl = [0]*self.num_sensors*2
        xu = [(2**15)-1]*self.num_sensors*2

        #BATCH SIZE
        xl.extend([1])
        xu.extend([300])

        #QW, QB => 4 parameters each + 2 parameters for QA
        xl.extend([1]*(4*2+2))
        xu.extend([5]*(4*2+2))

        #EPOCH 
        xl.extend([5])
        xu.extend([100])

        super().__init__(n_var=self.num_sensors*2+1+4*2+2+1, 
                        n_obj=3,
                        n_ieq_constr=1,   # less than zero (≤0) constraint.
                        xl=xl,
                        xu=xu,
                        vtype=int,
                        **kwargs
                        )

    def _evaluate(self, x, out, *args, **kwargs):

        # define the function
        def my_eval(x):


            #if mask==1  the node is working 
            #if mask==0 the node is pruned
            ##if mask==0 and value==0 the node is hardiwred to 0 (left)
            ##if mask==0 and value==1 the node is hardiwred to 1 (right)
            masks, values=[],[]
            # for i in  range(len(x)//2):
            for i in  range(self.num_sensors):
                m=x[i]
                v=x[i+self.num_sensors]
                masks.append([int(i) for i in list('{0:015b}'.format(m))])
                values.append([int(i) for i in list('{0:015b}'.format(v))])
            
            BATCH_SIZE=x[self.num_sensors*2]
            
            prec=x[self.num_sensors*2+1:-1]
            QW=[(prec[0],prec[1]),(prec[2], prec[3])]
            QB=[(prec[0],prec[1]),(prec[2], prec[3])]
            # QB=[(prec[4],prec[5]),(prec[6], prec[7])]
            QA=[(prec[8],prec[9])]

            EPOCH=x[-1]

            X_train_levels, area_adcs, power_adcs=adc_levels_pruned_area(self.X_train, INPUT_BITS, masks, values)
            X_test_levels, _, _=adc_levels_pruned_area(self.X_test, INPUT_BITS, masks, values)
            # X_train_levels=adc_levels_pruned(self.X_train, INPUT_BITS, masks, values)
            # X_test_levels=adc_levels_pruned(self.X_test, INPUT_BITS, masks, values) 

            qmodel, accuracy = train_quantized_model_parameterized(self.coefficients, self.topology, QW, QB, QA, X_test_levels, self.Y_test, X_train_levels, self.Y_train, 1, BATCH_SIZE, EPOCH)

            # diff_levels=0
            # for i in X_train_levels:
            #     diff_levels=+len(np.unique(i))
                # print(len(i))

            inters=[]
            coeffs =[]
            for layer in qmodel.layers:
                layer_type = layer.__class__.__name__
                if layer_type =="QDense":
                    bias = layer.get_weights()[1].tolist()
                    weight = layer.get_weights()[0].tolist()
                    inters.append(bias)
                    coeffs.append(weight)

            g1=self.baseline_acc-accuracy-.10
            MLParea=(sum(QW[0])+4)*self.topology[1]+(sum(QW[1])+sum(QA[0]))*self.topology[2]
            return -accuracy, sum(area_adcs), MLParea, g1, coeffs, inters

        # prepare the parameters for the pool
        # params = [[X[k]] for k in range(len(X))]
        # calculate the function values in a parallelized manner and wait until done
        # results = pool.starmap(my_eval, params)
        accuracy, diff_levels, MLParea, g1, coeffs, inters = my_eval(x)

        # store the function values and return them.
        out["F"] = np.array([accuracy, diff_levels, MLParea])
        out["G"] = np.array(g1)
   
        out["coeffs_hidden"] = np.array(coeffs[0])
        out["coeffs_output"] = np.array(coeffs[1])
        out["bias_hidden"] = np.array(inters[0])
        out["bias_output"] = np.array(inters[1])


def genetic_tuning(coefficients, dataset_name, topology, X_test, Y_test, X_train, Y_train, baseline_acc):    

    # coeffs=[]
    x_test, x_validation, y_test, y_validation = train_test_split(X_test, Y_test, test_size = 0.5)
    dataset_path ="Networks/"+dataset_name+"/dataset/"
    np.save(dataset_path+"X_test_wo_valid.npy",x_test)
    np.save(dataset_path+"X_validation.npy",x_validation)
    np.save(dataset_path+"Y_test_wo_valid.npy",y_test)
    np.save(dataset_path+"Y_validation.npy",y_validation)


    runner=StarmapParallelization(pool.starmap)
    problem = MyProblem(coefficients, dataset_name, topology, x_validation, y_validation, X_train, Y_train, baseline_acc, elementwise_runner=runner)
    algorithm = NSGA2(pop_size=50, 
                      sampling=IntegerRandomSampling(),
                      crossover=SBX(prob=1.0, eta=3.0, vtype=float, repair=RoundingRepair()),
                      mutation=PM(prob=1.0, eta=3.0, vtype=float, repair=RoundingRepair()),
                      eliminate_duplicates=True)
    
    res = minimize( problem,
                    algorithm,
                    ('n_gen', 30),
                    seed=1,
                    verbose=True,
                    )
        
    evaluations=(res.F).tolist()
    parameters=(res.X).tolist()
    coeffs_hidden = res.opt.get("coeffs_hidden").tolist()
    coeffs_output = res.opt.get("coeffs_output").tolist()
    bias_hidden = res.opt.get("bias_hidden").tolist()
    bias_output = res.opt.get("bias_output").tolist()

    parameters_path =  f"./Networks/{dataset_name}/parameters/"
    if not os.path.exists(parameters_path):
        os.makedirs(parameters_path)

    np.save(parameters_path+"evaluations.npy",evaluations)
    np.save(parameters_path+"parameters.npy",parameters)
    np.save(parameters_path+"coeffs_hidden.npy",coeffs_hidden)
    np.save(parameters_path+"coeffs_output.npy",coeffs_output)
    np.save(parameters_path+"bias_hidden.npy",bias_hidden)
    np.save(parameters_path+"bias_output.npy",bias_output)
    np.save(parameters_path+"time.npy",res.exec_time)

    return evaluations, parameters, coeffs_hidden, coeffs_output, bias_hidden, bias_output

if __name__=="__main__":
    topology=sys.argv[1]
    initial_coeff=sys.argv[2]
    validation_test=sys.argv[3]
    genetic_tuning(topology, initial_coeff, validation_test)