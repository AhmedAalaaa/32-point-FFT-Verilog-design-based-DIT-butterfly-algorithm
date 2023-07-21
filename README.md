# 32-point-FFT-Verilog-design-based-DIT-butterfly-algorithm
This project aims to design an 32-point FFT (Fast Fourier Transform) based DIT (decimation in time) Butterfly Algorithm with multiple clock domains and time-shared design.

The design procedure is aimed to be work for the both digital designs flow FPGA and ASIC.

The FPGA flow will start from writing the RTL to the bitstream generation on the Xilinx Vivado tool.

The ASIC flow will start from writing the RTL to GDS file generation on Synopsys EDA tools.

# Introduction
Transforms are generally used to convert a function from time domain to frequency domain without any loss of information, The Fast Fourier transforms (FFT) are the numerically efficient algorithms to compute the Discrete Fourier Transform (DFT). 

FFT algorithms are based on the concept of divide and conquer approach. The FFT is used in so many applications as In the field of communications, the FFT is important because of its use in orthogonal frequency division multiplexing (OFDM) systems.

In this project it was implemented the FFT for a 32-points sequence with the help of Decimation In Time algorithm with radix-2.

# Butterfly diagram
![image](https://user-images.githubusercontent.com/64384499/127676203-d51eab76-11e9-4a71-af22-0a580097acea.png)

# Design Approach
Here is more details on the modules that used in the design.
## MAC
The MAC unit consists of eight multipliers, four adders and four two’s complement sages. MAC unit Design which is named “butterfly2” in our design and has 8 inputs (real and imaginary of input 1and input 2, real and imaginary of twiddle 1 and twiddle 2) and 4 imaginary (real and imaginary of output 1and output 2).
![image](https://user-images.githubusercontent.com/64384499/127677970-79348ac5-f7f9-433f-9d8b-5f43be289145.png)

## Two’s complement Design
The function of this stage is only to get the two’s complement of the fixed-point number, instead of making subtractions blocks.

## Multiplier Design
the multiplier is designed for a fixed-point operation, the Idea of the multiplier is that the ordinary multiplier is worked for two positive fixed-point number, so it is needed to ensure that the two multiplicands are positive to give the correct answer, so if one of the inputs or both of them are negative fixed-point numbers, first it is needed to take the two’s compliment for them, then apply the multiplication and depending on the inputs decide the shape of the output which is two’s complement or a positive fixed-point value.

![image](https://user-images.githubusercontent.com/64384499/127677546-654df270-473c-4ed6-8bc0-8b9481f5e2a2.png)

## Adder design
The design of the adder is very simple, it is need to add three numbers together, so by adding the two of them then take the result and add it with the third and put it into the register that clocked with 50 MHz
![image](https://user-images.githubusercontent.com/64384499/127677877-ef40e4ba-3c85-4473-a1a7-c7ffaae5a1af.png)

The final design of the mac block which is run on 50MHz.

## Register Files
Registers are necessary to save outputs after each stage, as we achieved the concept of the pipeline by putting 2 register files one at the input stage and the other on the output stage. Each register file is of size 32 𝑟𝑒𝑔𝑖𝑠𝑡𝑒𝑟𝑠 × 2 (𝑟𝑒𝑎𝑙 𝑜𝑟 𝑖𝑚𝑎𝑔) × 8 𝑏𝑖𝑡𝑠 = 32 × 2 × 8 registers and run on Clk 10MHz. as we can enter input and get output every 100ns.

## Muxs
Mux will be used in second approach, As we use Muxs to choose which inputs of the stage will enter to 16 MAC circuits to achieve time sharing concept to produce the output. As in the second approach we will use 16 MAC circuits only to cover all the 5 stages but in the first approach we use 16 MAC circuits in every stage. And in the time share implementation, the MUX will choose between 𝑀 = 5 buses, each of size 32 × 2 × 8, with counter selection that resets after reaching count #5 by control unit.

# Block Diagram
The hardware which used in this approach is 16 MAC’s, 2 register files, a MUX that chooses which inputs will be loaded this cycle and a Control unit to choose a selection lines of the Muxs. Each MAC unit operates at 50 MHz and the pipeline clock at 10 MHz, so we can operate 5 operations of the MAC until new inputs enter. As We can use time sharing concept to operate 16 MAC unit to serve 5 stages in the algorithm and hence 5 cycles of clk 50 MHz are needed to get an FFT output for a specific input.So, we could reduce the Utilization of the hardware.

![image](https://user-images.githubusercontent.com/64384499/127680171-ff5ee756-e671-4896-b5c3-0d9f107cb4a7.png)

As when inputs enter, it will pass to Reg1 of clk 10Mhz and then will choose of the mux and then will go through MAC units and the outputs of this MAC units will go through Muxes and it will choose according to which stage operate now and that will be repeated until reach to the final stage and the output will go through reg 2 to save it.

# Software Design
Cooley-Tukey DIT-FFT Algorithm was implement using MATLAB to compare the results with the built-if function fft as depicted form the following figures the result of the built-in function and the estimated values of the Algorithm for a random sample of data.

![image](https://user-images.githubusercontent.com/64384499/127680352-ab656da6-a2fb-4635-bffa-8f7e62a7d5c2.png)
![image](https://user-images.githubusercontent.com/64384499/127680364-c0d53497-367e-40db-a33d-45af98e954bb.png)

# Synthesis and Implementation
This design was Synthesized and implemented for Xilinx Zynq UltraScale+ (xazu3eg-sfva625-1-i) FPGA, and all the following results are met.
## Utilization report
![image](https://user-images.githubusercontent.com/64384499/208193911-b6e81ce1-28aa-475a-b1bc-fb539dbc91cf.png)
![image](https://user-images.githubusercontent.com/64384499/208193967-22154916-194f-400d-9408-a8557bb17c9d.png)

## Timing Constrains
![image](https://user-images.githubusercontent.com/64384499/208194895-eab627a5-3512-413a-a6b2-4ae6f6216bcf.png)
![image](https://user-images.githubusercontent.com/64384499/127680899-94525440-b824-48f9-aa1f-674af49a751d.png)

## Critical path
![image](https://user-images.githubusercontent.com/64384499/208195036-0dca7eed-b454-4c53-aa5d-0ebe710d7985.png)
![image](https://user-images.githubusercontent.com/64384499/208195094-481461fa-c4a5-4f19-a520-b79b8baa4889.png)

## Power Report
![image](https://user-images.githubusercontent.com/64384499/208195138-397bd484-f22c-4c69-a380-898be85644a6.png)




