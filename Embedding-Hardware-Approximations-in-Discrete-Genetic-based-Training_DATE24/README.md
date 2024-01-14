## Embedding Hardware Approximations in Discrete Genetic-based Training for Printed MLPs IEEE DATE'2024

In the folder ```FinalDesigns``` the verilog files of the final reported  verilog designs can be found. For each dataset one verilog description is provided alongside the testbench and input files X_test, Y_test for simulation.

If you want to run the high-level optimizations and extract new bespoke holistic-approximate design in the folder ```srcs``` you can find the proposed framework and instructions on how to run it. 


## Abstract of this work

Printed Electronics (PE) stands out as a promising
technology for widespread computing due to its distinct attributes,
such as low costs and flexible manufacturing. Unlike traditional
silicon-based technologies, PE enables stretchable, conformal,
and non-toxic hardware. However, PE are constrained by
larger feature sizes, making it challenging to implement complex
circuits such as machine learning (ML) classifiers. Approximate
computing has been proven to reduce the hardware cost of ML
circuits such as Multilayer Perceptrons (MLPs). In this paper, we
maximize the benefits of approximate computing by integrating
hardware approximation into the MLP training process. Due
to the discrete nature of hardware approximation, we propose
and implement a genetic-based, approximate, hardware-aware
training approach specifically designed for printed MLPs. For a
5% accuracy loss, our MLPs achieve over 5× area and power
reduction compared to the baseline while outperforming stateof-
the-art approximate and stochastic printed MLPs.

## Cite Us

If you found this work helpful cite us.
<!-- If you found this work helpful cite us like: -->

<!-- ```
@INPROCEEDINGS{holisticAxMLP:Afentaki:ICCAD23,
  author={Afentaki, Florentia and Saglam, Gurol and Kokkinis, Argyris and Siozios, Kostas and Zervakis, Georgios and Tahoori, Mehdi B.},
  booktitle={2023 IEEE/ACM International Conference on Computer Aided Design (ICCAD)}, 
  title={Bespoke Approximation of Multiplication-Accumulation and Activation Targeting Printed Multilayer Perceptrons}, 
  year={2023},
  volume={},
  number={},
  pages={1-9},
  doi={10.1109/ICCAD57390.2023.10323613}}
``` -->