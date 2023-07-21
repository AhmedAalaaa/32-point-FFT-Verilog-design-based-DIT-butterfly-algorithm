`timescale 1ns / 1ps

module twiddle_rom_real #
(
    parameter N = 16
)
(
    input               clk,
    input               rst,
    output reg [N-1:0]  reg0_r,
    output reg [N-1:0]  reg1_r,
    output reg [N-1:0]  reg2_r,
    output reg [N-1:0]  reg3_r,
    output reg [N-1:0]  reg4_r,
    output reg [N-1:0]  reg5_r,
    output reg [N-1:0]  reg6_r,
    output reg [N-1:0]  reg7_r,
    output reg [N-1:0]  reg8_r,
    output reg [N-1:0]  reg9_r,
    output reg [N-1:0]  reg10_r,
    output reg [N-1:0]  reg11_r,
    output reg [N-1:0]  reg12_r,
    output reg [N-1:0]  reg13_r,
    output reg [N-1:0]  reg14_r,
    output reg [N-1:0]  reg15_r
);

    always @ (posedge clk or posedge rst) begin
      if(rst) begin
        reg0_r  <= 0;
        reg1_r  <= 0;
        reg2_r  <= 0;
        reg3_r  <= 0;
        reg4_r  <= 0;
        reg5_r  <= 0;
        reg6_r  <= 0;
        reg7_r  <= 0;
        reg8_r  <= 0;
        reg9_r  <= 0;
        reg10_r <= 0;
        reg11_r <= 0;
        reg12_r <= 0;
        reg13_r <= 0;
        reg14_r <= 0;
        reg15_r <= 0;
      end
      else begin
        reg0_r  <= 16'b0000000100000000;
        reg1_r  <= 16'b0000000011111011;
        reg2_r  <= 16'b0000000011101100;
        reg3_r  <= 16'b0000000011010100;
        reg4_r  <= 16'b0000000010110100;
        reg5_r  <= 16'b0000000010001110;
        reg6_r  <= 16'b0000000001100010;
        reg7_r  <= 16'b0000000000110001;
        reg8_r  <= 16'b0000000000000000;
        reg9_r  <= 16'b1111111111001111;
        reg10_r <= 16'b1111111110011110;
        reg11_r <= 16'b1111111101110010;
        reg12_r <= 16'b1111111101001100;
        reg13_r <= 16'b1111111100101100;
        reg14_r <= 16'b1111111100010100;
        reg15_r <= 16'b1111111100000101;
      end
    end // always

endmodule
