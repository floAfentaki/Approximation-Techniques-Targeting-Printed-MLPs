## Bespoke Approximation of Multiplication Accumulation and ActivationTargeting Printed Multilayer Perceptrons IEEE/ACM ICCAD23

In the folder ```FinalDesigns``` the verilog files of the final reported  verilog designs can be found. For each dataset one verilog description is provided alongside the testbench and input files X_test, Y_test for simulation.

If you want to run the high-level optimizations and extract new bespoke holistic-approximate design in the folder ```srcs``` you can find the proposed framework and instructions on how to run it. 


## Abstract of this work

Printed Electronics (PE) feature distinct and remarkable characteristics that make them a prominent technology for achieving true ubiquitous computing. This is particularly relevant in application domains that require conformal and ultra-low cost solutions, which have experienced limited penetration of computing until now. Unlike silicon-based technologies, PE offer unparalleled features such as non-recurring engineering costs, ultra-low manufacturing cost, and on-demand fabrication of conformal, flexible, non-toxic, and stretchable hardware. However, PE face certain limitations due to their large feature sizes, that impede the realization of complex circuits, such as machine learning classifiers. In this work, we address these limitations by leveraging the principles of Approximate Computing and Bespoke (fully-customized) design. We propose an automated framework for designing ultra-low power Multilayer Perceptron (MLP) classifiers which employs, for the first time, a holistic approach to approximate all functions of the MLP's neurons: multiplication, accumulation, and activation. Through comprehensive evaluation across various MLPs of varying size, our framework demonstrates the ability to enable battery-powered operation of even the most intricate MLP architecture examined, significantly surpassing the current state of the art. 

## Cite Us

If you found this work helpful cite us like:

```
@INPROCEEDINGS{holisticAxMLP:Afentaki:ICCAD23,
  author={Afentaki, Florentia and Saglam, Gurol and Kokkinis, Argyris and Siozios, Kostas and Zervakis, Georgios and Tahoori, Mehdi B.},
  booktitle={2023 IEEE/ACM International Conference on Computer Aided Design (ICCAD)}, 
  title={Bespoke Approximation of Multiplication-Accumulation and Activation Targeting Printed Multilayer Perceptrons}, 
  year={2023},
  volume={},
  number={},
  pages={1-9},
  doi={10.1109/ICCAD57390.2023.10323613}}
```