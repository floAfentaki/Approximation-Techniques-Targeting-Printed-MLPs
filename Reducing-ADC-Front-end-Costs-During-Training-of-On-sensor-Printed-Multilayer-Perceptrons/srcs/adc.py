import numpy as np 
import random

def adc(X_fp, bitwidth):

    norm=2**bitwidth
    X_fxp = np.copy(X_fp)

    for i in range(0,len(X_fxp)):
        X_fxp[i] = [int(fp*norm)/norm for fp in X_fxp[i]]

    return X_fxp


def adc_levels(X_fp, bitwidth):

    norm=2**bitwidth
    levels=[i/norm for i in range(norm)]
    print(levels)
    print([i*norm for i in levels])

    X_fxp = np.copy(X_fp)
    X_fxp=np.multiply(X_fxp,norm)


    #if mask==1  the node is working 
    #if mask==0 the node is pruned
    mask=[0]
    ##if mask==0 and value==0 the node is hardiwred to 0
    ##if mask==0 and value==1 the node is hardiwred to 1
    value=[1]

    for i in range(0,len(X_fxp)):
        for j, fp in enumerate(X_fxp[i]):
            if fp < 8:
                if fp<4:
                    if fp<2:
                        if (fp<1 and mask[0]) or not mask[0] and(value[0] or value[0] ):
                            X_fxp[i][j]=levels[0]
                        else:
                            X_fxp[i][j]=levels[1]
                    else:
                        if fp<3:
                            X_fxp[i][j]=levels[2]
                        else:
                            X_fxp[i][j]=levels[3]
                else:
                    if fp<6:
                        if fp<5:
                            X_fxp[i][j]=levels[4]
                        else:
                            X_fxp[i][j]=levels[5]
                    else:
                        if fp<7:
                            X_fxp[i][j]=levels[6]
                        else:
                            X_fxp[i][j]=levels[7]
            else:
                if fp<12:
                    if fp<10:
                        if fp<9:
                            X_fxp[i][j]=levels[8]
                        else:
                            X_fxp[i][j]=levels[9]
                    else:
                        if fp<11:
                            X_fxp[i][j]=levels[10]
                        else:
                            X_fxp[i][j]=levels[11]
                else:
                    if fp<14:
                        if fp<13:
                            X_fxp[i][j]=levels[12]
                        else:
                            X_fxp[i][j]=levels[13]
                    else:
                        if fp<15:
                            X_fxp[i][j]=levels[14]
                        else:
                            X_fxp[i][j]=levels[15]    
    return X_fxp


def adc_levels_pruned(X_fp, bitwidth, masks, values):

    norm=2**bitwidth
    levels=[i/norm for i in range(norm)]
    # print(levels)
    # print([i*norm for i in levels])

    X_fxp = np.copy(X_fp)
    X_fxp=np.multiply(X_fxp,norm)


    #if mask==1  the node is working 
    #if mask==0 the node is pruned
    ##if mask==0 and value==0 the node is hardiwred to 0 (left)
    ##if mask==0 and value==1 the node is hardiwred to 1 (right)
    
        # masks.append([1 for _ in range(7)])
        # values.append([0 for _ in range(7)])

    # masks=[0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    # values=[0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    for i in range(0,len(X_fxp)):
        for j, fp in enumerate(X_fxp[i]):
            if (fp<8 and masks[j][0]) or not masks[j][0] and(not values[j][0]):
                if (fp<4 and masks[j][1]) or not masks[j][1] and(not values[j][1]):
                    if (fp<2 and masks[j][2]) or not masks[j][2] and(not values[j][2]):
                        if (fp<1):
                            X_fxp[i][j]=levels[0]
                        else:
                            X_fxp[i][j]=levels[1]
                    else:
                        if fp<3 :
                            X_fxp[i][j]=levels[2]
                        else:
                            X_fxp[i][j]=levels[3]
                else:
                    if (fp<6 and masks[j][3]) or not masks[j][3] and(not values[j][3]):
                        if fp<5:
                            X_fxp[i][j]=levels[4]
                        else:
                            X_fxp[i][j]=levels[5]
                    else:
                        if fp<7 :
                            X_fxp[i][j]=levels[6]
                        else:
                            X_fxp[i][j]=levels[7]
            else:
                if (fp<12 and masks[j][4]) or not masks[j][4] and(not values[j][4]):
                    if (fp<10 and masks[j][5]) or not masks[j][5] and(not values[j][5]):
                        if fp<9 :
                            X_fxp[i][j]=levels[8]
                        else:
                            X_fxp[i][j]=levels[9]
                    else:
                        if fp<11:
                            X_fxp[i][j]=levels[10]
                        else:
                            X_fxp[i][j]=levels[11]
                else:
                    if (fp<14 and masks[j][6]) or not masks[j][6] and(not values[j][6]):
                        if (fp<13):
                            X_fxp[i][j]=levels[12]
                        else:
                            X_fxp[i][j]=levels[13]
                    else:
                        if fp<15:
                            X_fxp[i][j]=levels[14]
                        else:
                            X_fxp[i][j]=levels[15]    
    return X_fxp


def adc_levels_pruned_roar(X_fp, bitwidth, masks, values):

    norm=2**bitwidth
    levels=[i/norm for i in range(norm)]
    # print(levels)
    # print([i*norm for i in levels])

    X_fxp = np.copy(X_fp)
    X_fxp=np.multiply(X_fxp,norm)


    #if mask==1  the node is working 
    #if mask==0 the node is pruned
    ##if mask==0 and value==0 the node is hardiwred to 0 (left)
    ##if mask==0 and value==1 the node is hardiwred to 1 (right)
    
        # masks.append([1 for _ in range(15)])
        # values.append([0 for _ in range(15)])

    # masks=[0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    # values=[0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

    for i in range(0,len(X_fxp)):
        for j, fp in enumerate(X_fxp[i]):
            if (fp<8 and masks[j][0]) or not masks[j][0] and(not values[j][0]):
                if (fp<4 and masks[j][1]) or not masks[j][1] and(not values[j][1]):
                    if (fp<2 and masks[j][2]) or not masks[j][2] and(not values[j][2]):
                        if (fp<1 and masks[j][3]) or not masks[j][3] and(not values[j][3]):
                            X_fxp[i][j]=levels[0]
                        else:
                            X_fxp[i][j]=levels[1]
                    else:
                        if (fp<3 and masks[j][4]) or not masks[j][4] and(not values[j][4]):
                            X_fxp[i][j]=levels[2]
                        else:
                            X_fxp[i][j]=levels[3]
                else:
                    if (fp<6 and masks[j][5]) or not masks[j][5] and(not values[j][5]):
                        if (fp<5 and masks[j][6]) or not masks[j][6] and(not values[j][6]):
                            X_fxp[i][j]=levels[4]
                        else:
                            X_fxp[i][j]=levels[5]
                    else:
                        if (fp<7 and masks[j][7]) or not masks[j][7] and(not values[j][7]):
                            X_fxp[i][j]=levels[6]
                        else:
                            X_fxp[i][j]=levels[7]
            else:
                if (fp<12 and masks[j][8]) or not masks[j][8] and(not values[j][8]):
                    if (fp<10 and masks[j][9]) or not masks[j][9] and(not values[j][9]):
                        if (fp<9 and masks[j][10]) or not masks[j][10] and(not values[j][10]):
                            X_fxp[i][j]=levels[8]
                        else:
                            X_fxp[i][j]=levels[9]
                    else:
                        if (fp<11 and masks[j][11]) or not masks[j][11] and(not values[j][11]):
                            X_fxp[i][j]=levels[10]
                        else:
                            X_fxp[i][j]=levels[11]
                else:
                    if (fp<14 and masks[j][12]) or not masks[j][12] and(not values[j][12]):
                        if (fp<13 and masks[j][13]) or not masks[j][13] and(not values[j][13]):
                            X_fxp[i][j]=levels[12]
                        else:
                            X_fxp[i][j]=levels[13]
                    else:
                        if (fp<15 and masks[j][14]) or not masks[j][14] and(not values[j][14]):
                            X_fxp[i][j]=levels[14]
                        else:
                            X_fxp[i][j]=levels[15]    
    return X_fxp


# if __name__=="__main__":

    #if mask==1  the node is working 
    #if mask==0 the node is pruned
    ##if mask==0 and value==0 the node is hardiwred to 0 (left)
    ##if mask==0 and value==1 the node is hardiwred to 1 (right)
    
        # masks.append([1 for _ in range(7)])
        # values.append([0 for _ in range(7)])
    # # X_fp=[[0.4,0.1],[0.1,0.2]]
    # dataset_path =  "./Networks/RedWine/dataset"
    # X_train = np.load(dataset_path+'/X_train.npy')
    # masks=[[0, 1, 1, 1, 1, 1, 1, 1],[0, 1, 1, 1, 1, 1, 1, 1],[0, 1, 1, 1, 1, 1, 1, 1],[0, 1, 1, 1, 1, 1, 1, 1],[0, 1, 1, 1, 1, 1, 1, 1],[0, 1, 1, 1, 1, 1, 1, 1],[0, 1, 1, 1, 1, 1, 1, 1]]
    # values=[[0, 0, 1, 0, 0, 0, 0, 0],[0, 0, 1, 0, 0, 0, 0, 0],[0, 0, 1, 0, 0, 0, 0, 0],[0, 0, 1, 0, 0, 0, 0, 0],[0, 0, 1, 0, 0, 0, 0, 0],[0, 0, 1, 0, 0, 0, 0, 0],[0, 0, 1, 0, 0, 0, 0, 0]]
    # X_fxp=adc_levels_pruned(X_train, 4, masks, values)
    # print(X_fxp)


    