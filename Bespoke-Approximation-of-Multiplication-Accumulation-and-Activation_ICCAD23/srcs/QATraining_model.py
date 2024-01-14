import sys
from datasets.read_all_datasets import RedWine, WhiteWine, Cardio,  Pendigits, Arrhythmia, Breast_Cancer, Pendigits
from MLP_search import MLP

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Activation
from tensorflow.keras.optimizers import Adam
from tensorflow.keras.regularizers import l1
from tensroflow_callbacks import all_callbacks
from qkeras.qlayers import QDense, QActivation
from qkeras.quantizers import quantized_relu, quantized_po2
from qkeras.utils import model_save_quantized_weights

import numpy as np
from joblib import load
import os


def train_quantized_model(coeff, dataset_name, topology, bitwidth, relu_int, max_repr, X_test, Y_test, X_train, Y_train):

    #callback during training
    model_checkpoints_path='QAT_checkpoints/'+dataset_name+"/"
    if not os.path.exists(model_checkpoints_path):
       os.makedirs(model_checkpoints_path)
    callbacks= all_callbacks( outputDir = model_checkpoints_path)

    #quantized model architecture
    model = Sequential()
    model.add(QDense(topology[1], input_shape=(topology[0],), name='fc1',
                      kernel_quantizer=quantized_po2(bitwidth,
                                                     max_value=max_repr[0],
                                                     use_stochastic_rounding=False,
                                                     quadratic_approximation=False),
                      bias_quantizer=quantized_po2(bitwidth,
                                                   max_value=max_repr[1],
                                                   use_stochastic_rounding=False,
                                                   quadratic_approximation=False),
                    kernel_initializer='lecun_uniform', kernel_regularizer=l1(0.0001)   ))
    model.add(QActivation(activation=quantized_relu(bits=bitwidth,
                                                    integer=relu_int,
                                                    use_stochastic_rounding=False), 
                                                    name='relu1'))
    model.add(QDense(topology[2], name='output',
                    kernel_quantizer=quantized_po2(bitwidth,
                                                   max_value=max_repr[0],
                                                   use_stochastic_rounding=False,
                                                   quadratic_approximation=False), 
                    bias_quantizer=quantized_po2(bitwidth,
                                                   max_value=max_repr[1],
                                                   use_stochastic_rounding=False,
                                                   quadratic_approximation=False),
                    kernel_initializer='lecun_uniform', kernel_regularizer=l1(0.0001 ) ))
    model.add(Activation(activation='softmax', name='softmax'))

    #set floating coefficients
    model.layers[0].set_weights(coeff[0])
    model.layers[2].set_weights(coeff[1])

    adam = Adam(learning_rate=0.001)
    model.compile(optimizer=adam, loss=['categorical_crossentropy'], metrics=['accuracy'])
    model.fit(X_train, Y_train, batch_size=1,
              epochs=10,validation_split=0.2, verbose=1, shuffle=True,
              callbacks = callbacks.callbacks)
    model.compile(optimizer=adam, loss=['categorical_crossentropy'], metrics=['accuracy'])
    model_save_quantized_weights(model, model_checkpoints_path+"test_weights")

    path="Networks/"+dataset_name+"/QuantModel"
    model.save(path)

    accuracy=model.evaluate(X_test,Y_test)
    print(" ACCURACY IS "+str(accuracy[1]) )

    return model, accuracy[1], model.get_weights()



def train_floating_model(dataset_name, training_flag=False):

    
  if dataset_name in ['Arrhythmia']:
    dataset = Arrhythmia()
    hidden_layer_neurons = 5
  elif dataset_name in ['Breast_Cancer']:
    dataset = Breast_Cancer()
    hidden_layer_neurons = 3
  elif dataset_name in ['Cardio']:
    dataset = Cardio()
    hidden_layer_neurons = 3
  elif dataset_name in ['Pendigits']:
    dataset = Pendigits()
    hidden_layer_neurons = 5
  elif dataset_name in ['RedWine']:
    dataset = RedWine()
    hidden_layer_neurons = 3
  elif dataset_name in ['WhiteWine']:
    dataset = WhiteWine()
    hidden_layer_neurons = 3

  X = dataset.getFeatures()
  y = dataset.getLabels()

  ml = MLP(dataset_name, X, y, hidden_layer_neurons)

  if training_flag:
    floating_model = ml.evalAlgo()
    X_train, X_test, y_train, y_test=ml.X_train, ml.X_test, ml.y_train_categorical, ml.y_test_categorical
  else:
    folder = "Networks/"+dataset_name+"/FloatModel/"
    path = folder+dataset_name+'_clf.joblib'
    dataset_path ="Networks/"+dataset_name+"/dataset/"

    floating_model = load(path)
    X_train = np.load(dataset_path+"X_train_sc.npy")
    X_test = np.load(dataset_path+"X_test_sc.npy")
    y_train = np.load(dataset_path+"Y_train.npy")
    y_test = np.load(dataset_path+"Y_test.npy")

  return floating_model, X_train, X_test, y_train, y_test




def training_wrapper(dataset_name, training_flag=False):

  floating_model, X_train, X_test, Y_train, Y_test = train_floating_model(dataset_name, training_flag=training_flag)

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

  if dataset_name=='Pendigits':
        max_integer_weight=2
        max_integer_bias=1
        int_relu=5
  elif dataset_name=='WhiteWine':
        max_integer_weight=2
        max_integer_bias=2
        int_relu=1
  elif dataset_name=='Cardio':
        max_integer_weight=1
        max_integer_bias=1
        int_relu=4
  else:
        max_integer_weight=1
        max_integer_bias=1
        int_relu=2
  max_repr = (max_integer_weight, max_integer_bias)

  input_s=4
  bitwidth=8
  layer_1, layer_2 = np.shape(w1)
  _, layer_3 = np.shape(w2)
  topology=(layer_1,layer_2,layer_3)

  norm = 2**input_s
  for i in range(0,len(X_train)):
    X_train[i] = [int(x*norm)/norm for x in X_train[i]]
  for i in range(0,len(X_test)):
    X_test[i] = [int(x*norm)/norm for x in X_test[i]]

  qmodel, accuracy, weights = train_quantized_model(coefficients, dataset_name, topology, bitwidth, int_relu, max_repr, X_test, Y_test, X_train, Y_train)
  print(weights)
  print()
  print(dataset_name, topology, accuracy)

  dataset_path ="Networks/"+dataset_name+"/dataset/"
  np.save(dataset_path+"X_train.npy",X_train)
  np.save(dataset_path+"X_test.npy",X_test)

  return qmodel

if __name__=="__main__":
  
  dataset_name = sys.argv[1]
  training_wrapper(dataset_name)