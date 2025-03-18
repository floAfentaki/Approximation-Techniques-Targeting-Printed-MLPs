import sys
import numpy as np
import pandas as pd
import os

from sklearn.model_selection import train_test_split

from adc import adc_levels_pruned
from calculate_adc_area import adc_levels_pruned_area
from mlp_fxp_ps_GZ import mlp_fxp_ps
import iccad_write_mlp_mergemult_ps_zg as wv

"""
Create ADC area report for given dataset and evaluations.
Args:
    dataset_name (str): Name of the dataset.
    evaluations (list): List of evaluation metrics.
    parameters (list): List of parameters corresponding to evaluations.
    X_test (numpy.ndarray): Test data features.
Returns:
    None
This function generates ADC area reports for different network configurations
based on the provided evaluations and parameters. It saves the reports in the
specified project directory.
"""
# Additional comments explaining the code logic
# ...
"""
Create Verilog files for given dataset and network configurations.
Args:
    dataset_name (str): Name of the dataset.
    coeffs_hidden (list): List of hidden layer coefficients.
    coeffs_output (list): List of output layer coefficients.
    bias_hidden (list): List of hidden layer biases.
    bias_output (list): List of output layer biases.
    evaluations (list): List of evaluation metrics.
    parameters (list): List of parameters corresponding to evaluations.
    X_test (numpy.ndarray): Test data features.
    Y_test (numpy.ndarray): Test data labels.
    X_train (numpy.ndarray): Training data features.
Returns:
    None
This function generates Verilog files for different network configurations
based on the provided evaluations, parameters, and network weights. It saves
the Verilog files and related reports in the specified project directory.
"""
INPUT_BITS=4
def create_adcArea(dataset_name, evaluations, parameters, X_test):


    # df_weights=pd.DataFrame(np.transpose(np.array([coeffs_hidden,coeffs_output,bias_hidden,bias_output], dtype='object')), columns=["coeffs_hidden","coeffs_output","bias_hidden","bias_output"])

    num_sensors=len(X_test[0])
    print(num_sensors)
    for i in range(len(evaluations)):
        evaluations[i].extend(parameters[i])
    # print(evaluations)
    evaluations_names=["accuracy", "diff_levels"]
    pruned_masks=[f"m{i}" for i in  range(num_sensors)]
    pruned_values=[f"v{i}" for i in  range(num_sensors)]
    precisions_labels=[f"Qx{i}" for i in range(4*2+2)]
    columns=evaluations_names.copy()
    columns.extend(pruned_masks)
    columns.extend(pruned_values)   
    columns.extend(["BATCH_SIZE"])
    columns.extend(precisions_labels)
    df=pd.DataFrame(evaluations, columns=columns)
    df["accuracy"]=df["accuracy"]*(-1)


    #create project
    path_project_root = "project/"+dataset_name+"/"


    for network_id in range(df.shape[0]):
        pareto_point=df.iloc[network_id]
        path_project=f"{path_project_root}/{network_id}"

        pareto_point_masks=pareto_point[pruned_masks].astype("int32").to_list()
        pareto_point_values=pareto_point[pruned_values].astype("int32").to_list()
        

        masks, values=[],[]
        for i in  range(num_sensors):
            m=pareto_point_masks[i]
            v=pareto_point_values[i]
            masks.append([int(i) for i in list('{0:015b}'.format(m))])
            values.append([int(i) for i in list('{0:015b}'.format(v))])
        
        f=open(f"{path_project}/pythonADC.rpt","w")
        stdoutbckp=sys.stdout
        sys.stdout=f

        X_test_levels, area, power=adc_levels_pruned_area(X_test, INPUT_BITS, masks, values) 
        print(f"Area: {round(sum(area),1)}")
        print(f"Power: {round(sum(power),1)}")

        f.close()
        sys.stdout=stdoutbckp
        
    
def create_verilog(dataset_name, coeffs_hidden, coeffs_output, bias_hidden, bias_output, evaluations, parameters, X_test, Y_test, X_train):


    df_weights=pd.DataFrame(np.transpose(np.array([coeffs_hidden,coeffs_output,bias_hidden,bias_output], dtype='object')), columns=["coeffs_hidden","coeffs_output","bias_hidden","bias_output"])

    num_sensors=len(X_test[0])
    print(num_sensors)
    for i in range(len(evaluations)):
        evaluations[i].extend(parameters[i])

    evaluations_names=["accuracy", "diff_levels", "MLParea"]
    pruned_masks=[f"m{i}" for i in  range(num_sensors)]
    pruned_values=[f"v{i}" for i in  range(num_sensors)]
    precisions_labels=[f"Qx{i}" for i in range(4*2+2)]
    columns=evaluations_names.copy()
    columns.extend(pruned_masks)
    columns.extend(pruned_values)   
    columns.extend(["BATCH_SIZE"])
    columns.extend(precisions_labels)
    columns.extend(["EPOCH"])
    df=pd.DataFrame(evaluations, columns=columns)
    df["accuracy"]=df["accuracy"]*(-1)
    df_result = pd.concat([df, df_weights], axis=1, join="inner")
    df_result=df_result.sort_values(by=["accuracy"], ascending=False)
    df_result=df_result.drop(labels=["EPOCH"], axis=1)

    #create project
    path_project_root = "project/"+dataset_name+"/"
    isExist = os.path.exists(path_project_root)
    if isExist:
        os.system("rm -rf "+path_project_root)
    os.makedirs(path_project_root)

    for network_id in range(df_result.shape[0]):
        pareto_point=df_result.iloc[network_id]
        path_project=f"{path_project_root}/{network_id}"
        os.makedirs(path_project)

        print(pareto_point)


        pareto_point_accuracy=pareto_point["accuracy"]
        pareto_point_diff_levels=pareto_point["diff_levels"]
        pareto_point_masks=pareto_point[pruned_masks].astype("int32").to_list()
        pareto_point_values=pareto_point[pruned_values].astype("int32").to_list()
        BATCH_SIZE=pareto_point["BATCH_SIZE"].astype("int32")
        prec=pareto_point[precisions_labels].astype("int32").to_list()
        QW=[(prec[0],prec[1]),(prec[2], prec[3])]
        QB=[(prec[0],prec[1]),(prec[2], prec[3])]
        QA_list=[(prec[8],prec[9])]

        pareto_point_coeff_hidden=pareto_point["coeffs_hidden"]
        pareto_point_coeff_output=pareto_point["coeffs_output"]
        pareto_point_bias_hidden=pareto_point["bias_hidden"]
        pareto_point_bias_output=pareto_point["bias_output"]

        coefficients=[pareto_point_coeff_hidden,pareto_point_coeff_output]
        intercepts=[pareto_point_bias_hidden,pareto_point_bias_output]

        masks, values=[],[]
        for i in  range(num_sensors):
            m=pareto_point_masks[i]
            v=pareto_point_values[i]
            masks.append([int(i) for i in list('{0:015b}'.format(m))])
            values.append([int(i) for i in list('{0:015b}'.format(v))])
        
        f=open(f"{path_project}/python.rpt","w")
        stdoutbckp=sys.stdout
        sys.stdout=f
        print()
        print(f"accuracy score of trained qmodel: {pareto_point_accuracy*100}")
        print(f"#different levels in ADC: {pareto_point_diff_levels}")
        print(f"BATCH_SIZE: {BATCH_SIZE}")
        print()

        print(f"QW: {QW}")
        print(f"QB: {QB}")
        print(f"QA: {QA_list}")
        print()
        print(f"coefficients: {coefficients}")
        print(f"intercepts: {intercepts}")

        _, area, power=adc_levels_pruned_area(X_train, INPUT_BITS, masks, values) 
        X_test_levels, _, _=adc_levels_pruned_area(X_test, INPUT_BITS, masks, values) 
  
        QA=[(QA_list[0][0],QA_list[0][1]),(QA_list[0][0],QA_list[0][1])]
        QX=[(0,4)]

        y_test = [np.argmax(y, axis=None, out=None) for y in Y_test[:]]  

        qmlp=mlp_fxp_ps(coefficients, intercepts, QX, QW, QA, QB, min(y_test))
        acc_int = qmlp.get_accuracy(X_test_levels,y_test)
        print(f"accuracy score of trained qmodel: {pareto_point_accuracy*100}")
        print(f"accuracy score of trained qmodel: {acc_int*100}")
        
    

        ## verilog
        #4)Create the verilog
        template_name="0_template_egfet"

        if dataset_name=='Arrhythmia':
            synth_period = "320000000.00"
        elif dataset_name=='Pendigits':
            synth_period = "250000000.00"
        else:
            synth_period = "200000000.00"
        
        with open(f"{template_name}/scripts/env.sh","r") as f:
            lines = f.readlines()

        with open(f"{template_name}/scripts/env.sh","w") as f:
            for line in lines:
                if not("export ENV_CLK_PERIOD=" in line):
                    f.write(line)
                else:
                    f.write(f"export ENV_CLK_PERIOD=\"{synth_period}\"\n" )

        os.system(f"cp -r {template_name}/* "+path_project)

        weight_list=qmlp.coefs
        bias_list=qmlp.intercept        

        last_layer="linear"

        print()
        print()

        print(QW)
        print(QB)
        weight_bias_size=[[(sum(QW[0]), QW[0][0]), (sum(QB[0]), QB[0][0])], [(sum(QW[1]), QW[1][0]), (sum(QB[1]), QB[1][0])]]
        print(weight_bias_size)

        relu_size=(sum(QA[0]),QA[0][0])
        sum_relu_size=[
            [(32,6),relu_size],
            [(32,6),(32,6)]
        ]
        print(sum_relu_size)
        # input_size=(4,0)
        input_size=(4,0)
        print(input_size)

        print()
        print()
        
        baseline_area=len(area)*0.1705884
        baseline_power=len(power)*1.296067072
        print(f"Baseline Area: {baseline_area} cm2")
        print(f"Baseline Power: {baseline_power} mW")
        print(f"Area: {round(sum(area),5)} cm2")
        print(f"Power: {round(sum(power),5)} mW")
        print(f"Area Gain: {round((baseline_area/sum(area)),2)}")
        print(f"Power Gain: {round((baseline_power/sum(power)),2)}")
        
        f.close()
        sys.stdout=stdoutbckp

        ## xtest
        f=open(f"{path_project}/sim/sim.Xtest","w")
        np.savetxt(f,((X_test_levels*(2**QX[0][1])).round()).astype(int),fmt='%d',delimiter=' ')
        f.close()

        ## ytrain
        Y = np.array(y_test)
        f=open(f"{path_project}/sim/sim.Ytest","w")
        np.savetxt(f,Y.astype(int),fmt='%d',delimiter='\n')
        f.close()

        mask=None
        bias_list = qmlp.intercept
        weight_list = qmlp.coefs


        ## testbench
        f=open(f"{path_project}/sim/top_tb.v","w")
        stdoutbckp=sys.stdout
        sys.stdout=f

    
        width_a=sum(QX[0])
        inp_num=len(weight_list[0][0])
        width_o=wv.get_width(len(weight_list[-1]))
        print("`timescale 1ns/1ps")
        print("`define EOF 32'hFFFF_FFFF")
        print("`define NULL 0")
        print()
        print("module top_tb();")
        print()
        print(f"    parameter OUTWIDTH={str(width_o)};")
        print(f"    parameter NUM_A={str(inp_num)};")
        print(f"    parameter WIDTH_A={str(width_a)};")
        print()
        
        # localparam period = 200000000.00;
        print(f"    localparam period = {synth_period};")
        print('''

        reg  [WIDTH_A-1:0] at[NUM_A-1:0];
        wire [NUM_A*WIDTH_A-1:0] inp;
        wire [OUTWIDTH-1:0] out;

        wire [WIDTH_A:0] r;

        top DUT(.inp(inp),
                .out(out)
                );


        integer inFile,outFile,i;
        initial
        begin
            $display($time, " << Starting the Simulation >>");
                inFile = $fopen("./sim/sim.Xtest","r");
            if (inFile == `NULL) begin
                    $display($time, " file not found");
                    $finish;
            end
            outFile = $fopen("./sim/output.txt");
            while (!$feof(inFile)) begin
                for (i=0;i<NUM_A;i=i+1) begin
                    $fscanf(inFile,"%d ",at[i]);
                end
                $fscanf(inFile,"\\n");
                #(period)
                $fwrite(outFile,"%d\\n", out);
            end
            #(period)
            $display($time, " << Finishing the Simulation >>");
            $fclose(outFile);
            $fclose(inFile);
            $finish;
        end


        genvar gi;
        generate
        for (gi=0;gi<NUM_A;gi=gi+1) begin : genbit
            assign inp[(gi+1)*WIDTH_A-1:gi*WIDTH_A] = at[gi];
        end
        endgenerate


        endmodule''')
        f.close()
        name_f = dataset_name+"_"+str(network_id)
        verilog_name = name_f+".v"

        f=open(f"{path_project}/hdl/{verilog_name}","w")
        sys.stdout=stdoutbckp
        wv.write_mlp_verilog(f, input_size, bias_list, weight_list, weight_bias_size, sum_relu_size, last_layer, mask)
        f.close()

        sys.stdout=stdoutbckp
