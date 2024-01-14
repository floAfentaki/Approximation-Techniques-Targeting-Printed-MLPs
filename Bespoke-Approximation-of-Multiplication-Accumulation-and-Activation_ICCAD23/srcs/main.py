import sys
from QATraining_model import training_wrapper
from axAccumulation import genetic_wrapper

if __name__ == "__main__":
    
    if len(sys.argv)==2:
        dataset_name = sys.argv[1]
    elif len(sys.argv)==1:
        dataset_name="RedWine"
    else:
        assert False

    qmodel=training_wrapper(dataset_name, training_flag=False)
    genetic_wrapper(dataset_name, qmodel)