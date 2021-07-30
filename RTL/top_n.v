`timescale 1ns / 1ps
module top #
(
	parameter DIVISOR = 5,
	parameter N = 16,
	parameter Q = 0
)
(
	input 					rst,
//	input					clk,
	input					clk2,
	
	input		[N-1:0]		in0_r,	
	input		[N-1:0]		in1_r,	
	input		[N-1:0]		in2_r,	
	input		[N-1:0]		in3_r,
	input		[N-1:0]		in4_r,
	input		[N-1:0]		in5_r,
	input		[N-1:0]		in6_r,
	input		[N-1:0]		in7_r,
	input		[N-1:0]		in8_r,
	input		[N-1:0]		in9_r,			
	input		[N-1:0]		in10_r,
	input		[N-1:0]		in11_r,
	input		[N-1:0]		in12_r,
	input		[N-1:0]		in13_r,
	input		[N-1:0]		in14_r,
	input		[N-1:0]		in15_r,
	input		[N-1:0]		in16_r,
	input		[N-1:0]		in17_r,
	input		[N-1:0]		in18_r,
	input		[N-1:0]		in19_r,
	input		[N-1:0]		in20_r,
	input		[N-1:0]		in21_r,
	input		[N-1:0]		in22_r,
	input		[N-1:0]		in23_r,
	input		[N-1:0]		in24_r,
	input		[N-1:0]		in25_r,
	input		[N-1:0]		in26_r,
	input		[N-1:0]		in27_r,
	input		[N-1:0]		in28_r,
	input		[N-1:0]		in29_r,
	input		[N-1:0]		in30_r,	
	input		[N-1:0]		in31_r,
	
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

	
//-------wires of butterfly_2------//
	wire		[N-1:0]		in0_butterfly_2;
	wire		[N-1:0]		in1_butterfly_2;
	wire		[N-1:0]		in2_butterfly_2;
	wire		[N-1:0]		in3_butterfly_2;
	wire		[N-1:0]		in4_butterfly_2;
	wire		[N-1:0]		in5_butterfly_2;
	wire		[N-1:0]		in6_butterfly_2;
	wire		[N-1:0]		in7_butterfly_2;
	wire		[N-1:0]		in8_butterfly_2;
	wire		[N-1:0]		in9_butterfly_2;
	wire		[N-1:0]		in10_butterfly_2;
	wire		[N-1:0]		in11_butterfly_2;
	wire		[N-1:0]		in12_butterfly_2;
	wire		[N-1:0]		in13_butterfly_2;
	wire		[N-1:0]		in14_butterfly_2;
	wire		[N-1:0]		in15_butterfly_2;
	wire		[N-1:0]		in16_butterfly_2;
	wire		[N-1:0]		in17_butterfly_2;
	wire		[N-1:0]		in18_butterfly_2;
	wire		[N-1:0]		in19_butterfly_2;
	wire		[N-1:0]		in20_butterfly_2;
	wire		[N-1:0]		in21_butterfly_2;
	wire		[N-1:0]		in22_butterfly_2;
	wire		[N-1:0]		in23_butterfly_2;
	wire		[N-1:0]		in24_butterfly_2;
	wire		[N-1:0]		in25_butterfly_2;
	wire		[N-1:0]		in26_butterfly_2;
	wire		[N-1:0]		in27_butterfly_2;	
	wire		[N-1:0]		in28_butterfly_2;
	wire		[N-1:0]		in29_butterfly_2;	
	wire		[N-1:0]		in30_butterfly_2;
	wire		[N-1:0]		in31_butterfly_2;																
//---------- wires of twiddle_rom_real & twiddle_rom_imag----------------//

	wire		[N-1:0]		twiddle0_r;
	wire		[N-1:0]		twiddle0_i;			
	wire		[N-1:0]		twiddle1_r;
	wire		[N-1:0]		twiddle1_i;	
	wire		[N-1:0]		twiddle2_r;
	wire		[N-1:0]		twiddle2_i;			
	wire		[N-1:0]		twiddle3_r;
	wire		[N-1:0]		twiddle3_i;
	wire		[N-1:0]		twiddle4_r;
	wire		[N-1:0]		twiddle4_i;			
	wire		[N-1:0]		twiddle5_r;
	wire		[N-1:0]		twiddle5_i;	
	wire		[N-1:0]		twiddle6_r;
	wire		[N-1:0]		twiddle6_i;			
	wire		[N-1:0]		twiddle7_r;
	wire		[N-1:0]		twiddle7_i;
	wire		[N-1:0]		twiddle8_r;
	wire		[N-1:0]		twiddle8_i;			
	wire		[N-1:0]		twiddle9_r;
	wire		[N-1:0]		twiddle9_i;	
	wire		[N-1:0]		twiddle10_r;
	wire		[N-1:0]		twiddle10_i;			
	wire		[N-1:0]		twiddle11_r;
	wire		[N-1:0]		twiddle11_i;
	wire		[N-1:0]		twiddle12_r;
	wire		[N-1:0]		twiddle12_i;			
	wire		[N-1:0]		twiddle13_r;
	wire		[N-1:0]		twiddle13_i;	
	wire		[N-1:0]		twiddle14_r;
	wire		[N-1:0]		twiddle14_i;			
	wire		[N-1:0]		twiddle15_r;
	wire		[N-1:0]		twiddle15_i;
// ----------instant of muxes of inputs of mac------//  
	wire       [N-1:0]      M_out1_r_mac1;
	wire       [N-1:0]      M_out1_i_mac1;
	wire       [N-1:0]      M_out2_r_mac1;
	wire       [N-1:0]      M_out2_i_mac1;
	
	wire       [N-1:0]      M_out1_r_mac2;
	wire       [N-1:0]      M_out1_i_mac2;
	wire       [N-1:0]      M_out2_r_mac2;
	wire       [N-1:0]      M_out2_i_mac2;
	
	wire       [N-1:0]      M_out1_r_mac3;
	wire       [N-1:0]      M_out1_i_mac3;
	wire       [N-1:0]      M_out2_r_mac3;
	wire       [N-1:0]      M_out2_i_mac3;
	
	wire       [N-1:0]      M_out1_r_mac4;
	wire       [N-1:0]      M_out1_i_mac4;
	wire       [N-1:0]      M_out2_r_mac4;
	wire       [N-1:0]      M_out2_i_mac4;
	
	wire       [N-1:0]      M_out1_r_mac5;
	wire       [N-1:0]      M_out1_i_mac5;
	wire       [N-1:0]      M_out2_r_mac5;
	wire       [N-1:0]      M_out2_i_mac5;
	
	wire       [N-1:0]      M_out1_r_mac6;
	wire       [N-1:0]      M_out1_i_mac6;
	wire       [N-1:0]      M_out2_r_mac6;
	wire       [N-1:0]      M_out2_i_mac6;
	
	wire       [N-1:0]      M_out1_r_mac7;
	wire       [N-1:0]      M_out1_i_mac7;
	wire       [N-1:0]      M_out2_r_mac7;
	wire       [N-1:0]      M_out2_i_mac7;
	
	wire       [N-1:0]      M_out1_r_mac8;
	wire       [N-1:0]      M_out1_i_mac8;
	wire       [N-1:0]      M_out2_r_mac8;
	wire       [N-1:0]      M_out2_i_mac8;
	
	wire       [N-1:0]      M_out1_r_mac9;
	wire       [N-1:0]      M_out1_i_mac9;
	wire       [N-1:0]      M_out2_r_mac9;
	wire       [N-1:0]      M_out2_i_mac9;

	wire       [N-1:0]      M_out1_r_mac10;
	wire       [N-1:0]      M_out1_i_mac10;
	wire       [N-1:0]      M_out2_r_mac10;
	wire       [N-1:0]      M_out2_i_mac10;
	
	wire       [N-1:0]      M_out1_r_mac11;
	wire       [N-1:0]      M_out1_i_mac11;
	wire       [N-1:0]      M_out2_r_mac11;
	wire       [N-1:0]      M_out2_i_mac11;
	
	wire       [N-1:0]      M_out1_r_mac12;
	wire       [N-1:0]      M_out1_i_mac12;
	wire       [N-1:0]      M_out2_r_mac12;
	wire       [N-1:0]      M_out2_i_mac12;
	
	wire       [N-1:0]      M_out1_r_mac13;
	wire       [N-1:0]      M_out1_i_mac13;
	wire       [N-1:0]      M_out2_r_mac13;
	wire       [N-1:0]      M_out2_i_mac13;
		
	wire       [N-1:0]      M_out1_r_mac14;
	wire       [N-1:0]      M_out1_i_mac14;
	wire       [N-1:0]      M_out2_r_mac14;
	wire       [N-1:0]      M_out2_i_mac14;
	
	wire       [N-1:0]      M_out1_r_mac15;
	wire       [N-1:0]      M_out1_i_mac15;
	wire       [N-1:0]      M_out2_r_mac15;
	wire       [N-1:0]      M_out2_i_mac15;
	
	wire       [N-1:0]      M_out1_r_mac16;
	wire       [N-1:0]      M_out1_i_mac16;
	wire       [N-1:0]      M_out2_r_mac16;
	wire       [N-1:0]      M_out2_i_mac16;
	
	wire       [2:0]		M_sel_mac; // from control unit
	
	 //-------instant of butterfly2------// 
    wire		[N-1:0]		out0_r_mac;
	wire		[N-1:0]		out0_i_mac;	
	wire		[N-1:0]		out1_r_mac;
	wire		[N-1:0]		out1_i_mac;
	wire		[N-1:0]		out2_r_mac;
	wire		[N-1:0]		out2_i_mac;
	wire		[N-1:0]		out3_r_mac;
	wire		[N-1:0]		out3_i_mac;
	wire		[N-1:0]		out4_r_mac;
	wire		[N-1:0]		out4_i_mac;	
	wire		[N-1:0]		out5_r_mac;
	wire		[N-1:0]		out5_i_mac;
	wire		[N-1:0]		out6_r_mac;
	wire		[N-1:0]		out6_i_mac;
	wire		[N-1:0]		out7_r_mac;
	wire		[N-1:0]		out7_i_mac;
	wire		[N-1:0]		out8_r_mac;
	wire		[N-1:0]		out8_i_mac;
	wire		[N-1:0]		out9_r_mac;
	wire		[N-1:0]		out9_i_mac;
	wire		[N-1:0]		out10_r_mac;
	wire		[N-1:0]		out10_i_mac;	
	wire		[N-1:0]		out11_r_mac;
	wire		[N-1:0]		out11_i_mac;
	wire		[N-1:0]		out12_r_mac;
	wire		[N-1:0]		out12_i_mac;
	wire		[N-1:0]		out13_r_mac;
	wire		[N-1:0]		out13_i_mac;
	wire		[N-1:0]		out14_r_mac;
	wire		[N-1:0]		out14_i_mac;
	wire		[N-1:0]		out15_r_mac;
	wire		[N-1:0]		out15_i_mac;
	wire		[N-1:0]		out16_r_mac;
	wire		[N-1:0]		out16_i_mac;	
	wire		[N-1:0]		out17_r_mac;
	wire		[N-1:0]		out17_i_mac;
	wire		[N-1:0]		out18_r_mac;
	wire		[N-1:0]		out18_i_mac;
	wire		[N-1:0]		out19_r_mac;
	wire		[N-1:0]		out19_i_mac;
	wire		[N-1:0]		out20_r_mac;
	wire		[N-1:0]		out20_i_mac;
	wire		[N-1:0]		out21_r_mac;
	wire		[N-1:0]		out21_i_mac;
	wire		[N-1:0]		out22_r_mac;
	wire		[N-1:0]		out22_i_mac;	
	wire		[N-1:0]		out23_r_mac;
	wire		[N-1:0]		out23_i_mac;
	wire		[N-1:0]		out24_r_mac;
	wire		[N-1:0]		out24_i_mac;
	wire		[N-1:0]		out25_r_mac;
	wire		[N-1:0]		out25_i_mac;
	wire		[N-1:0]		out26_r_mac;
	wire		[N-1:0]		out26_i_mac;
	wire		[N-1:0]		out27_r_mac;
	wire		[N-1:0]		out27_i_mac;
	wire		[N-1:0]		out28_r_mac;
	wire		[N-1:0]		out28_i_mac;	
	wire		[N-1:0]		out29_r_mac;
	wire		[N-1:0]		out29_i_mac;
	wire		[N-1:0]		out30_r_mac;
	wire		[N-1:0]		out30_i_mac;
	wire		[N-1:0]		out31_r_mac;
	wire		[N-1:0]		out31_i_mac;	
 //-------------instant of muxes of twiddle------//
 
 	wire	[N-1:0]	outMux1_twiddle_r;
  	wire	[N-1:0]	outMux1_twiddle_i;
  
 	wire	[N-1:0]	outMux2_twiddle_r;
  	wire	[N-1:0]	outMux2_twiddle_i;
  	
  	wire	[N-1:0]	outMux3_twiddle_r;
  	wire	[N-1:0]	outMux3_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux4_twiddle_r;
  	wire	[N-1:0]	outMux4_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux5_twiddle_r;
  	wire	[N-1:0]	outMux5_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux6_twiddle_r;
  	wire	[N-1:0]	outMux6_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux7_twiddle_r;
  	wire	[N-1:0]	outMux7_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux8_twiddle_r;
  	wire	[N-1:0]	outMux8_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux9_twiddle_r;
  	wire	[N-1:0]	outMux9_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux10_twiddle_r;
  	wire	[N-1:0]	outMux10_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux11_twiddle_r;
  	wire	[N-1:0]	outMux11_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux12_twiddle_r;
  	wire	[N-1:0]	outMux12_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux13_twiddle_r;
  	wire	[N-1:0]	outMux13_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux14_twiddle_r;
  	wire	[N-1:0]	outMux14_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux15_twiddle_r;
  	wire	[N-1:0]	outMux15_twiddle_i;
  	  	
  	wire	[N-1:0]	outMux16_twiddle_r;
  	wire	[N-1:0]	outMux16_twiddle_i;
  	
  	wire	[2:0] M_sel_mac_twiddle;// from control unit
  	wire	clk;	
  
//------clk divider--------//
Clk_div #  (.DIVISOR(DIVISOR)) clkk
(   .rst(rst),
	.clock_in(clk2),
	.clock_out(clk)
); 
		
		
//--------instant of control unit--------------//
control_unit # (.N(N)) cu
(
	.clk2(clk2),
	.rst(rst),
	.mux_sel1(M_sel_mac),
	.mux_sel2(M_sel_mac_twiddle)
);	
//--------instant of twiddle_rom_real-----------//
 twiddle_rom_real # (.N(N)) twiddle_rom_real_1
 (	
	.clk(clk),
	.rst(rst),
	.reg0_r(twiddle0_r),
	.reg1_r(twiddle1_r),
	.reg2_r(twiddle2_r),
	.reg3_r(twiddle3_r),
	.reg4_r(twiddle4_r),
	.reg5_r(twiddle5_r),
	.reg6_r(twiddle6_r),
	.reg7_r(twiddle7_r),
	.reg8_r(twiddle8_r),
	.reg9_r(twiddle9_r),
	.reg10_r(twiddle10_r),
	.reg11_r(twiddle11_r),
	.reg12_r(twiddle12_r),
	.reg13_r(twiddle13_r),
	.reg14_r(twiddle14_r),
	.reg15_r(twiddle15_r)
 );	
//----------------------------twiddle_rom_imag------------------//
 twiddle_rom_imag # (.N(N)) twiddle_rom_imag_1
 (	
	.clk(clk),
	.rst(rst),
	.reg0_i(twiddle0_i),
	.reg1_i(twiddle1_i),
	.reg2_i(twiddle2_i),
	.reg3_i(twiddle3_i),
	.reg4_i(twiddle4_i),
	.reg5_i(twiddle5_i),
	.reg6_i(twiddle6_i),
	.reg7_i(twiddle7_i),
	.reg8_i(twiddle8_i),
	.reg9_i(twiddle9_i),
	.reg10_i(twiddle10_i),
	.reg11_i(twiddle11_i),
	.reg12_i(twiddle12_i),
	.reg13_i(twiddle13_i),
	.reg14_i(twiddle14_i),
	.reg15_i(twiddle15_i)
 );
// ------------wires of piplin(input = input of 32 pont fft &output = to stage 1 (butterfly2))-------//	
//----------------instant of pipeling (reg1)-------//
  pipeline_stage # (.N(N)) reg1
  (
  	.clk(clk),
	.rst(rst),
	.in1_r(in0_r),
	.in1_i(16'b0),
	.in2_r(in1_r),
	.in2_i(0),
	.in3_r(in2_r),
	.in3_i(0),
	.in4_r(in3_r),
	.in4_i(0),
	.in5_r(in4_r),
	.in5_i(0),
	.in6_r(in5_r),
	.in6_i(0),
	.in7_r(in6_r),
	.in7_i(0),
	.in8_r(in7_r),
	.in8_i(0),
	.in9_r(in8_r),
	.in9_i(0),
	.in10_r(in9_r),
	.in10_i(0),
	.in11_r(in10_r),
	.in11_i(0),
	.in12_r(in11_r),
	.in12_i(0),
	.in13_r(in12_r),
	.in13_i(0),
	.in14_r(in13_r),
	.in14_i(0),
	.in15_r(in14_r),
	.in15_i(0),
	.in16_r(in15_r),
	.in16_i(0),
	.in17_r(in16_r),
	.in17_i(0),
	.in18_r(in17_r),
	.in18_i(0),
	.in19_r(in18_r),
	.in19_i(0),
	.in20_r(in19_r),
	.in20_i(0),
	.in21_r(in20_r),
	.in21_i(0),
	.in22_r(in21_r),
	.in22_i(0),
	.in23_r(in22_r),
	.in23_i(0),
	.in24_r(in23_r),
	.in24_i(0),
	.in25_r(in24_r),
	.in25_i(0),
	.in26_r(in25_r),
	.in26_i(0),
	.in27_r(in26_r),
	.in27_i(0),
	.in28_r(in27_r),
	.in28_i(0),
	.in29_r(in28_r),
	.in29_i(0),
	.in30_r(in29_r),
	.in30_i(0),
	.in31_r(in30_r),
	.in31_i(0),
	.in32_r(in31_r),
	.in32_i(0),
	
	.out1_r(in0_butterfly_2),
	.out1_i(),
	.out2_r(in1_butterfly_2),
	.out2_i(),
	.out3_r(in2_butterfly_2),
	.out3_i(),
	.out4_r(in3_butterfly_2),
	.out4_i(),
	.out5_r(in4_butterfly_2),
	.out5_i(),
	.out6_r(in5_butterfly_2),
	.out6_i(),
	.out7_r(in6_butterfly_2),
	.out7_i(),
	.out8_r(in7_butterfly_2),
	.out8_i(),
	.out9_r(in8_butterfly_2),
	.out9_i(),
	.out10_r(in9_butterfly_2),
	.out10_i(),
	.out11_r(in10_butterfly_2),
	.out11_i(),
	.out12_r(in11_butterfly_2),
	.out12_i(),
	.out13_r(in12_butterfly_2),
	.out13_i(),
	.out14_r(in13_butterfly_2),
	.out14_i(),
	.out15_r(in14_butterfly_2),
	.out15_i(),
	.out16_r(in15_butterfly_2),
	.out16_i(),
	.out17_r(in16_butterfly_2),
	.out17_i(),
	.out18_r(in17_butterfly_2),
	.out18_i(),
	.out19_r(in18_butterfly_2),
	.out19_i(),
	.out20_r(in19_butterfly_2),
	.out20_i(),
	.out21_r(in20_butterfly_2),
	.out21_i(),
	.out22_r(in21_butterfly_2),
	.out22_i(),
	.out23_r(in22_butterfly_2),
	.out23_i(),
	.out24_r(in23_butterfly_2),
	.out24_i(),
	.out25_r(in24_butterfly_2),
	.out25_i(),
	.out26_r(in25_butterfly_2),
	.out26_i(),
	.out27_r(in26_butterfly_2),
	.out27_i(),
	.out28_r(in27_butterfly_2),
	.out28_i(),
	.out29_r(in28_butterfly_2),
	.out29_i(),
	.out30_r(in29_butterfly_2),
	.out30_i(),
	.out31_r(in30_butterfly_2),
	.out31_i(),
	.out32_r(in31_butterfly_2),
	.out32_i()
  );
	
 mux # (.N(N)) M_in1_r_mac1
 (	
 	.a1(in0_butterfly_2),
 	.a2(out0_r_mac),
 	.a3(out0_r_mac),
 	.a4(out0_r_mac),
 	.a5(out0_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac1)
 );
   
 mux # (.N(N)) M_in1_i_mac1
 (	
 	.a1(0),
 	.a2(out0_i_mac),
 	.a3(out0_i_mac),
 	.a4(out0_i_mac),
 	.a5(out0_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac1)
 );
  mux # (.N(N)) M_in2_r_mac1
 (	
 	.a1(in16_butterfly_2),
 	.a2(out2_r_mac),
 	.a3(out4_r_mac),
 	.a4(out8_r_mac),
 	.a5(out16_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac1)
 );
   
 mux # (.N(N)) M_in2_i_mac1
 (	
 	.a1(0),
 	.a2(out2_i_mac),
 	.a3(out4_i_mac),
 	.a4(out8_i_mac),
 	.a5(out16_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac1)
 );
 
  mux # (.N(N)) M_in1_r_mac2
 (	
 	.a1(in8_butterfly_2),
 	.a2(out1_r_mac),
 	.a3(out2_r_mac),
 	.a4(out2_r_mac),
 	.a5(out2_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac2)
 );
   
 mux # (.N(N)) M_in1_i_mac2
 (	
 	.a1(0),
 	.a2(out1_i_mac),
 	.a3(out2_i_mac),
 	.a4(out2_i_mac),
 	.a5(out2_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac2)
 );
  mux # (.N(N)) M_in2_r_mac2
 (	
 	.a1(in24_butterfly_2),
 	.a2(out3_r_mac),
 	.a3(out6_r_mac),
 	.a4(out10_r_mac),
 	.a5(out18_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac2)
 );
   
 mux # (.N(N)) M_in2_i_mac2
 (	
 	.a1(0),
 	.a2(out3_i_mac),
 	.a3(out6_i_mac),
 	.a4(out10_i_mac),
 	.a5(out18_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac2)
 );
  mux # (.N(N)) M_in1_r_mac3
 (	
 	.a1(in4_butterfly_2),
 	.a2(out4_r_mac),
 	.a3(out1_r_mac),
 	.a4(out4_r_mac),
 	.a5(out4_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac3)
 );
   
 mux # (.N(N)) M_in1_i_mac3
 (	
 	.a1(0),
 	.a2(out4_i_mac),
 	.a3(out1_i_mac),
 	.a4(out4_i_mac),
 	.a5(out4_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac3)
 );
  mux # (.N(N)) M_in2_r_mac3
 (	
 	.a1(in20_butterfly_2),
 	.a2(out6_r_mac),
 	.a3(out5_r_mac),
 	.a4(out12_r_mac),
 	.a5(out20_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac3)
 );
   
 mux # (.N(N)) M_in2_i_mac3
 (	
 	.a1(0),
 	.a2(out6_i_mac),
 	.a3(out5_i_mac),
 	.a4(out12_i_mac),
 	.a5(out20_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac3)
 );
  mux # (.N(N)) M_in1_r_mac4
 (	
 	.a1(in12_butterfly_2),
 	.a2(out5_r_mac),
 	.a3(out3_r_mac),
 	.a4(out6_r_mac),
 	.a5(out6_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac4)
 );
   
 mux # (.N(N)) M_in1_i_mac4
 (	
 	.a1(0),
 	.a2(out5_i_mac),
 	.a3(out3_i_mac),
 	.a4(out6_i_mac),
 	.a5(out6_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac4)
 );
  mux # (.N(N)) M_in2_r_mac4
 (	
 	.a1(in28_butterfly_2),
 	.a2(out7_r_mac),
 	.a3(out7_r_mac),
 	.a4(out14_r_mac),
 	.a5(out22_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac4)
 );
   
 mux # (.N(N)) M_in2_i_mac4
 (	
 	.a1(0),
 	.a2(out7_i_mac),
 	.a3(out7_i_mac),
 	.a4(out14_i_mac),
 	.a5(out22_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac4)
 );
  mux # (.N(N)) M_in1_r_mac5
 (	
 	.a1(in2_butterfly_2),
 	.a2(out8_r_mac),
 	.a3(out8_r_mac),
 	.a4(out1_r_mac),
 	.a5(out8_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac5)
 );
   
 mux # (.N(N)) M_in1_i_mac5
 (	
 	.a1(0),
 	.a2(out8_i_mac),
 	.a3(out8_i_mac),
 	.a4(out1_i_mac),
 	.a5(out8_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac5)
 );
  mux # (.N(N)) M_in2_r_mac5
 (	
 	.a1(in18_butterfly_2),
 	.a2(out10_r_mac),
 	.a3(out12_r_mac),
 	.a4(out9_r_mac),
 	.a5(out24_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac5)
 );
   
 mux # (.N(N)) M_in2_i_mac5
 (	
 	.a1(0),
 	.a2(out10_i_mac),
 	.a3(out12_i_mac),
 	.a4(out9_i_mac),
 	.a5(out24_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac5)
 );
  mux # (.N(N)) M_in1_r_mac6
 (	
 	.a1(in10_butterfly_2),
 	.a2(out9_r_mac),
 	.a3(out10_r_mac),
 	.a4(out3_r_mac),
 	.a5(out10_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac6)
 );
   
 mux # (.N(N)) M_in1_i_mac6
 (	
 	.a1(0),
 	.a2(out9_i_mac),
 	.a3(out10_i_mac),
 	.a4(out3_i_mac),
 	.a5(out10_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac6)
 );
  mux # (.N(N)) M_in2_r_mac6
 (	
 	.a1(in26_butterfly_2),
 	.a2(out11_r_mac),
 	.a3(out14_r_mac),
 	.a4(out11_r_mac),
 	.a5(out26_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac6)
 );
   
 mux # (.N(N)) M_in2_i_mac6
 (	
 	.a1(0),
 	.a2(out11_i_mac),
 	.a3(out14_i_mac),
 	.a4(out11_i_mac),
 	.a5(out26_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac6)
 );
  mux # (.N(N)) M_in1_r_mac7
 (	
 	.a1(in6_butterfly_2),
 	.a2(out12_r_mac),
 	.a3(out9_r_mac),
 	.a4(out5_r_mac),
 	.a5(out12_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac7)
 );
   
 mux # (.N(N)) M_in1_i_mac7
 (	
 	.a1(0),
 	.a2(out12_i_mac),
 	.a3(out9_i_mac),
 	.a4(out5_i_mac),
 	.a5(out12_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac7)
 );
  mux # (.N(N)) M_in2_r_mac7
 (	
 	.a1(in22_butterfly_2),
 	.a2(out14_r_mac),
 	.a3(out13_r_mac),
 	.a4(out13_r_mac),
 	.a5(out28_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac7)
 );
   
 mux # (.N(N)) M_in2_i_mac7
 (	
 	.a1(0),
 	.a2(out14_i_mac),
 	.a3(out13_i_mac),
 	.a4(out13_i_mac),
 	.a5(out28_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac7)
 );
  mux # (.N(N)) M_in1_r_mac8
 (	
 	.a1(in14_butterfly_2),
 	.a2(out13_r_mac),
 	.a3(out11_r_mac),
 	.a4(out7_r_mac),
 	.a5(out14_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac8)
 );
   
 mux # (.N(N)) M_in1_i_mac8
 (	
 	.a1(0),
 	.a2(out13_i_mac),
 	.a3(out11_i_mac),
 	.a4(out7_i_mac),
 	.a5(out14_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac8)
 );
  mux # (.N(N)) M_in2_r_mac8
 (	
 	.a1(in30_butterfly_2),
 	.a2(out15_r_mac),
 	.a3(out15_r_mac),
 	.a4(out15_r_mac),
 	.a5(out30_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac8)
 );
   
 mux # (.N(N)) M_in2_i_mac8
 (	
 	.a1(0),
 	.a2(out15_i_mac),
 	.a3(out15_i_mac),
 	.a4(out15_i_mac),
 	.a5(out30_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac8)
 );
  mux # (.N(N)) M_in1_r_mac9
 (	
 	.a1(in1_butterfly_2),
 	.a2(out16_r_mac),
 	.a3(out16_r_mac),
 	.a4(out16_r_mac),
 	.a5(out1_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac9)
 );
   
 mux # (.N(N)) M_in1_i_mac9
 (	
 	.a1(0),
 	.a2(out16_i_mac),
 	.a3(out16_i_mac),
 	.a4(out16_i_mac),
 	.a5(out1_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac9)
 );
  mux # (.N(N)) M_in2_r_mac9
 (	
 	.a1(in17_butterfly_2),
 	.a2(out18_r_mac),
 	.a3(out20_r_mac),
 	.a4(out24_r_mac),
 	.a5(out17_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac9)
 );
   
 mux # (.N(N)) M_in2_i_mac9
 (	
 	.a1(0),
 	.a2(out18_i_mac),
 	.a3(out20_i_mac),
 	.a4(out24_i_mac),
 	.a5(out17_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac9)
 );
  mux # (.N(N)) M_in1_r_mac10
 (	
 	.a1(in9_butterfly_2),
 	.a2(out17_r_mac),
 	.a3(out18_r_mac),
 	.a4(out18_r_mac),
 	.a5(out3_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac10)
 );
   
 mux # (.N(N)) M_in1_i_mac10
 (	
 	.a1(0),
 	.a2(out17_i_mac),
 	.a3(out18_i_mac),
 	.a4(out18_i_mac),
 	.a5(out3_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac10)
 );
  mux # (.N(N)) M_in2_r_mac10
 (	
 	.a1(in25_butterfly_2),
 	.a2(out19_r_mac),
 	.a3(out22_r_mac),
 	.a4(out26_r_mac),
 	.a5(out19_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac10)
 );
   
 mux # (.N(N)) M_in2_i_mac10
 (	
 	.a1(0),
 	.a2(out19_i_mac),
 	.a3(out22_i_mac),
 	.a4(out26_i_mac),
 	.a5(out19_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac10)
 );
  mux # (.N(N)) M_in1_r_mac11
 (	
 	.a1(in5_butterfly_2),
 	.a2(out20_r_mac),
 	.a3(out17_r_mac),
 	.a4(out20_r_mac),
 	.a5(out5_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac11)
 );
   
 mux # (.N(N)) M_in1_i_mac11
 (	
 	.a1(0),
 	.a2(out20_i_mac),
 	.a3(out17_i_mac),
 	.a4(out20_i_mac),
 	.a5(out5_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac11)
 );
  mux # (.N(N)) M_in2_r_mac11
 (	
 	.a1(in21_butterfly_2),
 	.a2(out22_r_mac),
 	.a3(out21_r_mac),
 	.a4(out28_r_mac),
 	.a5(out21_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac11)
 );
   
 mux # (.N(N)) M_in2_i_mac11
 (	
 	.a1(0),
 	.a2(out22_i_mac),
 	.a3(out21_i_mac),
 	.a4(out28_i_mac),
 	.a5(out21_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac11)
 );
  mux # (.N(N)) M_in1_r_mac12
 (	
 	.a1(in13_butterfly_2),
 	.a2(out21_r_mac),
 	.a3(out19_r_mac),
 	.a4(out22_r_mac),
 	.a5(out7_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac12)
 );
   
 mux # (.N(N)) M_in1_i_mac12
 (	
 	.a1(0),
 	.a2(out21_i_mac),
 	.a3(out19_i_mac),
 	.a4(out22_i_mac),
 	.a5(out7_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac12)
 );
  mux # (.N(N)) M_in2_r_mac12
 (	
 	.a1(in29_butterfly_2),
 	.a2(out23_r_mac),
 	.a3(out23_r_mac),
 	.a4(out30_r_mac),
 	.a5(out23_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac12)
 );
   
 mux # (.N(N)) M_in2_i_mac12
 (	
 	.a1(0),
 	.a2(out23_i_mac),
 	.a3(out23_i_mac),
 	.a4(out30_i_mac),
 	.a5(out23_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac12)
 );
  mux # (.N(N)) M_in1_r_mac13
 (	
 	.a1(in3_butterfly_2),
 	.a2(out24_r_mac),
 	.a3(out24_r_mac),
 	.a4(out17_r_mac),
 	.a5(out9_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac13)
 );
   
 mux # (.N(N)) M_in1_i_mac13
 (	
 	.a1(0),
 	.a2(out24_i_mac),
 	.a3(out24_i_mac),
 	.a4(out17_i_mac),
 	.a5(out9_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac13)
 );
  mux # (.N(N)) M_in2_r_mac13
 (	
 	.a1(in19_butterfly_2),
 	.a2(out26_r_mac),
 	.a3(out28_r_mac),
 	.a4(out25_r_mac),
 	.a5(out25_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac13)
 );
   
 mux # (.N(N)) M_in2_i_mac13
 (	
 	.a1(0),
 	.a2(out26_i_mac),
 	.a3(out28_i_mac),
 	.a4(out25_i_mac),
 	.a5(out25_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac13)
 );
  mux # (.N(N)) M_in1_r_mac14
 (	
 	.a1(in11_butterfly_2),
 	.a2(out25_r_mac),
 	.a3(out26_r_mac),
 	.a4(out19_r_mac),
 	.a5(out11_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac14)
 );
   
 mux # (.N(N)) M_in1_i_mac14
 (	
 	.a1(0),
 	.a2(out25_i_mac),
 	.a3(out26_i_mac),
 	.a4(out19_i_mac),
 	.a5(out11_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac14)
 );
  mux # (.N(N)) M_in2_r_mac14
 (	
 	.a1(in27_butterfly_2),
 	.a2(out27_r_mac),
 	.a3(out30_r_mac),
 	.a4(out27_r_mac),
 	.a5(out27_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac14)
 );
   
 mux # (.N(N)) M_in2_i_mac14
 (	
 	.a1(0),
 	.a2(out27_i_mac),
 	.a3(out30_i_mac),
 	.a4(out27_i_mac),
 	.a5(out27_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac14)
 );
  mux # (.N(N)) M_in1_r_mac15
 (	
 	.a1(in7_butterfly_2),
 	.a2(out28_r_mac),
 	.a3(out25_r_mac),
 	.a4(out21_r_mac),
 	.a5(out13_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac15)
 );
   
 mux # (.N(N)) M_in1_i_mac15
 (	
 	.a1(0),
 	.a2(out28_i_mac),
 	.a3(out25_i_mac),
 	.a4(out21_i_mac),
 	.a5(out13_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac15)
 );
  mux # (.N(N)) M_in2_r_mac15
 (	
 	.a1(in23_butterfly_2),
 	.a2(out30_r_mac),
 	.a3(out29_r_mac),
 	.a4(out29_r_mac),
 	.a5(out29_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac15)
 );
   
 mux # (.N(N)) M_in2_i_mac15
 (	
 	.a1(0),
 	.a2(out30_i_mac),
 	.a3(out29_i_mac),
 	.a4(out29_i_mac),
 	.a5(out29_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac15)
 );
  mux # (.N(N)) M_in1_r_mac16
 (	
 	.a1(in15_butterfly_2),
 	.a2(out29_r_mac),
 	.a3(out27_r_mac),
 	.a4(out23_r_mac),
 	.a5(out15_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_r_mac16)
 );
   
 mux # (.N(N)) M_in1_i_mac16
 (	
 	.a1(0),
 	.a2(out29_i_mac),
 	.a3(out27_i_mac),
 	.a4(out23_i_mac),
 	.a5(out15_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out1_i_mac16)
 );
  mux # (.N(N)) M_in2_r_mac16
 (	
 	.a1(in31_butterfly_2),
 	.a2(out31_r_mac),
 	.a3(out31_r_mac),
 	.a4(out31_r_mac),
 	.a5(out31_r_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_r_mac16)
 );
   
 mux # (.N(N)) M_in2_i_mac16
 (	
 	.a1(0),
 	.a2(out31_i_mac),
 	.a3(out31_i_mac),
 	.a4(out31_i_mac),
 	.a5(out31_i_mac),
 	.sel(M_sel_mac),
 	.c(M_out2_i_mac16)
 );  	
  mux # (.N(N)) M_r_mac1
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle0_r),
 	.a4(twiddle0_r),
 	.a5(twiddle0_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux1_twiddle_r)
 );
   mux # (.N(N)) M_i_mac1
 (	
 	.a1(0),
 	.a2(0),
 	.a3(0),
 	.a4(0),
 	.a5(0),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux1_twiddle_i)
 );
   
  mux # (.N(N)) M_r_mac2
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle4_r),
 	.a4(twiddle2_r),
 	.a5(twiddle1_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux2_twiddle_r)
 );
   mux # (.N(N)) M_i_mac2
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle4_i),
 	.a4(twiddle2_i),
 	.a5(twiddle1_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux2_twiddle_i)
 );
  mux # (.N(N)) M_r_mac3
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle8_r),
 	.a4(twiddle4_r),
 	.a5(twiddle2_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux3_twiddle_r)
 );
   mux # (.N(N)) M_i_mac3
 (	
 	.a1(0),
 	.a2(0),
 	.a3(twiddle8_i),
 	.a4(twiddle4_i),
 	.a5(twiddle2_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux3_twiddle_i)
 );
  mux # (.N(N)) M_r_mac4
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle12_r),
 	.a4(twiddle6_r),
 	.a5(twiddle3_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux4_twiddle_r)
 );
   mux # (.N(N)) M_i_mac4
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle12_i),
 	.a4(twiddle6_i),
 	.a5(twiddle3_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux4_twiddle_i)
 );
  mux # (.N(N)) M_r_mac5
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle0_r),
 	.a4(twiddle8_r),
 	.a5(twiddle4_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux5_twiddle_r)
 );
   mux # (.N(N)) M_i_mac5
 (	
 	.a1(0),
 	.a2(0),
 	.a3(0),
 	.a4(twiddle8_i),
 	.a5(twiddle4_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux5_twiddle_i)
 );
  mux # (.N(N)) M_r_mac6
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle4_r),
 	.a4(twiddle10_r),
 	.a5(twiddle5_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux6_twiddle_r)
 );
   mux # (.N(N)) M_i_mac6
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle4_i),
 	.a4(twiddle10_i),
 	.a5(twiddle5_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux6_twiddle_i)
 );
  mux # (.N(N)) M_r_mac7
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle8_r),
 	.a4(twiddle12_r),
 	.a5(twiddle6_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux7_twiddle_r)
 );
   mux # (.N(N)) M_i_mac7
 (	
 	.a1(0),
 	.a2(0),
 	.a3(twiddle8_i),
 	.a4(twiddle12_i),
 	.a5(twiddle6_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux7_twiddle_i)
 );
  mux # (.N(N)) M_r_mac8
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle12_r),
 	.a4(twiddle14_r),
 	.a5(twiddle7_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux8_twiddle_r)
 );
   mux # (.N(N)) M_i_mac8
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle12_i),
 	.a4(twiddle14_i),
 	.a5(twiddle7_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux8_twiddle_i)
 );
  mux # (.N(N)) M_r_mac9
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle0_r),
 	.a4(twiddle0_r),
 	.a5(twiddle8_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux9_twiddle_r)
 );
   mux # (.N(N)) M_i_mac9
 (	
 	.a1(0),
 	.a2(0),
 	.a3(0),
 	.a4(0),
 	.a5(twiddle8_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux9_twiddle_i)
 );
  mux # (.N(N)) M_r_mac10
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle4_r),
 	.a4(twiddle2_r),
 	.a5(twiddle9_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux10_twiddle_r)
 );
   mux # (.N(N)) M_i_mac10
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle4_i),
 	.a4(twiddle2_i),
 	.a5(twiddle9_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux10_twiddle_i)
 );
  mux # (.N(N)) M_r_mac11
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle8_r),
 	.a4(twiddle4_r),
 	.a5(twiddle10_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux11_twiddle_r)
 );
   mux # (.N(N)) M_i_mac11
 (	
 	.a1(0),
 	.a2(0),
 	.a3(twiddle8_i),
 	.a4(twiddle4_i),
 	.a5(twiddle10_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux11_twiddle_i)
 );
  mux # (.N(N)) M_r_mac12
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle12_r),
 	.a4(twiddle6_r),
 	.a5(twiddle11_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux12_twiddle_r)
 );
   mux # (.N(N)) M_i_mac12
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle12_i),
 	.a4(twiddle6_i),
 	.a5(twiddle11_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux12_twiddle_i)
 );
  mux # (.N(N)) M_r_mac13
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle0_r),
 	.a4(twiddle8_r),
 	.a5(twiddle12_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux13_twiddle_r)
 );
   mux # (.N(N)) M_i_mac13
 (	
 	.a1(0),
 	.a2(0),
 	.a3(0),
 	.a4(twiddle8_i),
 	.a5(twiddle12_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux13_twiddle_i)
 );
   
  mux # (.N(N)) M_r_mac14
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle4_r),
 	.a4(twiddle10_r),
 	.a5(twiddle13_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux14_twiddle_r)
 );
   mux # (.N(N)) M_i_mac14
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle4_i),
 	.a4(twiddle10_i),
 	.a5(twiddle13_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux14_twiddle_i)
 );
  mux # (.N(N)) M_r_mac15
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle0_r),
 	.a3(twiddle8_r),
 	.a4(twiddle12_r),
 	.a5(twiddle14_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux15_twiddle_r)
 );
   mux # (.N(N)) M_i_mac15
 (	
 	.a1(0),
 	.a2(0),
 	.a3(twiddle8_i),
 	.a4(twiddle12_i),
 	.a5(twiddle14_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux15_twiddle_i)
 );
 mux # (.N(N)) M_r_mac16
 (	
 	.a1(twiddle0_r),
 	.a2(twiddle8_r),
 	.a3(twiddle12_r),
 	.a4(twiddle14_r),
 	.a5(twiddle15_r),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux16_twiddle_r)
 );
   mux # (.N(N)) M_i_mac16
 (	
 	.a1(0),
 	.a2(twiddle8_i),
 	.a3(twiddle12_i),
 	.a4(twiddle14_i),
 	.a5(twiddle15_i),
 	.sel(M_sel_mac_twiddle),
 	.c(outMux16_twiddle_i)
 );
//-------------------instanst of mac----------//
 butterfly2 # (.N(N), .Q(Q)) b2_1 
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac1),  // output mux
 	.in0_i(M_out1_i_mac1), 	
	.in1_r(M_out2_r_mac1), 
	.in1_i(M_out2_i_mac1), 
	.twiddle_r(outMux1_twiddle_r),
	.twiddle_i(outMux1_twiddle_i),
	.out0_r(out0_r_mac),  //input muxs
	.out0_i(out0_i_mac), 
	.out1_r(out1_r_mac), 
	.out1_i(out1_i_mac)	 
 	
 ); 
 butterfly2 # (.N(N), .Q(Q)) b2_2
 (
 	.clk(clk2),
	.rst(rst),
  	.in0_r(M_out1_r_mac2),
 	.in0_i(M_out1_i_mac2),
	.in1_r(M_out2_r_mac2),
	.in1_i(M_out2_i_mac2),
	.twiddle_r(outMux2_twiddle_r),
	.twiddle_i(outMux2_twiddle_i),
	.out0_r(out2_r_mac),
	.out0_i(out2_i_mac),
	.out1_r(out3_r_mac),
	.out1_i(out3_i_mac)
 ); 
  butterfly2 # (.N(N), .Q(Q)) b2_3
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac3),
 	.in0_i(M_out1_i_mac3),
	.in1_r(M_out2_r_mac3),
	.in1_i(M_out2_i_mac3),
	.twiddle_r(outMux3_twiddle_r),
	.twiddle_i(outMux3_twiddle_i),
	.out0_r(out4_r_mac),
	.out0_i(out4_i_mac),
	.out1_r(out5_r_mac),
	.out1_i(out5_i_mac) 
); 
  butterfly2 # (.N(N), .Q(Q)) b2_4
 (
 	 .clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac4),
 	.in0_i(M_out1_i_mac4),
	.in1_r(M_out2_r_mac4),
	.in1_i(M_out2_i_mac4),
	.twiddle_r(outMux4_twiddle_r),
	.twiddle_i(outMux4_twiddle_i),
	.out0_r(out6_r_mac),
	.out0_i(out6_i_mac),
	.out1_r(out7_r_mac),
	.out1_i(out7_i_mac)
 ); 
  butterfly2 # (.N(N), .Q(Q)) b2_5
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac5),
 	.in0_i(M_out1_i_mac5),
	.in1_r(M_out2_r_mac5),
	.in1_i(M_out2_i_mac5),
	.twiddle_r(outMux5_twiddle_r),
	.twiddle_i(outMux5_twiddle_i),
	.out0_r(out8_r_mac),
	.out0_i(out8_i_mac),
	.out1_r(out9_r_mac),
	.out1_i(out9_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_6
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac6),
 	.in0_i(M_out1_i_mac6),
	.in1_r(M_out2_r_mac6),
	.in1_i(M_out2_i_mac6),
	.twiddle_r(outMux6_twiddle_r),
	.twiddle_i(outMux6_twiddle_i),
	.out0_r(out10_r_mac),
	.out0_i(out10_i_mac),
	.out1_r(out11_r_mac),
	.out1_i(out11_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_7
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac7),
 	.in0_i(M_out1_i_mac7),
	.in1_r(M_out2_r_mac7),
	.in1_i(M_out2_i_mac7),
	.twiddle_r(outMux7_twiddle_r),
	.twiddle_i(outMux7_twiddle_i),
	.out0_r(out12_r_mac),
	.out0_i(out12_i_mac),
	.out1_r(out13_r_mac),
	.out1_i(out13_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_8
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac8),
 	.in0_i(M_out1_i_mac8),
	.in1_r(M_out2_r_mac8),
	.in1_i(M_out2_i_mac8),
	.twiddle_r(outMux8_twiddle_r),
	.twiddle_i(outMux8_twiddle_i),
	.out0_r(out14_r_mac),
	.out0_i(out14_i_mac),
	.out1_r(out15_r_mac),
	.out1_i(out15_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_9
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac9),
 	.in0_i(M_out1_i_mac9),
	.in1_r(M_out2_r_mac9),
	.in1_i(M_out2_i_mac9),
	.twiddle_r(outMux9_twiddle_r),
	.twiddle_i(outMux9_twiddle_i),
	.out0_r(out16_r_mac),
	.out0_i(out16_i_mac),
	.out1_r(out17_r_mac),
	.out1_i(out17_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_10
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac10),
 	.in0_i(M_out1_i_mac10),
	.in1_r(M_out2_r_mac10),
	.in1_i(M_out2_i_mac10),
	.twiddle_r(outMux10_twiddle_r),
	.twiddle_i(outMux10_twiddle_i),
	.out0_r(out18_r_mac),
	.out0_i(out18_i_mac),
	.out1_r(out19_r_mac),
	.out1_i(out19_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_11
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac11),
 	.in0_i(M_out1_i_mac11),
	.in1_r(M_out2_r_mac11),
	.in1_i(M_out2_i_mac11),
	.twiddle_r(outMux11_twiddle_r),
	.twiddle_i(outMux11_twiddle_i),
	.out0_r(out20_r_mac),
	.out0_i(out20_i_mac),
	.out1_r(out21_r_mac),
	.out1_i(out21_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_12
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac12),
 	.in0_i(M_out1_i_mac12),
	.in1_r(M_out2_r_mac12),
	.in1_i(M_out2_i_mac12),
	.twiddle_r(outMux12_twiddle_r),
	.twiddle_i(outMux12_twiddle_i),
	.out0_r(out22_r_mac),
	.out0_i(out22_i_mac),
	.out1_r(out23_r_mac),
	.out1_i(out23_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_13
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac13),
 	.in0_i(M_out1_i_mac13),
	.in1_r(M_out2_r_mac13),
	.in1_i(M_out2_i_mac13),
	.twiddle_r(outMux13_twiddle_r),
	.twiddle_i(outMux13_twiddle_i),
	.out0_r(out24_r_mac),
	.out0_i(out24_i_mac),
	.out1_r(out25_r_mac),
	.out1_i(out25_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_14
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac14),
 	.in0_i(M_out1_i_mac14),
	.in1_r(M_out2_r_mac14),
	.in1_i(M_out2_i_mac14),
	.twiddle_r(outMux14_twiddle_r),
	.twiddle_i(outMux14_twiddle_i),
	.out0_r(out26_r_mac),
	.out0_i(out26_i_mac),
	.out1_r(out27_r_mac),
	.out1_i(out27_i_mac)	
 ); 
   butterfly2 # (.N(N), .Q(Q)) b2_15
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac15),
 	.in0_i(M_out1_i_mac15),
	.in1_r(M_out2_r_mac15),
	.in1_i(M_out2_i_mac15),
	.twiddle_r(outMux15_twiddle_r),
	.twiddle_i(outMux15_twiddle_i),
	.out0_r(out28_r_mac),
	.out0_i(out28_i_mac),
	.out1_r(out29_r_mac),
	.out1_i(out29_i_mac)	
 );  
   butterfly2 # (.N(N), .Q(Q)) b2_16
 (
 	.clk(clk2),
	.rst(rst),
 	.in0_r(M_out1_r_mac16),
 	.in0_i(M_out1_i_mac16),
	.in1_r(M_out2_r_mac16),
	.in1_i(M_out2_i_mac16),
	.twiddle_r(outMux16_twiddle_r),
	.twiddle_i(outMux16_twiddle_i),
	.out0_r(out30_r_mac),
	.out0_i(out30_i_mac),
	.out1_r(out31_r_mac),
	.out1_i(out31_i_mac)	
 );  
   
 // ------------wires of piplin(input = output of stage 5 & output = output of 32 pont fft)-------//
  //--------instant of pipeling (reg6) -------
  pipeline_stage # (.N(N)) reg6
  (
  	.clk(clk),
	.rst(rst),
	.in1_r(out0_r_mac),
	.in1_i(out0_i_mac),
	.in2_r(out2_r_mac),
	.in2_i(out2_i_mac),
	.in3_r(out4_r_mac),
	.in3_i(out4_i_mac),
	.in4_r(out6_r_mac),
	.in4_i(out6_i_mac),
	.in5_r(out8_r_mac),
	.in5_i(out8_i_mac),
	.in6_r(out10_r_mac),
	.in6_i(out10_i_mac),
	.in7_r(out12_r_mac),
	.in7_i(out12_i_mac),
	.in8_r(out14_r_mac),
	.in8_i(out14_i_mac),
	.in9_r(out16_r_mac),
	.in9_i(out16_i_mac),
	.in10_r(out18_r_mac),
	.in10_i(out18_i_mac),
	.in11_r(out20_r_mac),
	.in11_i(out20_i_mac),
	.in12_r(out22_r_mac),
	.in12_i(out22_i_mac),
	.in13_r(out24_r_mac),
	.in13_i(out24_i_mac),
	.in14_r(out26_r_mac),
	.in14_i(out26_i_mac),
	.in15_r(out28_r_mac),
	.in15_i(out28_i_mac),
	.in16_r(out30_r_mac),
	.in16_i(out30_i_mac),
	.in17_r(out1_r_mac),
	.in17_i(out1_i_mac),
	.in18_r(out3_r_mac),
	.in18_i(out3_i_mac),
	.in19_r(out5_r_mac),
	.in19_i(out5_i_mac),
	.in20_r(out7_r_mac),
	.in20_i(out7_i_mac),
	.in21_r(out9_r_mac),
	.in21_i(out9_i_mac),
	.in22_r(out11_r_mac),
	.in22_i(out11_i_mac),
	.in23_r(out13_r_mac),
	.in23_i(out13_i_mac),
	.in24_r(out15_r_mac),
	.in24_i(out15_i_mac),
	.in25_r(out17_r_mac),
	.in25_i(out17_i_mac),
	.in26_r(out19_r_mac),
	.in26_i(out19_i_mac),
	.in27_r(out21_r_mac),
	.in27_i(out21_i_mac),
	.in28_r(out23_r_mac),
	.in28_i(out23_i_mac),
	.in29_r(out25_r_mac),
	.in29_i(out25_i_mac),
	.in30_r(out27_r_mac),
	.in30_i(out27_i_mac),
	.in31_r(out29_r_mac),
	.in31_i(out29_i_mac),
	.in32_r(out31_r_mac),
	.in32_i(out31_i_mac),
		
	.out1_r(out0_r),
	.out1_i(out0_i),
	.out2_r(out1_r),
	
	.out2_i(out1_i),
	.out3_r(out2_r),
	.out3_i(out2_i),
	.out4_r(out3_r),
	.out4_i(out3_i),
	.out5_r(out4_r),
	.out5_i(out4_i),
	.out6_r(out5_r),
	.out6_i(out5_i),
	.out7_r(out6_r),
	.out7_i(out6_i),
	.out8_r(out7_r),
	.out8_i(out7_i),
	.out9_r(out8_r),
	.out9_i(out8_i),
	.out10_r(out9_r),
	.out10_i(out9_i),
	.out11_r(out10_r),
	.out11_i(out10_i),
	.out12_r(out11_r),
	.out12_i(out11_i),
	.out13_r(out12_r),
	.out13_i(out12_i),
	.out14_r(out13_r),
	.out14_i(out13_i),
	.out15_r(out14_r),
	.out15_i(out14_i),
	.out16_r(out15_r),
	.out16_i(out15_i),
	.out17_r(out16_r),
	.out17_i(out16_i),
	.out18_r(out17_r),
	.out18_i(out17_i),
	.out19_r(out18_r),
	.out19_i(out18_i),
	.out20_r(out19_r),
	.out20_i(out19_i),
	.out21_r(out20_r),
	.out21_i(out20_i),
	.out22_r(out21_r),
	.out22_i(out21_i),
	.out23_r(out22_r),
	.out23_i(out22_i),
	.out24_r(out23_r),
	.out24_i(out23_i),
	.out25_r(out24_r),
	.out25_i(out24_i),
	.out26_r(out25_r),
	.out26_i(out25_i),
	.out27_r(out26_r),
	.out27_i(out26_i),
	.out28_r(out27_r),
	.out28_i(out27_i),
	.out29_r(out28_r),
	.out29_i(out28_i),
	.out30_r(out29_r),
	.out30_i(out29_i),
	.out31_r(out30_r),
	.out31_i(out30_i),
	.out32_r(out31_r),
	.out32_i(out31_i)
  ); 
endmodule
