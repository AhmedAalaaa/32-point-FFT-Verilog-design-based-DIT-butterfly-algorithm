`timescale 1ns / 1ps

module twiddle_rom_imag # 
(
	parameter N = 16
)
(
	input				clk,
	input				rst,
	output reg [N-1:0]	reg0_i,
	output reg [N-1:0]	reg1_i,
	output reg [N-1:0]	reg2_i,
	output reg [N-1:0]	reg3_i,
	output reg [N-1:0]	reg4_i,
	output reg [N-1:0]	reg5_i,
	output reg [N-1:0]	reg6_i,
	output reg [N-1:0]	reg7_i,
	output reg [N-1:0]	reg8_i,
	output reg [N-1:0]	reg9_i,
	output reg [N-1:0]	reg10_i,
	output reg [N-1:0]	reg11_i,
	output reg [N-1:0]	reg12_i,
	output reg [N-1:0]	reg13_i,
	output reg [N-1:0]	reg14_i,
	output reg [N-1:0]	reg15_i
);
	
	always @ (posedge clk or posedge rst) begin
	  if(rst) begin
	  	reg0_i  <= 0;
	  	reg1_i  <= 0;
	  	reg2_i  <= 0;
	  	reg3_i  <= 0;
	  	reg4_i  <= 0;
	  	reg5_i  <= 0;
	  	reg6_i  <= 0;
	  	reg7_i  <= 0;
	  	reg8_i  <= 0;
	  	reg9_i  <= 0;
	  	reg10_i <= 0;
	  	reg11_i <= 0;
	  	reg12_i <= 0;
	  	reg13_i <= 0;
	  	reg14_i <= 0;
	  	reg15_i <= 0;
	  end
	  else begin
	  	reg0_i  <= 16'b0000000000000000;
	  	reg1_i  <= 16'b0000000000110001;
	  	reg2_i  <= 16'b0000000001100010;
	  	reg3_i  <= 16'b0000000010001110;
	  	reg4_i  <= 16'b0000000010110100;
	  	reg5_i  <= 16'b0000000011010100;
	  	reg6_i  <= 16'b0000000011101100;
	  	reg7_i  <= 16'b0000000011111011;
	  	reg8_i  <= 16'b0000000100000000;
	  	reg9_i  <= 16'b0000000011111011;
	  	reg10_i <= 16'b0000000011101100;
	  	reg11_i <= 16'b0000000011010100;
	  	reg12_i <= 16'b0000000010110100;
	  	reg13_i <= 16'b0000000010001110;
	  	reg14_i <= 16'b0000000001100010;
	  	reg15_i <= 16'b0000000000110001;
	  end
    end // always
	
endmodule
