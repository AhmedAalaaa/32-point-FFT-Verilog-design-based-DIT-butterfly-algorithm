`timescale 1ns / 1ps

module twiddle_rom_real # 
(
	parameter N = 16
)
(
	input				clk,
	input				rst,
	output reg [N-1:0]	reg0_r,
	output reg [N-1:0]	reg1_r,
	output reg [N-1:0]	reg2_r,
	output reg [N-1:0]	reg3_r,
	output reg [N-1:0]	reg4_r,
	output reg [N-1:0]	reg5_r,
	output reg [N-1:0]	reg6_r,
	output reg [N-1:0]	reg7_r,
	output reg [N-1:0]	reg8_r,
	output reg [N-1:0]	reg9_r,
	output reg [N-1:0]	reg10_r,
	output reg [N-1:0]	reg11_r,
	output reg [N-1:0]	reg12_r,
	output reg [N-1:0]	reg13_r,
	output reg [N-1:0]	reg14_r,
	output reg [N-1:0]	reg15_r
);
	
	always @ (posedge clk or posedge rst) begin
	if(rst) begin
		reg0_r = 0;
		reg1_r = 0;
		reg2_r = 0;
		reg3_r = 0;
		reg4_r = 0;
		reg5_r = 0;
		reg6_r = 0;
		reg7_r = 0;
		reg8_r = 0;
		reg9_r = 0;
		reg10_r = 0;
		reg11_r = 0;
		reg12_r = 0;
		reg13_r = 0;
		reg14_r = 0;
		reg15_r = 0;
	end
	else begin
			reg0_r = 16'b000000000000001;
			reg1_r = 16'b000000000000001;
			reg2_r = 16'b000000000000001;
			reg3_r = 16'b000000000000001;
			reg4_r = 16'b000000000000010;
			reg5_r = 16'b000000000000010;
			reg6_r = 16'b000000000000010;
			reg7_r = 16'b000000000000010;
			reg8_r = 16'b000000000000000;
			reg9_r = 16'b000000000000011;
			reg10_r = 16'b000000000000011;
			reg11_r = 16'b000000000000011;
			reg12_r = 16'b000000000000011;
			reg13_r = 16'b000000000000100;
			reg14_r = 16'b000000000000100;
			reg15_r = 16'b000000000000100;
		


	end
	
end
	
endmodule
