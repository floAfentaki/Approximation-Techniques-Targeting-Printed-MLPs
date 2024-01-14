#Python native libraries
import os
import sys
import random
import joblib

#Python public packages
import numpy as np
import pandas as pd
from hls4ml.utils import config_from_keras_model

from pymoo.algorithms.moo.nsga2 import NSGA2
from pymoo.core.problem import Problem
from pymoo.optimize import minimize
from pymoo.termination import get_termination

from pymoo.operators.crossover.sbx import SBX
from pymoo.operators.mutation.pm import PM
from pymoo.operators.repair.rounding import RoundingRepair
from pymoo.operators.sampling.rnd import IntegerRandomSampling

from pymoo.core.evaluator import Evaluator
from pymoo.core.population import Population
from multiprocessing.pool import ThreadPool

#Our packages
from fxp_evaluation_mlp import *

pool = ThreadPool(100)
class AxAccumulation(Problem):
    def __init__(self, coefs, intercept, QX, QI, QW, QB, QA, minclass, X_train, y_train, baseline_acc):
      
      self.coefs = coefs
      self.intercept = intercept
      self.QX = QX
      self.QI = QI
      self.QW = QW
      self.QB = QB
      self.QA = QA
      self.minclass = minclass

      self.X_train=X_train
      self.y_train=y_train

      # self.acc_loss_cons = baseline_acc-baseline_acc*0.05
      self.acc_loss_cons = baseline_acc-baseline_acc*0.20
   
      neurons_hidden_layer, neurons_input_layer= np.shape(self.coefs[0])
      neurons_output_layer, _ = np.shape(self.coefs[1])

      print(f"\nNetwork Topology {neurons_input_layer}-{neurons_hidden_layer}-{neurons_output_layer}\n")

      self.neurons_input_layer = neurons_input_layer
      self.neurons_hidden_layer = neurons_hidden_layer
      self.neurons_output_layer = neurons_output_layer

      max_repr_input_layer = 2**sum(QX[0])-1
      max_repr_hidden_layer = 2**sum(QA[0])-1 

      xl = [0]*neurons_input_layer*neurons_hidden_layer # #neurons(input layer) * #neurons(hidden layer) + #neurons(hidden layer)*#neurons(output layer)
      xl.extend([0]*neurons_hidden_layer*neurons_output_layer) # #neurons(hidden layer)*#neurons(output layer)
     
      xu = [max_repr_input_layer]*neurons_input_layer*neurons_hidden_layer
      xu.extend([max_repr_hidden_layer]*neurons_hidden_layer*neurons_output_layer)

      super().__init__(n_var=neurons_input_layer*neurons_hidden_layer+neurons_hidden_layer*neurons_output_layer, 
                        n_obj=2,
                        n_ieq_constr=1,   # less than zero (≤0) constraint.
                        xl=xl,
                        xu=xu,
                        vtype=int
                        )
      
    def _evaluate(self, X, out, *args, **kwars):

        def my_eval(x):

            #pack the masks in the ccorect form
            offset = self.neurons_input_layer*self.neurons_hidden_layer #hidden layer's inputs 
            input_layer_masks=[x[self.neurons_input_layer*i:self.neurons_input_layer*(i+1)].tolist() for i in range(0,self.neurons_hidden_layer)]
            output_layer_masks=[(x[offset+i*self.neurons_hidden_layer:offset+(i+1)*self.neurons_hidden_layer].tolist()) for i in range(0, self.neurons_output_layer) ]
            masks = [input_layer_masks, output_layer_masks]    

            accuracy, num_of_bits = mask_evaluation_accuracy__FAarea(self.X_train, self.y_train, masks, self.coefs, self.intercept, self.QX, self.QI, self.QW, self.QB, self.QA, self.minclass)
            g1 = self.acc_loss_cons - accuracy

            return 1-accuracy, num_of_bits, g1
        
        # run genes' evaluation in parallel
        params = [[X[k]] for k in range(len(X))]
        results = pool.starmap(my_eval, params)

        fitness = np.array(results)[:,0:2]
        constraint = np.array(results)[:,2]
    
        out["F"] = fitness
        out["G"] = constraint

def get_QReLu_precision(model):

    config = config_from_keras_model(model, granularity='name')
    precision = config['LayerName']['relu1']['Precision']['result'].split("<")[1].split(">")[0]
    bitwidth, integer_part = map(int, precision.split(","))
    fractional_part = bitwidth-integer_part
    QA=[(integer_part,fractional_part),(integer_part,fractional_part)]

    return QA

def load_quantized_model_params(dataset_name, qmodel):

    # model_path =  "./Networks/"+dataset_name+"/QuantModel"
    dataset_path =  "./Networks/"+dataset_name+"/dataset"

    #load datasets and keras model    
    X_train = np.load(dataset_path+'/X_train.npy')
    X_test = np.load(dataset_path+'/X_test.npy')
    Y_train = np.load(dataset_path+'/Y_train.npy')
    Y_test = np.load(dataset_path+'/Y_test.npy')

    # model = keras.models.load_model(model_path)
    model = qmodel
    
    #load weights and biases of keras model
    intercepts=[]
    coefficients =[]
    for layer in model.layers:
        layer_type = layer.__class__.__name__
        if layer_type =="QDense":
          bias = layer.get_weights()[1].tolist()
          weight = layer.get_weights()[0].tolist()
          intercepts.append(bias)
          coefficients.append(weight)

    #get quantization precisions for input(QX), weights(QW), biases(QB), activation function(QReLu-QA)
    QX=[(0,4)]
    
    if dataset_name=='Pendigits':
        QW=[(3,5),(3,5)]
        QB=[(2,6),(2,6)]
    elif dataset_name=='WhiteWine':
        QW=[(3,5),(3,5)]
        QB=[(3,5),(3,5)]
    else:
        QW=[(2,6),(2,6)]
        QB=[(2,6),(2,6)]

    QA=get_QReLu_precision(model)

    ##Evaluate floating-point model
    loaded_accuracy=model.evaluate(X_test,Y_test)
    print(f"\nAccuracy of loaded model is {(loaded_accuracy[1]*100)}")    

    y_test = [np.argmax(y, axis=None, out=None) for y in Y_test[:]]  
    y_train = [np.argmax(y, axis=None, out=None) for y in Y_train[:]] 
    
    ##Initialize and Evaluate fixed-point model
    weights = convertCoef(coefficients, QW)
    biases = convertIntercepts(intercepts, QB)
    QI=QX+(QA)

    fxp_acc=get_masked_accuracy(X_test,y_test,None,weights,biases,QX,QI,QW,QB,QA,min(y_test))
    fxp_acc_train=get_masked_accuracy(X_train,y_train,None,weights,biases,QX,QI,QW,QB,QA,min(y_test))
    print(f"Accuracy of integer model is {fxp_acc*100}")
    print(f"Accuracy of integer model is {fxp_acc_train*100} (training)")
    
    return [weights, biases, QX, QI, QW, QB, QA, min(y_test), X_train, y_train, fxp_acc_train]

def create_initial_population(pop_size, network_arch, QX, QA):

    neurons_input_layer, neurons_hidden_layer, neurons_output_layer = network_arch[0], network_arch[1], network_arch[2]

    inputs_in_hidden = neurons_input_layer*neurons_hidden_layer 
    inputs_in_output = neurons_hidden_layer*neurons_output_layer
    num_total = inputs_in_hidden+inputs_in_output

    max_repr_input_layer = 2**sum(QX[0])-1
    max_repr_hidden_layer = 2**sum(QA[0])-1 

    masks_doped=[]
    for i in range(pop_size):
        mask_random=[]
        for j in range(num_total):
            if i<int(0.5*pop_size):
                if j<inputs_in_hidden:
                    mask_random.append(random.randint(0,max_repr_input_layer))
                else:
                    mask_random.append(random.randint(0,max_repr_hidden_layer))
            elif i<int(0.75*pop_size):
                if j<inputs_in_hidden:
                    mask_random.append(random.randint(max_repr_input_layer-2,max_repr_input_layer))
                else:
                    mask_random.append(random.randint(max_repr_hidden_layer-2,max_repr_hidden_layer))
            elif i<1*pop_size:
                if j<inputs_in_hidden:
                    mask_random.append(random.randint(0,4))
                else:
                    mask_random.append(random.randint(0,10))
        masks_doped.append(mask_random)

    pop = Population.new("X", masks_doped)

    return pop

def store_masks(dataset_name, network_arch, solutions_masks, solutions_report):

    neurons_input_layer, neurons_hidden_layer, neurons_output_layer = network_arch[0], network_arch[1], network_arch[2]

    networks_masks=[]
    for mlp_masks in solutions_masks:
      offset = neurons_input_layer*neurons_hidden_layer
      hidden_layer_masks=[mlp_masks[neurons_input_layer*i:neurons_input_layer*(i+1)].tolist() for i in range(0,neurons_hidden_layer)]
      output_layer_masks=[(mlp_masks[offset+i*neurons_hidden_layer:offset+(i+1)*neurons_hidden_layer].tolist()) for i in range(0, neurons_output_layer) ]
      networks_masks.append([hidden_layer_masks, output_layer_masks])

    ##Store the results
    solutions_accuracy, solutions_sizeFA = [1-i for i in solutions_report[:,0]], [int(i) for i in solutions_report[:,1]]
    
    folder = "MasksGA/"+dataset_name+"/"
    if not os.path.exists(folder):
        os.makedirs(folder)

    joblib.dump([[1-i for i in solutions_report[:,0]], [i for i in solutions_report[:,1]], networks_masks], folder+'masks.joblib') 

    print(f"\n\taccuracy \tFA area")
    for i in range(round(len(solutions_accuracy)/3)):
        print(f"\t {round(solutions_accuracy[i],4)} \t\t   {solutions_sizeFA[i]}")
    print()

def genetic_wrapper(dataset_name, qmodel):

    quant_network_params=load_quantized_model_params(dataset_name, qmodel)
    
    #load quantization parameters and get network architecture
    weights, QX, QA = quant_network_params[0], quant_network_params[2], quant_network_params[6]
    print(weights)
    neurons_hidden_layer, neurons_input_layer= np.shape(weights[0])
    neurons_output_layer, _ = np.shape(weights[1])
    network_arch = [neurons_input_layer, neurons_hidden_layer, neurons_output_layer]

    #define genetic hyperparameters and create initial population
    pop_size = 100
    offsprings_size = 100
    termination = get_termination("n_gen", 30)

    initial_population = create_initial_population(pop_size, network_arch, QX, QA)

    #define multiobjective problem and evaluate the initial popoulation
    problem = AxAccumulation(*quant_network_params)
    Evaluator().eval(problem, initial_population)
    
    #define genetic algorithm
    algorithm= NSGA2(
                        pop_size = pop_size,
                        n_offsprings = offsprings_size,
                        # sampling = IntegerRandomSampling(),
                        sampling = initial_population,
                        crossover = SBX(prob=0.7, eta=15, vtype=int, repair = RoundingRepair()),
                        mutation = PM(prob=0.2, eta=5, vtype=int, repair = RoundingRepair()),
                        eliminate_duplicates = True
                      )
    
    #solve the minimization multiobjective problem with NSGA2
    res = minimize(problem,
                   algorithm,
                   termination,
                   seed=1,
                   save_history=True,
                   verbose=True)
    pool.close()

    print(f"\nExecution time is {res.exec_time}")
    solutions_report = res.F
    solutions_masks = res.X

    store_masks(dataset_name, network_arch, solutions_masks, solutions_report)


if __name__ == "__main__":
    
    if len(sys.argv)==2:
        dataset_name = sys.argv[1]
    elif len(sys.argv)==1:
        dataset_name="RedWine"
    else:
        assert False

    genetic_wrapper(dataset_name)