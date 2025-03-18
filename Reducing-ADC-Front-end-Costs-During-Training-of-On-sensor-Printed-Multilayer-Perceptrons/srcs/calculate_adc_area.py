import sys
import numpy as np
import math
import bisect
import pandas as pd
import math

y3=[8, 9,10, 11,12, 13, 14, 15]
y2=[4, 5, 6, 7, 12, 13, 14, 15]
y1=[2, 3, 6, 7, 10, 11, 14, 15]
y0=[1, 3, 5, 7, 9,  11, 13, 15]

def block(x):
    i = 0
    val = math.pow(2, i)
    v = []
    # for storing all power of 2 such pow(2,i) <= x
    while val <= x:
        v.append(val)
        i += 1
        val = math.pow(2, i)
        # Generating all values such that pow(2,i) <= x
     
    # Performing operation till num become 0
    ans = set()
    while x != 0:
        index = bisect.bisect_right(v, x) - 1
        # Now v[index] <= x and v[index+1] > x
        ans.add(index)
        # Adding power in ans
        x = x - v[index]
        # reducing x to x-v[index]
    
    return ans
    
def adc_levels_pruned_area(X_fp, bitwidth, masks, values):

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

        # m [ 0  1  2  3  4  5  6  7  8  9  10 11 12 13 14]
    # masks[0]=[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    # values[0]=[1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


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

    area_cost=0
    power_cost=0
    # area_or, area_comp = 174*10**(-6), 357*10**(-6)
    # power_or, power_comp= 0.21, 0.336
    area_or, area_comp=0.0056353, 0.0008
    power_or, power_comp=0.0199643, 0.046066667
    # power_comps=[13.61, 16.81, 20.47, 24.25, 28.04, 31.78, 35.51, 39.26, 43.01, 46.67, 50.34, 53.97, 57.49, 60.99, 64.37]

    power_adc_tree=[]
    area_adc_tree=[]
   
    for i in range(0,len(X_fxp[0])):
    # for j, fp in enumerate(masks):
            q_levels=np.multiply(levels, 16)
            # print(q_levels)
            different_values=np.unique(np.multiply(X_fxp[:][i], 16))
            # print(different_values)
            pruned_levels=np.setdiff1d(q_levels, different_values)
            # print(pruned_levels.astype('int'))

            y3_pruned = list(set(y3).difference(pruned_levels))
            y2_pruned = list(set(y2).difference(pruned_levels))
            y1_pruned = list(set(y1).difference(pruned_levels))
            y0_pruned = list(set(y0).difference(pruned_levels))

            # y3_pruned = y3
            # y2_pruned = y2
            # y1_pruned = y1
            # y0_pruned = y0
            
            # print(f"y3: {y3_pruned}")
            # print(f"y2: {y2_pruned}")
            # print(f"y1: {y1_pruned}")
            # print(f"y0: {y0_pruned}")
            # print(pruned_levels)

            # y=[]
            # y.extend(y3_pruned)
            # y.extend(y2_pruned)
            # y.extend(y1_pruned)
            # y.extend(y0_pruned)

            # y_len=len(y)//2
            # if len(y)%2==1:
            #     y.extend([0])
            #     y_len+=1
            # print(y)
            # y=np.array(y)
 
            # y=y.reshape([y_len, 2])
            # print(y)

            # l01=np.intersect1d(y0_pruned, y1_pruned)
            # l12=np.intersect1d(y1_pruned, y2_pruned)
            # l23=np.intersect1d(y2_pruned, y3_pruned)
            # l02=np.intersect1d(y0_pruned, y2_pruned)
            # l03=np.intersect1d(y0_pruned, y3_pruned)
            # l13=np.intersect1d(y1_pruned, y3_pruned)
            # print(l01,l12,l23,l02,l03,l13)
            # kappa=(np.intersect1d(y0_pruned, y1_pruned)).tolist()
            # kappa.extend(np.intersect1d(y1_pruned, y2_pruned))
            # kappa.extend(np.intersect1d(y1_pruned, y2_pruned))
            # kappa.extend(np.intersect1d(y2_pruned, y3_pruned))
            # kappa.extend(np.intersect1d(y0_pruned, y2_pruned))
            # kappa.extend(np.intersect1d(y0_pruned, y3_pruned))
            # kappa.extend(np.intersect1d(y1_pruned, y3_pruned))
            # print(y)
            # import itertools
            # new_array = [tuple(row) for row in y]
            # unique=np.unique(y, axis=0)
            # print(unique)
            # print(len(unique))
           

            # encoder=len(unique)
            encoder=max((len(y0_pruned)-1),0)+max((0,len(y1_pruned)-1))+max(0,(len(y2_pruned)-1))+max((len(y3_pruned)-1),0)
            comparators=len(different_values)
            area_cost=encoder*area_or+comparators*area_comp
            power_cost=encoder*power_or+comparators*power_comp

            area_adc_tree.append(area_cost)
            power_adc_tree.append(power_cost)
            # trans, ands, inv, comp=0, 0, 0, 0
            area_cost, power_cost=0, 0
            # print(f"Number of ORs\t\t{encoder}")
            # print(f"Area of the Encoder\t{encoder*area_or} mm2")
            # print(f"Number of Comparators\t{comparators}")
            # print()
            # break
    # print(area_adc_tree)

    return X_fxp, area_adc_tree, power_adc_tree

def adc_levels_pruned_area_roar(X_fp, bitwidth, masks, values):

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

        # m [ 0  1  2  3  4  5  6  7  8  9  10 11 12 13 14]
    masks[0]=[1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    values[0]=[1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]


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

    area_cost, area_nodes, area_comparators, area_nots=0,0,0,0
    power_cost, power_nodes, power_comparators, power_nots=0,0,0,0
    areaComparator, areaInverter, areaTransistor, areaAnds = 765, 40.8, 0.6, 757.8
    powerComparator, powerInverter, powerTransistor, powerAnds = 57.33, 0.106,  0, 57.19
    # print(masks)
    trans, ands=0, 0
    # for i in range(0,len(X_fxp)):
    for j, fp in enumerate(masks):
            if masks[j][0]==1:
                trans+=2
                area_nodes+=2*areaTransistor
                power_nodes+=2*powerTransistor
            else:
                trans+=areaTransistor
                area_nodes+=areaTransistor
                if values[j][0]==1:
                    masks[j][1]=0
                    masks[j][2]=0
                    masks[j][3]=0
                else:
                    masks[j][4]=0
                    masks[j][5]=0
                    masks[j][6]=0

            
            if masks[j][1]==1:
                area_nodes+=2*areaTransistor+2*areaAnds
                power_nodes+=2*powerTransistor+2*powerAnds
                trans+=2
                ands+=2
            else:
                
                if values[j][1]==1:
                    masks[j][2]=0
                else:
                    masks[j][3]=0

                if masks[j][0]==1 or (values[j][0]==0 and masks[j][0]==0):
                    # area_nodes-=areaTransistor
                    area_nodes+=areaTransistor+areaAnds
                    trans+=1
                    ands+=1



            if masks[j][2]==1:
                area_nodes+=2*areaTransistor+2*areaAnds
                power_nodes+=2*powerTransistor+2*powerAnds
                trans+=2
                ands+=2
            else:
                if masks[j][3]==0 or masks[j][1]==0:
                    area_nodes+=0
                    trans+=0
                    ands+=0
                else:
                    area_nodes+=areaTransistor+areaAnds
                    trans+=1
                    ands+=1
                    
                

            if masks[j][3]==1:
                area_nodes+=2*areaTransistor+2*areaAnds
                power_nodes+=2*powerTransistor+2*powerAnds                
                trans+=2
                ands+=2
            else:
                if masks[j][2]==0:
                    area_nodes+=0
                    trans+=0
                    ands+=0
                else:
                    area_nodes+=areaTransistor+areaAnds
                    trans+=1
                    ands+=1

            if masks[j][4]==1:
                area_nodes+=2*areaTransistor+2*areaAnds
                power_nodes+=2*powerTransistor+2*powerAnds
                trans+=2
                ands+=2
            else:
                # area_nodes+=areaTransistor+areaAnds
                # trans+=1
                # ands+=1
                if values[j][4]==1:
                    masks[j][5]=0
                else:
                    masks[j][6]=0

                if masks[j][0]==1 or (values[j][0]==0 and masks[j][0]==0):
                    # area_nodes-=areaTransistor
                    area_nodes+=areaTransistor+areaAnds
                    trans+=1
                    ands+=1

            if masks[j][5]==1:
                area_nodes+=2*areaTransistor+2*areaAnds
                power_nodes+=2*powerTransistor+2*powerAnds
                trans+=2
                ands+=2
            else:
                if masks[j][4]==1:
                    area_nodes+=areaTransistor+areaAnds
                    trans+=1
                    ands+=1
                else:
                    area_nodes+=0
                    trans+=0
                    ands+=0

            
            if masks[j][6]==1:
                area_nodes+=2*areaTransistor+2*areaAnds
                power_nodes+=2*powerTransistor+2*powerAnds
                trans+=2
                ands+=2
            else:
                if masks[j][4]==1:
                    area_nodes+=areaTransistor+areaAnds
                    trans+=1
                    ands+=1
                else:
                    area_nodes+=0
                    trans+=0
                    ands+=0

            
            if masks[j][0]==1:
                area_comparators+=areaComparator
                power_comparators+=powerComparator

            if masks[j][1]==1 or masks[j][4]==1:
                area_comparators+=areaComparator
                power_comparators+=powerComparator

            if masks[j][2]==1 or masks[j][3]==1 or masks[j][5]==1 or masks[j][6]==1:
                area_comparators+=areaComparator
                power_comparators+=powerComparator


            area_comparators+=areaComparator
            power_comparators+=powerComparator

            if masks[j][0]==1:
                area_nots+=areaInverter
                power_nots+=powerInverter
            else:
                if values[j][0]==0:
                    area_nots+=areaInverter
                    power_nots+=powerInverter
                else:
                    area_nots+=0
                    power_nots+=0
            if masks[j][1]==1 or masks[j][4]==1:
                area_nots+=areaInverter
                power_nots+=powerInverter
            else:
                if values[j][1] or values[j][4]==0:
                    area_nots+=areaInverter
                    power_nots+=powerInverter
                else:
                    area_nots+=0
                    power_nots+=0

            if masks[j][2]==1 or masks[j][3]==1 or masks[j][5]==1 or masks[j][6]==1:
                area_nots+=areaInverter
                power_nots+=powerInverter
            else:
                if values[j][2]==0 or values[j][3]==0 or values[j][5]==0 or values[j][6]==0:
                    area_nots+=areaInverter
                    power_nots+=powerInverter
                else:
                    area_nots+=0
                    power_nots+=0

            area_cost=area_nodes+area_comparators+area_nots
            print(area_comparators/areaComparator)
            print(trans)
            print(ands)
            print(area_nots/areaInverter)

            power_cost=power_nodes+power_comparators+power_nots

            prune4=areaInverter*3+areaComparator*4+areaAnds*9+11*areaTransistor
            # paulas_area_cost=areaInverter*3+areaComparator*4+areaAnds*9+10*areaTransistor
            # paulas_area_cost=areaInverter*2+areaComparator*2+areaAnds*2+2*areaTransistor
            # paulas_area_cost=areaInverter*2+areaComparator*3+areaAnds*6+7*areaTransistor
            # paulas_area_cost=areaInverter*3+areaComparator*4+areaAnds*12+14*areaTransistor
            baseline=areaInverter*3+areaComparator*4+areaAnds*12+14*areaTransistor
            paulas_area_cost=baseline
            baseline = 12284.4
            paulas_power_cost=powerInverter*3+powerComparator*4+powerAnds*12+14*powerTransistor
            break


            # if (masks[j][0]) or not masks[j][0] and(not values[j][0]): #fp<8 1
            #     if masks[j][0]==1:
            #         area_comparators+=areaComparator
            #         area_nodes+=2*areaTransistor
            #         area_nots+=areaInverter
            #         # area_cost+=areaComparator+areaInverter+2*areaTransistor
            #         # power_cost+=powerComparator+powerInverter+powerTransistor+powerTransistor
            #     if (masks[j][1]) or not masks[j][1] and(not values[j][1]): #fp<4 2
            #         if masks[j][1]==1:
            #             # area_comparators+=areaComparator
            #             area_nodes+=2*areaTransistor+2*areaAnds
            #             area_nots+=areaInverter
            #             # area_nodes+=areaTransistor+areaAnds
            #             # area_nots+=areaInverter
            #             # area_comparators+=areaComparator
            #             # area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds
            #         if (masks[j][2]) or not masks[j][2] and(not values[j][2]):#fp<2 3
            #             if masks[j][2]==1:
            #                 # area_nodes+=areaTransistor+areaAnds
            #                 # area_nots+=areaInverter
            #                 # area_comparators+=areaComparator
            #                 area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            #             # if (fp<1):
            #             #     X_fxp[i][j]=levels[0]
            #             # else:
            #             #     X_fxp[i][j]=levels[1]
            #         else:
            #             if masks[j][2]==1:
            #                 area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            #     else:
            #         if (masks[j][3]) or not masks[j][3] and(not values[j][3]): #fp<6 4
            #             if masks[j][2]==1:
            #                 # area_nodes+=areaTransistor+areaAnds
            #                 # area_nots+=areaInverter
            #                 # area_comparators+=areaComparator
            #                 area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            #         else:
            #             if masks[j][2]==1:
            #                 # area_nodes+=areaTransistor+areaAnds
            #                 # area_nots+=areaInverter
            #                 # area_comparators+=areaComparator
            #                 area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            # else:
            #     if (masks[j][4]) or not masks[j][4] and(not values[j][4]): #fp<12 5
            #         if (masks[j][5]) or not masks[j][5] and(not values[j][5]): #fp<10 6
            #             if masks[j][2]==1:
            #                 # area_nodes+=areaTransistor+areaAnds
            #                 # area_nots+=areaInverter
            #                 # area_comparators+=areaComparator
            #                 area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            #         else:
            #             if masks[j][2]==1:
            #                 # area_nodes+=areaTransistor+areaAnds
            #                 # area_nots+=areaInverter
            #                 # area_comparators+=areaComparator
            #                 # area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            #                 continue
            #     else:
            #         if (masks[j][6]) or not masks[j][6] and(not values[j][6]): #fp<14 7
            #             if masks[j][6]==1:
            #                 # area_nodes+=areaTransistor+areaAnds
            #                 # area_nots+=areaInverter
            #                 # area_comparators+=areaComparator
            #                 area_cost+=areaComparator+areaInverter+2*areaTransistor+2*areaAnds+areaComparator
            #         else:
            #             if masks[j][2]==1:
            #                 continue

    return X_fxp, area_cost, paulas_area_cost, power_cost, paulas_power_cost



if __name__ == "__main__":
    bitwidth=4
    # parameters=[[16806, 4865, 1186, 13695, 12520, 1056, 13155, 8729, 952, 13953, 26937, 1752, 6593, 14076, 5560, 25324, 5767, 27893, 21715, 7607, 8966, 3501]]
    parameters=[[2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1, 2**15-1]]
    X_fp=np.load("Networks/RedWine/dataset/X_train_sc.npy")
    num_sensors=len(X_fp[0])

    pruned_masks=[f"m{i}" for i in  range(num_sensors)]
    pruned_values=[f"v{i}" for i in  range(num_sensors)]
    columns=pruned_masks.copy()
    columns.extend(pruned_values)   

    df=pd.DataFrame(parameters, columns=columns)

    pareto_point_masks=df[pruned_masks].astype("int32").iloc[0].to_list()
    pareto_point_values=df[pruned_values].astype("int32").iloc[0].to_list()
       

 
    masks, values=[],[]
    for i in  range(num_sensors):
        m=pareto_point_masks[i]
        v=pareto_point_values[i]
        masks.append([int(i) for i in list('{0:015b}'.format(m))])
        values.append([int(i) for i in list('{0:015b}'.format(v))])

    X_pruned, area, power = adc_levels_pruned_area(X_fp, bitwidth, masks, values)
    # print(X_pruned)
    # print(area, paulaArea)
    # print(power, paulaPower)


# Creating binary tree  
# from given list 
from binarytree import build 
from binarytree import tree 
  

# if __name__ == "__main__":

#     # all_levels=[i for i in range(16)]
#     # all_levels=[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
#     all_levels=[ 8,4,12,2,6,10,14,1,3,5,7,9,11,13,15]
#     different_values=[0, 1, 4, 5]

#     # List of nodes 
#     # nodes =[3, 6, 8, 2, 11, None, 13] 
    
#     # Building the binary tree 
#     binary_tree = build(all_levels) 
#     print('Binary tree from list :\n', 
#         binary_tree) 
    
#     # root3 = tree(height = 3, 
#     #          is_perfect = True) 
#     # print("Perfect binary tree of given height :") 
#     # print(root3) 

#     print(different_values)
#     pruned_levels=np.setdiff1d(all_levels, different_values)
#     print(pruned_levels)
#     cnt=1
#     tmp=[]
#     flag=0
#     end=len(pruned_levels)-1
#     for i, value in enumerate(pruned_levels):
#         print(value, cnt)

#         if i==0 or flag==1:
#             flag=0
#             continue
#         if value==pruned_levels[i-1]+1:
#             cnt+=1
#         else:
#             ans=block(cnt)
#             for val in ans:
#                 tmp.append(val+1)

#             flag=pruned_levels[i]%2
#             if i!=end and flag:
#                 flag=pruned_levels[i]%2
#                 tmp.append(1)
#             cnt=1
#         if i==end:
#             ans=block(cnt)
#             for val in ans:
#                 tmp.append(val+1)
#     # print(tmp)

#     pruned_ands=[]
#     for i in range(4):
#         pruned_ands.append(len([j for j in tmp if j==i+1]) )
#     print(pruned_ands)
#     ands_max=[8,4,2,1]
#     pruned_comparators=[]
#     for i, max_value in enumerate(ands_max):
#         if max_value == pruned_ands[i]:
#             pruned_comparators.append(1)
#     print(pruned_comparators)
#     # print(np.shape(X_train[:,0]))
#     # print([np.unique(i) for i in X_train[0]])




# import sys
# import numpy as np
# import math
# import bisect

# def block(x):
#     i = 0
#     val = math.pow(2, i)
#     v = []
#     # for storing all power of 2 such pow(2,i) <= x
#     while val <= x:
#         v.append(val)
#         i += 1
#         val = math.pow(2, i)
#         # Generating all values such that pow(2,i) <= x
     
#     # Performing operation till num become 0
#     ans = set()
#     while x != 0:
#         index = bisect.bisect_right(v, x) - 1
#         # Now v[index] <= x and v[index+1] > x
#         ans.add(index)
#         # Adding power in ans
#         x = x - v[index]
#         # reducing x to x-v[index]
    
#     return ans
    
    


# if __name__ == "__main__":

#     training_flag = False
#     if len(sys.argv)==3:    
#         training_flag = sys.argv[2]
#         dataset_name = sys.argv[1]
#     elif len(sys.argv)==2:
#         dataset_name = sys.argv[1]
#     elif len(sys.argv)==1:
#         dataset_name="RedWine"
#     else:
#         assert False

    
#     if dataset_name=='Arrhythmia':
#         synth_period = "320000000.00"
#     elif dataset_name=='Pendigits':
#         synth_period = "250000000.00"
#     else:
#         synth_period = "200000000.00"
#         # QW=[(2,6),(2,6)]
#         # QB=[(2,6),(2,6)]
#     # if dataset_name=='Pendigits':
#     #     QW=[(3,5),(3,5)]
#     #     QB=[(2,6),(2,6)]
#     # elif dataset_name=='WhiteWine':
#     #     QW=[(3,5),(3,5)]
#     #     QB=[(3,5),(3,5)]
#     # else:
#     #     QW=[(2,6),(2,6)]
#     #     QB=[(2,6),(2,6)]

#     model_path =  "./Networks/"+dataset_name+"/QuantModel"
#     dataset_path =  "./Networks/"+dataset_name+"/dataset"

#     # X_train = np.load(dataset_path+'/X_train.npy')
#     # X_test = np.load(dataset_path+'/X_test.npy')
#     # Y_test = np.load(dataset_path+'/Y_test.npy')
#     # Y_train = np.load(dataset_path+'/Y_train.npy')

#     X_train = np.load(dataset_path+'/X_train_pruned.npy')
#     X_test = np.load(dataset_path+'/X_test_pruned.npy')
#     Y_test = np.load(dataset_path+'/Y_test_wo_valid.npy')
#     all_levels=[i for i in range(16)]
#     different_values=[np.multiply(np.unique(X_train[:,i]), 16).tolist() for i in range(len(X_train[0]))]
#     print(different_values)
#     pruned_levels=np.setdiff1d(all_levels, different_values[0])
#     print(different_values[0])
#     print(pruned_levels)
#     cnt=1
#     tmp=[]
#     flag=0
#     end=len(pruned_levels)-1
#     for i, value in enumerate(pruned_levels):
#         print(value, cnt)

#         if i==0 or flag==1:
#             flag=0
#             continue
#         if value==pruned_levels[i-1]+1:
#             cnt+=1
#         else:
#             ans=block(cnt)
#             for val in ans:
#                 tmp.append(val+1)

#             flag=pruned_levels[i]%2
#             if i!=end and flag:
#                 flag=pruned_levels[i]%2
#                 tmp.append(1)
#             cnt=1
#         if i==end:
#             ans=block(cnt)
#             for val in ans:
#                 tmp.append(val+1)
#     # print(tmp)

#     pruned_ands=[]
#     for i in range(4):
#         pruned_ands.append(len([j for j in tmp if j==i+1]) )
#     print(pruned_ands)
#     ands_max=[8,4,2,1]
#     pruned_comparators=[]
#     for i, max_value in enumerate(ands_max):
#         if max_value == pruned_ands[i]:
#             pruned_comparators.append(1)
#     print(pruned_comparators)
#     # print(np.shape(X_train[:,0]))
#     # print([np.unique(i) for i in X_train[0]])
