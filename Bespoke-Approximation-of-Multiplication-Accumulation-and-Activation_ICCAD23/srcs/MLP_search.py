from sklearn.neural_network import  MLPClassifier
from sklearn.metrics import accuracy_score
from sklearn.model_selection import RandomizedSearchCV, train_test_split
from sklearn.preprocessing import MinMaxScaler, LabelEncoder
from tensorflow.keras.utils import to_categorical

import os
import sys
import numpy as np
from joblib import dump, load
from scipy.stats import uniform

import warnings
from sklearn.exceptions import ConvergenceWarning
if not sys.warnoptions:
    warnings.simplefilter("ignore")
    os.environ["PYTHONWARNINGS"] = "ignore" # Also affect subprocesses

class MLP():
  def __init__(self, dataset_name, X, y, hidden_layer_sizes=3, activation='relu', max_iter=300):
    self.dataset_name = dataset_name

    self.hidden_layer_sizes = hidden_layer_sizes 
    self.max_iter = max_iter
    self.activation=activation

    scaler = MinMaxScaler(feature_range=(0,0.9))
    scaler.fit(X)
    self.X = scaler.transform(X)

    self.le = LabelEncoder()
    self.y = self.le.fit_transform(y)

    X_train, X_test, y_train, y_test = train_test_split(self.X, self.y, test_size = 0.3, random_state = 42, stratify=y)

    self.X_train = X_train
    self.X_test = X_test
    self.y_train = y_train
    self.y_test = y_test

    num_classes = len(self.le.classes_)
    self.y_train_categorical = to_categorical(self.y_train, num_classes)
    self.y_test_categorical = to_categorical(self.y_test, num_classes)

    self.njobs = 100

  def searchAndEvalClassifier(self, clf, param_dists):

    # model withOUT tuning the parameters
    model = MLPClassifier(hidden_layer_sizes=self.hidden_layer_sizes, max_iter=2500)
    model=model.fit(self.X_train,self.y_train)
    pred = model.predict(self.X_test)
    model_acc=accuracy_score(pred, self.y_test)

    # model WITH tuning the parameters
    classifier = RandomizedSearchCV(clf, param_dists, random_state=0, cv=10, n_iter=600, n_jobs=self.njobs)
    search = classifier.fit(self.X_train, self.y_train)
    print("best parameters found: ", search.best_params_)

    bmodel=classifier.best_estimator_
    pred = bmodel.predict(self.X_test)
    bmodel_acc=accuracy_score(pred, self.y_test)

    # model WITH tuning the parameters and training if convergence doesn't met
    iter_parameter = {'max_iter':1500}
    bmodel_converged=bmodel.set_params(**iter_parameter)
    bmodel_converged=bmodel_converged.fit(self.X_train,self.y_train)

    pred = bmodel_converged.predict(self.X_test)
    bmodel_converged_acc=accuracy_score(pred, self.y_test)

    print("accuracy score with default parameters: ", model_acc)
    print("accuracy score with parameter tuning: ", bmodel_acc)
    print("accuracy score with best parameters until convergence: ", bmodel_converged_acc)

    accuracies = [model_acc,bmodel_acc,bmodel_converged_acc]
    best_model_acc = max(accuracies)
    best_model_index=accuracies.index(best_model_acc)

    if best_model_index==0:
      best_model=model
    elif best_model_index==1:
      best_model=bmodel
    else:
      best_model=bmodel_converged

    folder = "Networks/"+self.dataset_name+"/FloatModel/"
    path = folder+self.dataset_name+'_clf.joblib'
    if not os.path.exists(folder):
      os.makedirs(folder)

    if not os.path.exists(path):
      loaded_acc=0
    else:
      # Loaded model
      dataset_path ="Networks/"+self.dataset_name+"/dataset/"
      loaded_model = load(path)
      loaded_X_test = np.load(dataset_path+"X_test_sc.npy")
      loaded_Y_test = np.load(dataset_path+"Y_test.npy")
      loaded_y_test = [np.argmax(y, axis=None, out=None) for y in loaded_Y_test[:]]  
      loaded_acc=accuracy_score(loaded_model.predict(loaded_X_test),loaded_y_test)
      print(f"accuracy score of loaded accuracy: {loaded_acc}")

    if best_model_acc>loaded_acc:

      dump(best_model,path)  

      dataset_path ="Networks/"+self.dataset_name+"/dataset/"
      np.save(dataset_path+"X_train_sc.npy",self.X_train)
      np.save(dataset_path+"X_test_sc.npy",self.X_test)
      np.save(dataset_path+"Y_train.npy",self.y_train_categorical)
      np.save(dataset_path+"Y_test.npy",self.y_test_categorical)

    else:
      best_model=loaded_model

    return best_model

  def evalAlgo(self):

    mlp = MLPClassifier(hidden_layer_sizes=self.hidden_layer_sizes, max_iter=self.max_iter)
    
    param_dists = dict( 
      solver = ['lbfgs', 'sgd', 'adam'],
      learning_rate = ['constant', 'invscaling', 'adaptive'],
      momentum = uniform(0,1),
      nesterovs_momentum = [True, False],
      validation_fraction = uniform(0,1),
      beta_1 = uniform(0,0.999),
      beta_2 = uniform(0,0.999),
      epsilon = uniform(0,0.999))

    best_model=self.searchAndEvalClassifier(mlp, param_dists)

    return best_model

  



