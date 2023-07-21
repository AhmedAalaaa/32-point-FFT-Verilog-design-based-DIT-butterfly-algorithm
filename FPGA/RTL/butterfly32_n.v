`timescale 1ns / 1ps
module butterfly_32 #
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
	input		[N-1:0]		in16_r,
	input		[N-1:0]		in16_i,
	input		[N-1:0]		in17_r,
	input		[N-1:0]		in17_i,
	input		[N-1:0]		in18_r,
	input		[N-1:0]		in18_i,
	input		[N-1:0]		in19_r,
	input		[N-1:0]		in19_i,
	input		[N-1:0]		in20_r,
	input		[N-1:0]		in20_i,
	input		[N-1:0]		in21_r,
	input		[N-1:0]		in21_i,
	input		[N-1:0]		in22_r,
	input		[N-1:0]		in22_i,
	input		[N-1:0]		in23_r,
	input		[N-1:0]		in23_i,
	input		[N-1:0]		in24_r,
	input		[N-1:0]		in24_i,
	input		[N-1:0]		in25_r,
	input		[N-1:0]		in25_i,
	input		[N-1:0]		in26_r,
	input		[N-1:0]		in26_i,
	input		[N-1:0]		in27_r,
	input		[N-1:0]		in27_i,
	input		[N-1:0]		in28_r,
	input		[N-1:0]		in28_i,
	input		[N-1:0]		in29_r,
	input		[N-1:0]		in29_i,
	input		[N-1:0]		in30_r,
	input		[N-1:0]		in30_i,	
	input		[N-1:0]		in31_r,
	input		[N-1:0]		in31_i,
															
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
			
	input		[N-1:0]		twiddle9_r,
	input		[N-1:0]		twiddle9_i,
	
	input		[N-1:0]		twiddle10_r,
	input		[N-1:0]		twiddle10_i,
			
	input		[N-1:0]		twiddle11_r,
	input		[N-1:0]		twiddle11_i,

	input		[N-1:0]		twiddle12_r,
	input		[N-1:0]		twiddle12_i,
			
	input		[N-1:0]		twiddle13_r,
	input		[N-1:0]		twiddle13_i,
	
	input		[N-1:0]		twiddle14_r,
	input		[N-1:0]		twiddle14_i,
			
	input		[N-1:0]		twiddle15_r,
	input		[N-1:0]		twiddle15_i,
				
	input		[N-1:0]		twiddle16_r,
	input		[N-1:0]		twiddle16_i,
					
	
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
	output		[N-1:0]		out15_i,
	output		[N-1:0]		out16_r,
	output		[N-1:0]		out16_i,	
	output		[N-1:0]		out17_r,
	output		[N-1:0]		out17_i,
	output		[N-1:0]		out18_r,
	output		[N-1:0]		out18_i,
	output		[N-1:0]		out19_r,
	output		[N-1:0]		out19_i,
	output		[N-1:0]		out20_r,
	output		[N-1:0]		out20_i,
	output		[N-1:0]		out21_r,
	output		[N-1:0]		out21_i,
	output		[N-1:0]		out22_r,
	output		[N-1:0]		out22_i,	
	output		[N-1:0]		out23_r,
	output		[N-1:0]		out23_i,
	output		[N-1:0]		out24_r,
	output		[N-1:0]		out24_i,
	output		[N-1:0]		out25_r,
	output		[N-1:0]		out25_i,
	output		[N-1:0]		out26_r,
	output		[N-1:0]		out26_i,
	output		[N-1:0]		out27_r,
	output		[N-1:0]		out27_i,
	output		[N-1:0]		out28_r,
	output		[N-1:0]		out28_i,	
	output		[N-1:0]		out29_r,
	output		[N-1:0]		out29_i,
	output		[N-1:0]		out30_r,
	output		[N-1:0]		out30_i,
	output		[N-1:0]		out31_r,
	output		[N-1:0]		out31_i
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_1
(
	.clk(clk),
	.rst(rst),
	.in0_r(in0_r),
	.in0_i(in0_i),
	.in1_r(in16_r),
	.in1_i(in16_i),
	.twiddle_r(twiddle1_r),
	.twiddle_i(twiddle1_i),	
	.out0_r(out0_r),
	.out0_i(out0_i),
	.out1_r(out16_r),
	.out1_i(out16_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_2
(
	.clk(clk),
	.rst(rst),
	.in0_r(in1_r),
	.in0_i(in1_i),
	.in1_r(in17_r),
	.in1_i(in17_i),
	.twiddle_r(twiddle2_r),
	.twiddle_i(twiddle2_i),	
	.out0_r(out1_r),
	.out0_i(out1_i),
	.out1_r(out17_r),
	.out1_i(out17_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_3
(
	.clk(clk),
	.rst(rst),
	.in0_r(in2_r),
	.in0_i(in2_i),
	.in1_r(in18_r),
	.in1_i(in18_i),
	.twiddle_r(twiddle3_r),
	.twiddle_i(twiddle3_i),	
	.out0_r(out2_r),
	.out0_i(out2_i),
	.out1_r(out18_r),
	.out1_i(out18_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_4
(
	.clk(clk),
	.rst(rst),
	.in0_r(in3_r),
	.in0_i(in3_i),
	.in1_r(in19_r),
	.in1_i(in19_i),
	.twiddle_r(twiddle4_r),
	.twiddle_i(twiddle4_i),	
	.out0_r(out3_r),
	.out0_i(out3_i),
	.out1_r(out19_r),
	.out1_i(out19_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_5
(
	.clk(clk),
	.rst(rst),
	.in0_r(in4_r),
	.in0_i(in4_i),
	.in1_r(in20_r),
	.in1_i(in20_i),
	.twiddle_r(twiddle5_r),
	.twiddle_i(twiddle5_i),	
	.out0_r(out4_r),
	.out0_i(out4_i),
	.out1_r(out20_r),
	.out1_i(out20_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_6
(
	.clk(clk),
	.rst(rst),
	.in0_r(in5_r),
	.in0_i(in5_i),
	.in1_r(in21_r),
	.in1_i(in21_i),
	.twiddle_r(twiddle6_r),
	.twiddle_i(twiddle6_i),	
	.out0_r(out5_r),
	.out0_i(out5_i),
	.out1_r(out21_r),
	.out1_i(out21_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_7
(
	.clk(clk),
	.rst(rst),
	.in0_r(in6_r),
	.in0_i(in6_i),
	.in1_r(in22_r),
	.in1_i(in22_i),
	.twiddle_r(twiddle7_r),
	.twiddle_i(twiddle7_i),	
	.out0_r(out6_r),
	.out0_i(out6_i),
	.out1_r(out22_r),
	.out1_i(out22_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_8
(
	.clk(clk),
	.rst(rst),
	.in0_r(in7_r),
	.in0_i(in7_i),
	.in1_r(in23_r),
	.in1_i(in23_i),
	.twiddle_r(twiddle8_r),
	.twiddle_i(twiddle8_i),	
	.out0_r(out7_r),
	.out0_i(out7_i),
	.out1_r(out23_r),
	.out1_i(out23_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_9
(
	.clk(clk),
	.rst(rst),
	.in0_r(in8_r),
	.in0_i(in8_i),
	.in1_r(in24_r),
	.in1_i(in24_i),
	.twiddle_r(twiddle9_r),
	.twiddle_i(twiddle9_i),	
	.out0_r(out8_r),
	.out0_i(out8_i),
	.out1_r(out24_r),
	.out1_i(out24_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_10
(
	.clk(clk),
	.rst(rst),
	.in0_r(in9_r),
	.in0_i(in9_i),
	.in1_r(in25_r),
	.in1_i(in25_i),
	.twiddle_r(twiddle10_r),
	.twiddle_i(twiddle10_i),	
	.out0_r(out9_r),
	.out0_i(out9_i),
	.out1_r(out25_r),
	.out1_i(out25_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_11
(
	.clk(clk),
	.rst(rst),
	.in0_r(in10_r),
	.in0_i(in10_i),
	.in1_r(in26_r),
	.in1_i(in26_i),
	.twiddle_r(twiddle11_r),
	.twiddle_i(twiddle11_i),	
	.out0_r(out10_r),
	.out0_i(out10_i),
	.out1_r(out26_r),
	.out1_i(out26_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_12
(
	.clk(clk),
	.rst(rst),
	.in0_r(in11_r),
	.in0_i(in11_i),
	.in1_r(in27_r),
	.in1_i(in27_i),
	.twiddle_r(twiddle12_r),
	.twiddle_i(twiddle12_i),	
	.out0_r(out11_r),
	.out0_i(out11_i),
	.out1_r(out27_r),
	.out1_i(out27_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_13
(
	.clk(clk),
	.rst(rst),
	.in0_r(in12_r),
	.in0_i(in12_i),
	.in1_r(in28_r),
	.in1_i(in28_i),
	.twiddle_r(twiddle13_r),
	.twiddle_i(twiddle13_i),	
	.out0_r(out12_r),
	.out0_i(out12_i),
	.out1_r(out28_r),
	.out1_i(out28_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_14
(
	.clk(clk),
	.rst(rst),
	.in0_r(in13_r),
	.in0_i(in13_i),
	.in1_r(in29_r),
	.in1_i(in29_i),
	.twiddle_r(twiddle14_r),
	.twiddle_i(twiddle14_i),	
	.out0_r(out13_r),
	.out0_i(out13_i),
	.out1_r(out29_r),
	.out1_i(out29_i)
);
butterfly2 #(.N(N), .Q(Q)) butterfly2_15
(
	.clk(clk),
	.rst(rst),
	.in0_r(in14_r),
	.in0_i(in14_i),
	.in1_r(in30_r),
	.in1_i(in30_i),
	.twiddle_r(twiddle15_r),
	.twiddle_i(twiddle15_i),	
	.out0_r(out14_r),
	.out0_i(out14_i),
	.out1_r(out30_r),
	.out1_i(out30_i)
);

butterfly2 #(.N(N), .Q(Q)) butterfly2_16
(
	.clk(clk),
	.rst(rst),
	.in0_r(in15_r),
	.in0_i(in15_i),
	.in1_r(in31_r),
	.in1_i(in31_i),
	.twiddle_r(twiddle16_r),
	.twiddle_i(twiddle16_i),	
	.out0_r(out15_r),
	.out0_i(out15_i),
	.out1_r(out31_r),
	.out1_i(out31_i)
);

	
	
endmodule
