## Create the environment

Use the terminal for the following steps:

1. Create the environment from the environment.yml file:

        conda env create -f env.yml


The first line of the yml file sets the new environment's name. In our case the environment name is Qkeras.

2. Activate the new environment: 
    
        conda activate Qkeras



## How to run it?

After creating and activating the Qkeras environment you can run the QAT and the approximation of the Accumulation with a pretrain model by simply running:
```
python3 main.py <dataset_name>
```
where <dataset_name> = Arrhythmia, Breast_Cancer,  Cardio, Pendigits, RedWine, WhiteWine.
For example if you want to run the optimizations for the Cardio dataset you can simply run ``` python3 main.py Cardio ```

If you want to also train the initial floating point model run:
```    
python3 main.py <dataset_name> True
 ```

## Argamax Approximation

<img width="1111" alt="comingsoon" src="https://user-images.githubusercontent.com/6929121/87441911-486bf600-c611-11ea-9d45-94c215733cf7.png">
