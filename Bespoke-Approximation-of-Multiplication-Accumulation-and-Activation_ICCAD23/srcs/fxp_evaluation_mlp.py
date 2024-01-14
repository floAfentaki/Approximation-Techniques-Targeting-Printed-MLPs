import numpy as np
from sklearn.metrics import accuracy_score
from tensorflow import keras
import sys
import numpy as np

def get_width (a):
    return int(a).bit_length()

def to_fixed(f,e):
    a = f* (2**e)
    b = int(round(a))
    if a < 0:
        # next three lines turns b into it's 2's complement.
        b = abs(b)
        b = ~b
        b = b + 1
    return b

def convertCoef (mdata, QW):
  transp=[np.transpose(i).tolist() for i in mdata]
  coefficients=[]
  for i, l in enumerate(transp):
    newn=list()
    e=QW[i][1]
    for n in l:
        neww=list()
        for w in n:
            neww.append(to_fixed(w,e))
        newn.append(neww)
    coefficients.append(newn)
  return coefficients

def convertIntercepts (mdata, QB):
  transp=[np.transpose(i).tolist() for i in mdata]
  intercepts=[]
  for i, l in enumerate(transp):
        neww=list()
        e=QB[i][1]
        for k,w in enumerate(l ):
                neww.append(to_fixed(w,e))
        intercepts.append(neww)
  return intercepts

def get_masked_accuracy(X_test, y_test, network_masks, coefs, intercept, QX, QI, QW, QB, QA, minclass):
    pred=input_inference(X_test, network_masks, coefs, intercept, QX, QI, QW, QB, QA)
    pred=pred+minclass
    return accuracy_score(pred, y_test)
 
def input_inference(X_test, network_masks, coefs, intercept, QX, QI, QW, QB, QA):
    prediction=[]
    for _, sample in enumerate(X_test):
        X_test_fxp=[]
        #if needed to convert inputs to fxp
        for sensor_sample in sample:
            sensor_sample_fxp=to_fixed(sensor_sample, QX[0][1])
            X_test_fxp.append(sensor_sample_fxp)
        prediction.append(mlp_masked_inference(coefs, intercept, X_test_fxp, network_masks, QI, QW, QB, QA))
    return np.asarray(prediction)

def mlp_masked_inference(coefs, intercept, X_test_fxp, network_masks, QI, QW, QB, QA):
    
    inp=X_test_fxp
    layer=0
    out=[]

    for layer in range(len(coefs)):
        product_M=QI[layer][1]+QW[layer][1]
        scale_bias=product_M-QB[layer][1]
        
        relu_M=QA[layer][1]
        relu_I=QA[layer][0]
        scale_sum=2**(product_M-relu_M)
        relu_max = 2**(relu_M+relu_I)-1

        for i,neuron in enumerate(coefs[layer]):
            bias = intercept[layer][i]*2**scale_bias
            temp = bias

            for j in range(len(neuron)):
                if network_masks!=None:
                  inp_mask=network_masks[layer][i][j]
                  act = inp[j]&inp_mask
                else:
                  act = inp[j]
                product = neuron[j]*act
                temp=temp+product

            if (temp<0):
                temp = 0
            else:
              if (layer != len(coefs) -1):
                temp=temp//scale_sum
                if temp > relu_max:
                    temp=relu_max

            out.append(temp)
        inp=list(out)
        out=[]
    return np.argmax(inp)

def recalculation(neurons_f2, num_bits_mult):
   
  bit_array = np.fromiter((bit for s in neurons_f2 for bit in s), dtype=np.dtype('U1')).reshape(-1, num_bits_mult)
          
  num_per_ones_vertical = []
  for bit_index in range(num_bits_mult):
    sum_bits_vert = ("".join(bit_array[:,bit_index])).count('1')
    num_per_ones_vertical.append(sum_bits_vert)

  num_per_ones_vertical = num_per_ones_vertical[::-1]
  verticals = num_per_ones_vertical
  neuron_FA = 0
  for bit_index in range(num_bits_mult):
    while verticals[bit_index] >= 3:
        num_FA = verticals[bit_index]//3
        verticals[bit_index] = verticals[bit_index] - num_FA*3 + num_FA
        if bit_index<num_bits_mult-1:
          verticals[bit_index+1] = verticals[bit_index+1] +num_FA
        neuron_FA = neuron_FA + num_FA

  return neuron_FA

def mask_evaluation_accuracy__FAarea( X_test, y_test, masks, coefs, intercept, QX, QI, QW, QB, QA, minclass):
    
      network_masks = []
      networks_FA =0
      for layer in range(len(coefs)):
        num_bits_mult=sum(QI[layer])+sum(QW[layer])
        for i,neuron in enumerate(coefs[layer]):
          neuron_inputs = len(neuron)
          neurons_f2_pos = []
          neurons_f2_neg = []
          max_pos = 0
          max_neg = 0
          for index in range(neuron_inputs):

            selection = masks[layer][i][index]
            weight_mask = selection*neuron[index]

            if weight_mask < 0:
              weight_mask = abs(weight_mask)
              weight_mask = ~weight_mask
              weight_mask = weight_mask + 1
              weight_mask_pos = 0
              weight_mask_neg = weight_mask
              max_pos =+ weight_mask
            else:
              weight_mask_pos = weight_mask
              weight_mask_neg = 0
              max_neg =+ weight_mask
              
            binary_str2 = bin(weight_mask_pos).split("b")[1]
            if len(binary_str2)<num_bits_mult:
              dif = num_bits_mult-len(binary_str2)
              binary_str2_pos = dif*'0'+binary_str2
              neurons_f2_pos.append(binary_str2_pos)        


            binary_str2 = bin(weight_mask_neg).split("b")[1]
            if len(binary_str2)<num_bits_mult:
              dif = num_bits_mult-len(binary_str2)
              binary_str2_neg = dif*'0'+binary_str2
              neurons_f2_neg.append(binary_str2_neg)
          
          bias = intercept[layer][i]
        
          if bias < 0:
              bias = abs(bias)
              bias = ~bias
              bias = bias + 1
              binary_str2 = bin(bias).split("b")[1]
              if len(binary_str2)<num_bits_mult:
                dif = num_bits_mult-len(binary_str2)
                binary_str2_bias = dif*'0'+binary_str2
              neurons_f2_neg.append(binary_str2_bias)
          else:
              binary_str2 = bin(bias).split("b")[1]
              if len(binary_str2)<num_bits_mult:
                dif = num_bits_mult-len(binary_str2)
                binary_str2_bias = dif*'0'+binary_str2
              neurons_f2_pos.append(binary_str2_bias)

          neuron_FA_pos = recalculation(neurons_f2_pos, num_bits_mult)
          neuron_FA_neg = recalculation(neurons_f2_neg, num_bits_mult)

          spwidth=get_width(max_pos)
          snwidth=get_width(max_neg)
          swidth=max(spwidth,snwidth)+1
            
          networks_FA = networks_FA + neuron_FA_pos + neuron_FA_neg + swidth
          
      network_masks = masks
      acc_mask = get_masked_accuracy(X_test, y_test, network_masks, coefs, intercept, QX, QI, QW, QB, QA, minclass)

      return acc_mask, networks_FA



if __name__ == "__main__":
    
    dataset_name = sys.argv[1]

    model_path =  "./Networks/"+dataset_name+"/QuantModel"
    dataset_path =  "./Networks/"+dataset_name+"/dataset"
      
    #load datasets and keras model    
    X_train = np.load(dataset_path+'/X_train.npy')
    X_test = np.load(dataset_path+'/X_test.npy')
    Y_train = np.load(dataset_path+'/Y_train.npy')
    Y_test = np.load(dataset_path+'/Y_test.npy')

    model = keras.models.load_model(model_path)
    
    intercepts=[]
    coefficients =[]
    for layer in model.layers:
        layer_type = layer.__class__.__name__
        if layer_type =="QDense":
          bias = layer.get_weights()[1].tolist()
          weight = layer.get_weights()[0].tolist()
          intercepts.append(bias)
          coefficients.append(weight)

    QX=[(0,4)]
    QA=[(0,6),(0,6)]
    QW=[(2,6),(2,6)]
    QB=[(2,6),(2,6)]

    loaded_accuracy=model.evaluate(X_test,Y_test)
    print(f"Accuracy of loaded model is {(loaded_accuracy[1]*100)}")    

    y_test = [np.argmax(y, axis=None, out=None) for y in Y_test[:]]  
    y_train = [np.argmax(y, axis=None, out=None) for y in Y_train[:]] 

    coeff = convertCoef (coefficients, QW)
    inter = convertIntercepts (intercepts, QB)
    tempi = QX+(QA)
    QI=tempi
    #{"acc": 0.9170731707317074, "bits": 384, "masks": [[[15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15]], [[29, 15, 53, 45, 27, 43, 29, 45], [27, 45, 53, 60, 45, 53, 60, 54]]]},
    masks = [[[15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15], [15, 15, 15, 15, 15, 15, 15, 15, 15, 15]], [[29, 15, 53, 45, 27, 43, 29, 45], [27, 45, 53, 60, 45, 53, 60, 54]]]
    accuracy, num_of_bits = mask_evaluation_accuracy__FAarea( X_train, y_train, masks, coeff, inter, QX, QI, QW, QB, QA, min(y_test))