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


    X_fxp = np.copy(X_fp)
    X_fxp=np.multiply(X_fxp,norm)


    #if mask==1  the node is working 
    #if mask==0 the node is pruned
    ##if mask==0 and value==0 the node is hardiwred to 0 (left)
    ##if mask==0 and value==1 the node is hardiwred to 1 (right)
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
    
    area_or, area_comp=0.0056353, 0.0008
    power_or, power_comp=0.0199643, 0.046066667

    power_adc_tree=[]
    area_adc_tree=[]
   
    for i in range(0,len(X_fxp[0])):
            q_levels=np.multiply(levels, 16)
            different_values=np.unique(np.multiply(X_fxp[:][i], 16))
            pruned_levels=np.setdiff1d(q_levels, different_values)

            y3_pruned = list(set(y3).difference(pruned_levels))
            y2_pruned = list(set(y2).difference(pruned_levels))
            y1_pruned = list(set(y1).difference(pruned_levels))
            y0_pruned = list(set(y0).difference(pruned_levels))

            encoder=max((len(y0_pruned)-1),0)+max((0,len(y1_pruned)-1))+max(0,(len(y2_pruned)-1))+max((len(y3_pruned)-1),0)
            comparators=len(different_values)
            area_cost=encoder*area_or+comparators*area_comp
            power_cost=encoder*power_or+comparators*power_comp

            area_adc_tree.append(area_cost)
            power_adc_tree.append(power_cost)
            area_cost, power_cost=0, 0
        

    return X_fxp, area_adc_tree, power_adc_tree

def adc_levels_pruned_area_roar(X_fp, bitwidth, masks, values):

    norm=2**bitwidth
    levels=[i/norm for i in range(norm)]


    X_fxp = np.copy(X_fp)
    X_fxp=np.multiply(X_fxp,norm)


    #if mask==1  the node is working 
    #if mask==0 the node is pruned
    ##if mask==0 and value==0 the node is hardiwred to 0 (left)
    ##if mask==0 and value==1 the node is hardiwred to 1 (right)

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
    trans, ands=0, 0
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
 
                if values[j][4]==1:
                    masks[j][5]=0
                else:
                    masks[j][6]=0

                if masks[j][0]==1 or (values[j][0]==0 and masks[j][0]==0):
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
            power_cost=power_nodes+power_comparators+power_nots

            prune4=areaInverter*3+areaComparator*4+areaAnds*9+11*areaTransistor
            baseline=areaInverter*3+areaComparator*4+areaAnds*12+14*areaTransistor
            paulas_area_cost=baseline
            baseline = 12284.4
            paulas_power_cost=powerInverter*3+powerComparator*4+powerAnds*12+14*powerTransistor

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
