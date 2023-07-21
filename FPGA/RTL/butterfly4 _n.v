`timescale 1ns / 1ps

module butterfly4 #
(
	parameter N = 8,
	parameter Q = 4
)
(
    input					clk,
	input					rst,
	input		[N-1:0]		in0_r,
	input		[N-1:0]		in0_i,
	input		[N-1:0]		in1_r,
	input		[N-1:0]		in1_i,
	input		[N-1:0]		in2_r,
	input		[N-1:0]		in2_i,
	input		[N-1:0]		in3_r,
	input		[N-1:0]		in3_i,	
	input		[N-1:0]		twiddle1_r,
	input		[N-1:0]		twiddle1_i,
	input		[N-1:0]		twiddle2_r,
	input		[N-1:0]		twiddle2_i,
	
	output		[N-1:0]		out0_r,
	output		[N-1:0]		out0_i,
	output		[N-1:0]		out1_r,
	output		[N-1:0]		out1_i,
	output		[N-1:0]		out2_r,
	output		[N-1:0]		out2_i,
	output		[N-1:0]		out3_r,
	output		[N-1:0]		out3_i
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_1
(
	.clk(clk),
	.rst(rst),
	.in0_r(in0_r),
	.in0_i(in0_i),
	.in1_r(in2_r),
	.in1_i(in2_i),
	.twiddle_r(twiddle1_r),
	.twiddle_i(twiddle1_i),	
	.out0_r(out0_r),
	.out0_i(out0_i),
	.out1_r(out2_r),
	.out1_i(out2_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_2
(
	.clk(clk),
	.rst(rst),
	.in0_r(in1_r),
	.in0_i(in1_i),
	.in1_r(in3_r),
	.in1_i(in3_i),
	.twiddle_r(twiddle2_r),
	.twiddle_i(twiddle2_i),	
	.out0_r(out1_r),
	.out0_i(out1_i),
	.out1_r(out3_r),
	.out1_i(out3_i)
);
	
endmodule
