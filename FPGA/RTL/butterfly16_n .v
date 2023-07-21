`timescale 1ns / 1ps

module butterfly16 #
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
	input		[N-1:0]		in8_r,
	input		[N-1:0]		in8_i,
	input		[N-1:0]		in9_r,
	input		[N-1:0]		in9_i,
	input		[N-1:0]		in10_r,
	input		[N-1:0]		in10_i,
	input		[N-1:0]		in11_r,
	input		[N-1:0]		in11_i,
	input		[N-1:0]		in12_r,
	input		[N-1:0]		in12_i,
	input		[N-1:0]		in13_r,
	input		[N-1:0]		in13_i,
	input		[N-1:0]		in14_r,
	input		[N-1:0]		in14_i,
	input		[N-1:0]		in15_r,
	input		[N-1:0]		in15_i,

	input		[N-1:0]		twiddle1_r,
	input		[N-1:0]		twiddle1_i,
	input		[N-1:0]		twiddle2_r,
	input		[N-1:0]		twiddle2_i,
	input		[N-1:0]		twiddle3_r,
	input		[N-1:0]		twiddle3_i,
	input		[N-1:0]		twiddle4_r,
	input		[N-1:0]		twiddle4_i,
	input		[N-1:0]		twiddle5_r,
	input		[N-1:0]		twiddle5_i,
	input		[N-1:0]		twiddle6_r,
	input		[N-1:0]		twiddle6_i,
	input		[N-1:0]		twiddle7_r,
	input		[N-1:0]		twiddle7_i,
	input		[N-1:0]		twiddle8_r,
	input		[N-1:0]		twiddle8_i,

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
	output		[N-1:0]		out7_i,
	output		[N-1:0]		out8_r,
	output		[N-1:0]		out8_i,
	output		[N-1:0]		out9_r,
	output		[N-1:0]		out9_i,
	output		[N-1:0]		out10_r,
	output		[N-1:0]		out10_i,
	output		[N-1:0]		out11_r,
	output		[N-1:0]		out11_i,
	output		[N-1:0]		out12_r,
	output		[N-1:0]		out12_i,
	output		[N-1:0]		out13_r,
	output		[N-1:0]		out13_i,
	output		[N-1:0]		out14_r,
	output		[N-1:0]		out14_i,
	output		[N-1:0]		out15_r,
	output		[N-1:0]		out15_i
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_1
(
	.clk(clk),
	.rst(rst),
	.in0_r(in0_r),
	.in0_i(in0_i),
	.in1_r(in8_r),
	.in1_i(in8_i),
	.twiddle_r(twiddle1_r),
	.twiddle_i(twiddle1_i),	
	.out0_r(out0_r),
	.out0_i(out0_i),
	.out1_r(out8_r),
	.out1_i(out8_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_2
(
	.clk(clk),
	.rst(rst),
	.in0_r(in1_r),
	.in0_i(in1_i),
	.in1_r(in9_r),
	.in1_i(in9_i),
	.twiddle_r(twiddle2_r),
	.twiddle_i(twiddle2_i),	
	.out0_r(out1_r),
	.out0_i(out1_i),
	.out1_r(out9_r),
	.out1_i(out9_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_3
(
	.clk(clk),
	.rst(rst),
	.in0_r(in2_r),
	.in0_i(in2_i),
	.in1_r(in10_r),
	.in1_i(in10_i),
	.twiddle_r(twiddle3_r),
	.twiddle_i(twiddle3_i),	
	.out0_r(out2_r),
	.out0_i(out2_i),
	.out1_r(out10_r),
	.out1_i(out10_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_4
(
	.clk(clk),
	.rst(rst),
	.in0_r(in3_r),
	.in0_i(in3_i),
	.in1_r(in11_r),
	.in1_i(in11_i),
	.twiddle_r(twiddle4_r),
	.twiddle_i(twiddle4_i),	
	.out0_r(out3_r),
	.out0_i(out3_i),
	.out1_r(out11_r),
	.out1_i(out11_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_5
(
	.clk(clk),
	.rst(rst),
	.in0_r(in4_r),
	.in0_i(in4_i),
	.in1_r(in12_r),
	.in1_i(in12_i),
	.twiddle_r(twiddle5_r),
	.twiddle_i(twiddle5_i),	
	.out0_r(out4_r),
	.out0_i(out4_i),
	.out1_r(out12_r),
	.out1_i(out12_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_6
(
	.clk(clk),
	.rst(rst),
	.in0_r(in5_r),
	.in0_i(in5_i),
	.in1_r(in13_r),
	.in1_i(in13_i),
	.twiddle_r(twiddle6_r),
	.twiddle_i(twiddle6_i),	
	.out0_r(out5_r),
	.out0_i(out5_i),
	.out1_r(out13_r),
	.out1_i(out13_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_7
(
	.clk(clk),
	.rst(rst),
	.in0_r(in6_r),
	.in0_i(in6_i),
	.in1_r(in14_r),
	.in1_i(in14_i),
	.twiddle_r(twiddle7_r),
	.twiddle_i(twiddle7_i),	
	.out0_r(out6_r),
	.out0_i(out6_i),
	.out1_r(out14_r),
	.out1_i(out14_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_8
(
	.clk(clk),
	.rst(rst),
	.in0_r(in7_r),
	.in0_i(in7_i),
	.in1_r(in15_r),
	.in1_i(in15_i),
	.twiddle_r(twiddle8_r),
	.twiddle_i(twiddle8_i),	
	.out0_r(out7_r),
	.out0_i(out7_i),
	.out1_r(out15_r),
	.out1_i(out15_i)
);


endmodule
