`timescale 1ns / 1ps

module butterfly2 #
(
    parameter N = 16,
    parameter Q = 1
)
(
    input                   clk,
    input                   rst,
    input       [N-1:0]     in0_r,
    input       [N-1:0]     in0_i,
    input       [N-1:0]     in1_r,
    input       [N-1:0]     in1_i,
    input       [N-1:0]     twiddle_r,
    input       [N-1:0]     twiddle_i,

    output      [N-1:0]     out0_r,
    output      [N-1:0]     out0_i,
    output      [N-1:0]     out1_r,
    output      [N-1:0]     out1_i
);

    wire        [N-1:0]     out1_mul_r;
    wire        [N-1:0]     out1_mul_i;
    wire        [N-1:0]     out2_mul_r;
    wire        [N-1:0]     out2_mul_i;

    wire        [N-1:0]     out5_m;
    wire        [N-1:0]     out6_m;
    wire        [N-1:0]     out7_m;
    wire        [N-1:0]     out8_m;


    wire        [N-1:0]     out2_m_neg;
    wire        [N-1:0]     out5_m_neg;
    wire        [N-1:0]     out6_m_neg;
    wire        [N-1:0]     out7_m_neg;

    // First eq multipliers
    multiplier # (.N(N), .Q(Q)) M1
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_r),
        .C(out1_mul_r)
    );

    multiplier # (.N(N), .Q(Q)) M2
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_i),
        .C(out1_mul_i)
    );

    multiplier # (.N(N), .Q(Q)) M3
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_i),
        .C(out2_mul_r)
    );

    multiplier # (.N(N), .Q(Q)) M4
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_r),
        .C(out2_mul_i)
    );


    // Second eq multipliers
    multiplier # (.N(N), .Q(Q)) M5
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_r),
        .C(out5_m)
    );

    multiplier # (.N(N), .Q(Q)) M6
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_i),
        .C(out6_m)
    );

    multiplier # (.N(N), .Q(Q)) M7
    (
        .clk(clk),
        .rst(rst),
        .A(in1_i),
        .B(twiddle_r),
        .C(out7_m)
    );

    multiplier # (.N(N), .Q(Q)) M8
    (
        .clk(clk),
        .rst(rst),
        .A(in1_r),
        .B(twiddle_i),
        .C(out8_m)
    );




    // make the 2's complement
    get_negative # (.N(N)) neg1
    (
        .in(out2_mul_r),
        .out(out2_m_neg)
    );
    get_negative # (.N(N)) neg2
    (
        .in(out5_m),
        .out(out5_m_neg)
    );
    get_negative # (.N(N)) neg3
    (
        .in(out6_m),
        .out(out6_m_neg)
    );
    get_negative # (.N(N)) neg4
    (
        .in(out7_m),
        .out(out7_m_neg)
    );



    // Fisrt eq adders
    adder3 # (.N(N)) A1
    (
        .clk(clk),
        .rst(rst),
        .A(in0_r),
        .B(out1_mul_r),
        .C(out1_mul_i),
        .D(out0_r)
    );

    adder3 # (.N(N)) A2
    (
        .clk(clk),
        .rst(rst),
        .A(in0_i),
        .B(out2_m_neg),
        .C(out2_mul_i),
        .D(out0_i)
    );

    // second eq adders
    adder3 # (.N(N)) A3
    (
        .clk(clk),
        .rst(rst),
        .A(in0_r),
        .B(out5_m_neg),
        .C(out6_m_neg),
        .D(out1_r)
    );

    adder3 # (.N(N)) A4
    (
        .clk(clk),
        .rst(rst),
        .A(in0_i),
        .B(out7_m_neg),
        .C(out8_m),
        .D(out1_i)
    );

endmodule
