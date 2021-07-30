# 32-point-FFT-design-based-DIT-butterfly-algorithm
This project aims to design an 32-point FFT (Fast Fourier Transform) based DIT (decimation in time) Butterfly Algorithm with multiple clock domains and time-shared design

# Introduction
Transforms are generally used to convert a function from time domain to frequency domain without any loss of information, The Fast Fourier transforms (FFT) are the numerically efficient algorithms to compute the Discrete Fourier Transform (DFT). 

FFT algorithms are based on the concept of divide and conquer approach. The FFT is used in so many applications as In the field of communications, the FFT is important because of its use in orthogonal frequency division multiplexing (OFDM) systems.

In this project it was implemented the FFT for a 32-points sequence with the help of Decimation In Time algorithm with radix-2.

# Cooley -Tukey DIT-FFT Algorithm
DFT involves a lot of calculations and therefore it requires a time efficient algorithm because it needs 4N real multiplications and N-1 complex additions, the below equation describes DFT.
![image](https://user-images.githubusercontent.com/64384499/127673433-f7001148-0e46-45d0-9235-5091a03516a6.png)

on the other hand if we will use FFT algorithm such as Decimation in Time (DIT) FFT with radix-2 algorithm, then the number of complex multiplications and additions will be reduced to (N/2) log2N & Nlog2N respectively to compute the DFT of a given complex sequence x[n]. So, The FFT are the numerically efficient algorithms to compute the DFT and provides exactly the same result as obtained by evaluating the DFT definition. As Fast Fourier Transform (FFT) is based on decomposition and breaking it into smaller sequences and at the end again combining into one transform. Mathematically FFT can be calculated through DFT:
![image](https://user-images.githubusercontent.com/64384499/127673571-a04a1ff8-af5b-4f44-b1e5-3b9721b49594.png)

Here $$X_i$$ which called twiddle factor and it is given by:

You can use $$\LaTeX$$ to typeset formulas. A formula can be displayed inline, e.g. $$e=mc^2$$, or as a block:
