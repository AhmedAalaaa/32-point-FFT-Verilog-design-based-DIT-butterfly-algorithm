`timescale 1ns / 1ps

module butterfly8 # 
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
	input		[N-1:0]		in4_r,
	input		[N-1:0]		in4_i,
	input		[N-1:0]		in5_r,
	input		[N-1:0]		in5_i,
	input		[N-1:0]		in6_r,
	input		[N-1:0]		in6_i,
	input		[N-1:0]		in7_r,
	input		[N-1:0]		in7_i,
	
	input		[N-1:0]		twiddle1_r,
	input		[N-1:0]		twiddle1_i,
	input		[N-1:0]		twiddle2_r,
	input		[N-1:0]		twiddle2_i,
	input		[N-1:0]		twiddle3_r,
	input		[N-1:0]		twiddle3_i,
	input		[N-1:0]		twiddle4_r,
	input		[N-1:0]		twiddle4_i,
	
	output		[N-1:0]		out0_r,
	output		[N-1:0]		out0_i,
	output		[N-1:0]		out1_r,
	output		[N-1:0]		out1_i,
	output		[N-1:0]		out2_r,
	output		[N-1:0]		out2_i,
	output		[N-1:0]		out3_r,
	output		[N-1:0]		out3_i,
	output		[N-1:0]		out4_r,
	output		[N-1:0]		out4_i,
	output		[N-1:0]		out5_r,
	output		[N-1:0]		out5_i,
	output		[N-1:0]		out6_r,
	output		[N-1:0]		out6_i,
	output		[N-1:0]		out7_r,
	output		[N-1:0]		out7_i
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_1
(
	.clk(clk),
	.rst(rst),
	.in0_r(in0_r),
	.in0_i(in0_i),
	.in1_r(in4_r),
	.in1_i(in4_i),
	.twiddle_r(twiddle1_r),
	.twiddle_i(twiddle1_i),	
	.out0_r(out0_r),
	.out0_i(out0_i),
	.out1_r(out4_r),
	.out1_i(out4_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_2
(
	.clk(clk),
	.rst(rst),
	.in0_r(in1_r),
	.in0_i(in1_i),
	.in1_r(in5_r),
	.in1_i(in5_i),
	.twiddle_r(twiddle2_r),
	.twiddle_i(twiddle2_i),	
	.out0_r(out1_r),
	.out0_i(out1_i),
	.out1_r(out5_r),
	.out1_i(out5_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_3
(
	.clk(clk),
	.rst(rst),
	.in0_r(in2_r),
	.in0_i(in2_i),
	.in1_r(in6_r),
	.in1_i(in6_i),
	.twiddle_r(twiddle3_r),
	.twiddle_i(twiddle3_i),	
	.out0_r(out2_r),
	.out0_i(out2_i),
	.out1_r(out6_r),
	.out1_i(out6_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_4
(
	.clk(clk),
	.rst(rst),
	.in0_r(in3_r),
	.in0_i(in3_i),
	.in1_r(in7_r),
	.in1_i(in7_i),
	.twiddle_r(twiddle4_r),
	.twiddle_i(twiddle4_i),	
	.out0_r(out3_r),
	.out0_i(out3_i),
	.out1_r(out7_r),
	.out1_i(out7_i)
);
endmodule
