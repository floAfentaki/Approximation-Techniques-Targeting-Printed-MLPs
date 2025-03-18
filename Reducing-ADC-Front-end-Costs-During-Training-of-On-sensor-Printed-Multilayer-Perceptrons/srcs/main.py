import sys
import numpy as np
from sklearn.metrics import accuracy_score

from QATraining_model import train_floating_model
from genetic_tuning import genetic_tuning
from create_verilog import create_verilog

"""
Main script for training and evaluating a floating-point model, performing genetic tuning, and generating Verilog code.
This script performs the following steps:
1. Parses command-line arguments to determine the dataset name and training flag.
2. Trains a floating-point model using the specified dataset.
3. Evaluates the model's accuracy on the test set.
4. Extracts model coefficients and biases.
5. Defines the network topology.
6. Performs genetic tuning to optimize the model parameters.
7. Loads evaluation results and parameters from saved files.
8. Loads test and training datasets.
9. Generates Verilog code for the optimized model.
Usage:
    python main.py [dataset_name] [training_flag]
Arguments:
    dataset_name (str): Name of the dataset to be used for training and evaluation.
    training_flag (bool): Flag indicating whether to perform training (True) or use pre-trained model (False).
Functions:
    train_floating_model: Trains a floating-point model on the specified dataset.
    genetic_tuning: Performs genetic tuning to optimize model parameters.
    create_verilog: Generates Verilog code for the optimized model.
Modules:
    sys: Provides access to command-line arguments.
    numpy: Provides support for numerical operations.
    sklearn.metrics: Provides functions for evaluating model performance.
    QATraining_model: Contains the function for training the floating-point model.
    genetic_tuning: Contains the function for performing genetic tuning.
    create_verilog: Contains the function for generating Verilog code.
"""
if __name__ == "__main__":

    training_flag = False
    if len(sys.argv)==3:    
        training_flag = sys.argv[2]
        dataset_name = sys.argv[1]
    elif len(sys.argv)==2:
        dataset_name = sys.argv[1]
        training_flag = False
    elif len(sys.argv)==1:
        dataset_name="RedWine"
        training_flag = False
    else:
        assert False


    floating_model, X_train, X_test, Y_train, Y_test = train_floating_model(dataset_name, training_flag=training_flag)

    pred=floating_model.predict(X_test)
        
    # y_test = [np.argmax(y, axis=None, out=None) for y in Y_test[:]]  
    if len(Y_test[0])==2:
        baseline_acc=accuracy_score(Y_test, pred)
    else:
        baseline_acc=accuracy_score([np.argmax(y, axis=None, out=None) for y in Y_test[:]], pred)

    w1=floating_model.coefs_[0]
    b1=floating_model.intercepts_[0]
    w2=floating_model.coefs_[1]
    b2=floating_model.intercepts_[1]

    wb1=[]
    wb1.append(w1)
    wb1.append(b1)

    wb2=[]
    wb2.append(w2)
    wb2.append(b2)
    coefficients=[wb1, wb2]

    layer_1, layer_2 = np.shape(w1)
    _, layer_3 = np.shape(w2)
    if layer_3==1:
        layer_3=2
    topology=(layer_1,layer_2,layer_3)

    evaluations, parameters, coeffs_hidden, coeffs_output, bias_hidden, bias_output=genetic_tuning(coefficients, dataset_name, topology, X_test, Y_test, X_train, Y_train, baseline_acc)
    
    parameters_path =  f"./Networks/{dataset_name}/parameters/"
    evaluations=np.load(parameters_path+"evaluations.npy").tolist()
    parameters=np.load(parameters_path+"parameters.npy").tolist()
    coeffs_hidden=np.load(parameters_path+"coeffs_hidden.npy").tolist()
    coeffs_output=np.load(parameters_path+"coeffs_output.npy").tolist()
    bias_hidden=np.load(parameters_path+"bias_hidden.npy").tolist()
    bias_output=np.load(parameters_path+"bias_output.npy").tolist()
    
    dataset_path =  "./Networks/"+dataset_name+"/dataset/"
    X_test = np.load(dataset_path+"X_test_wo_valid.npy")
    Y_test = np.load(dataset_path+"Y_test_wo_valid.npy")
    create_verilog(dataset_name, coeffs_hidden, coeffs_output, bias_hidden, bias_output, evaluations, parameters, X_test, Y_test, X_train)