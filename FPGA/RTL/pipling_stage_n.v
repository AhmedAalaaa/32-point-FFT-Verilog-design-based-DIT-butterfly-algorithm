`timescale 1ns / 1ps

module pipeline_stage #
(
    parameter N = 16
)
(
    input                   clk,
    input                   rst,
    input       [N-1:0]     in1_r,
    input       [N-1:0]     in1_i,
    input       [N-1:0]     in2_r,
    input       [N-1:0]     in2_i,
    input       [N-1:0]     in3_r,
    input       [N-1:0]     in3_i,
    input       [N-1:0]     in4_r,
    input       [N-1:0]     in4_i,
    input       [N-1:0]     in5_r,
    input       [N-1:0]     in5_i,
    input       [N-1:0]     in6_r,
    input       [N-1:0]     in6_i,
    input       [N-1:0]     in7_r,
    input       [N-1:0]     in7_i,
    input       [N-1:0]     in8_r,
    input       [N-1:0]     in8_i,
    input       [N-1:0]     in9_r,
    input       [N-1:0]     in9_i,
    input       [N-1:0]     in10_r,
    input       [N-1:0]     in10_i,
    input       [N-1:0]     in11_r,
    input       [N-1:0]     in11_i,
    input       [N-1:0]     in12_r,
    input       [N-1:0]     in12_i,
    input       [N-1:0]     in13_r,
    input       [N-1:0]     in13_i,
    input       [N-1:0]     in14_r,
    input       [N-1:0]     in14_i,
    input       [N-1:0]     in15_r,
    input       [N-1:0]     in15_i,
    input       [N-1:0]     in16_r,
    input       [N-1:0]     in16_i,
    input       [N-1:0]     in17_r,
    input       [N-1:0]     in17_i,
    input       [N-1:0]     in18_r,
    input       [N-1:0]     in18_i,
    input       [N-1:0]     in19_r,
    input       [N-1:0]     in19_i,
    input       [N-1:0]     in20_r,
    input       [N-1:0]     in20_i,
    input       [N-1:0]     in21_r,
    input       [N-1:0]     in21_i,
    input       [N-1:0]     in22_r,
    input       [N-1:0]     in22_i,
    input       [N-1:0]     in23_r,
    input       [N-1:0]     in23_i,
    input       [N-1:0]     in24_r,
    input       [N-1:0]     in24_i,
    input       [N-1:0]     in25_r,
    input       [N-1:0]     in25_i,
    input       [N-1:0]     in26_r,
    input       [N-1:0]     in26_i,
    input       [N-1:0]     in27_r,
    input       [N-1:0]     in27_i,
    input       [N-1:0]     in28_r,
    input       [N-1:0]     in28_i,
    input       [N-1:0]     in29_r,
    input       [N-1:0]     in29_i,
    input       [N-1:0]     in30_r,
    input       [N-1:0]     in30_i,
    input       [N-1:0]     in31_r,
    input       [N-1:0]     in31_i,
    input       [N-1:0]     in32_r,
    input       [N-1:0]     in32_i,

    output reg  [N-1:0]     out1_r,
    output reg  [N-1:0]     out1_i,
    output reg  [N-1:0]     out2_r,
    output reg  [N-1:0]     out2_i,
    output reg  [N-1:0]     out3_r,
    output reg  [N-1:0]     out3_i,
    output reg  [N-1:0]     out4_r,
    output reg  [N-1:0]     out4_i,
    output reg  [N-1:0]     out5_r,
    output reg  [N-1:0]     out5_i,
    output reg  [N-1:0]     out6_r,
    output reg  [N-1:0]     out6_i,
    output reg  [N-1:0]     out7_r,
    output reg  [N-1:0]     out7_i,
    output reg  [N-1:0]     out8_r,
    output reg  [N-1:0]     out8_i,
    output reg  [N-1:0]     out9_r,
    output reg  [N-1:0]     out9_i,
    output reg  [N-1:0]     out10_r,
    output reg  [N-1:0]     out10_i,
    output reg  [N-1:0]     out11_r,
    output reg  [N-1:0]     out11_i,
    output reg  [N-1:0]     out12_r,
    output reg  [N-1:0]     out12_i,
    output reg  [N-1:0]     out13_r,
    output reg  [N-1:0]     out13_i,
    output reg  [N-1:0]     out14_r,
    output reg  [N-1:0]     out14_i,
    output reg  [N-1:0]     out15_r,
    output reg  [N-1:0]     out15_i,
    output reg  [N-1:0]     out16_r,
    output reg  [N-1:0]     out16_i,
    output reg  [N-1:0]     out17_r,
    output reg  [N-1:0]     out17_i,
    output reg  [N-1:0]     out18_r,
    output reg  [N-1:0]     out18_i,
    output reg  [N-1:0]     out19_r,
    output reg  [N-1:0]     out19_i,
    output reg  [N-1:0]     out20_r,
    output reg  [N-1:0]     out20_i,
    output reg  [N-1:0]     out21_r,
    output reg  [N-1:0]     out21_i,
    output reg  [N-1:0]     out22_r,
    output reg  [N-1:0]     out22_i,
    output reg  [N-1:0]     out23_r,
    output reg  [N-1:0]     out23_i,
    output reg  [N-1:0]     out24_r,
    output reg  [N-1:0]     out24_i,
    output reg  [N-1:0]     out25_r,
    output reg  [N-1:0]     out25_i,
    output reg  [N-1:0]     out26_r,
    output reg  [N-1:0]     out26_i,
    output reg  [N-1:0]     out27_r,
    output reg  [N-1:0]     out27_i,
    output reg  [N-1:0]     out28_r,
    output reg  [N-1:0]     out28_i,
    output reg  [N-1:0]     out29_r,
    output reg  [N-1:0]     out29_i,
    output reg  [N-1:0]     out30_r,
    output reg  [N-1:0]     out30_i,
    output reg  [N-1:0]     out31_r,
    output reg  [N-1:0]     out31_i,
    output reg  [N-1:0]     out32_r,
    output reg  [N-1:0]     out32_i

);


    always @ (posedge clk or posedge rst) begin
      if(rst) begin
        out1_r  <= 0;
        out1_i  <= 0;
        out2_r  <= 0;
        out2_i  <= 0;
        out3_r  <= 0;
        out3_i  <= 0;
        out4_r  <= 0;
        out4_i  <= 0;
        out5_r  <= 0;
        out5_i  <= 0;
        out6_r  <= 0;
        out6_i  <= 0;
        out7_r  <= 0;
        out7_i  <= 0;
        out8_r  <= 0;
        out8_i  <= 0;
        out9_r  <= 0;
        out9_i  <= 0;
        out10_r <= 0;
        out10_i <= 0;
        out11_r <= 0;
        out11_i <= 0;
        out12_r <= 0;
        out12_i <= 0;
        out13_r <= 0;
        out13_i <= 0;
        out14_r <= 0;
        out14_i <= 0;
        out15_r <= 0;
        out15_i <= 0;
        out16_r <= 0;
        out16_i <= 0;
        out17_r <= 0;
        out17_i <= 0;
        out18_r <= 0;
        out18_i <= 0;
        out19_r <= 0;
        out19_i <= 0;
        out20_r <= 0;
        out20_i <= 0;
        out21_r <= 0;
        out21_i <= 0;
        out22_r <= 0;
        out22_i <= 0;
        out23_r <= 0;
        out23_i <= 0;
        out24_r <= 0;
        out24_i <= 0;
        out25_r <= 0;
        out25_i <= 0;
        out26_r <= 0;
        out26_i <= 0;
        out27_r <= 0;
        out27_i <= 0;
        out28_r <= 0;
        out28_i <= 0;
        out29_r <= 0;
        out29_i <= 0;
        out30_r <= 0;
        out30_i <= 0;
        out31_r <= 0;
        out31_i <= 0;
        out32_r <= 0;
        out32_i <= 0;
      end
      else begin
        out1_r  <= in1_r;
        out1_i  <= in1_i;
        out2_r  <= in2_r;
        out2_i  <= in2_i;
        out3_r  <= in3_r;
        out3_i  <= in3_i;
        out4_r  <= in4_r;
        out4_i  <= in4_i;
        out5_r  <= in5_r;
        out5_i  <= in5_i;
        out6_r  <= in6_r;
        out6_i  <= in6_i;
        out7_r  <= in7_r;
        out7_i  <= in7_i;
        out8_r  <= in8_r;
        out8_i  <= in8_i;
        out9_r  <= in9_r;
        out9_i  <= in9_i;
        out10_r <= in10_r;
        out10_i <= in10_i;
        out11_r <= in11_r;
        out11_i <= in11_i;
        out12_r <= in12_r;
        out12_i <= in12_i;
        out13_r <= in13_r;
        out13_i <= in13_i;
        out14_r <= in14_r;
        out14_i <= in14_i;
        out15_r <= in15_r;
        out15_i <= in15_i;
        out16_r <= in16_r;
        out16_i <= in16_i;
        out17_r <= in17_r;
        out17_i <= in17_i;
        out18_r <= in18_r;
        out18_i <= in18_i;
        out19_r <= in19_r;
        out19_i <= in19_i;
        out20_r <= in20_r;
        out20_i <= in20_i;
        out21_r <= in21_r;
        out21_i <= in21_i;
        out22_r <= in22_r;
        out22_i <= in22_i;
        out23_r <= in23_r;
        out23_i <= in23_i;
        out24_r <= in24_r;
        out24_i <= in24_i;
        out25_r <= in25_r;
        out25_i <= in25_i;
        out26_r <= in26_r;
        out26_i <= in26_i;
        out27_r <= in27_r;
        out27_i <= in27_i;
        out28_r <= in28_r;
        out28_i <= in28_i;
        out29_r <= in29_r;
        out29_i <= in29_i;
        out30_r <= in30_r;
        out30_i <= in30_i;
        out31_r <= in31_r;
        out31_i <= in31_i;
        out32_r <= in32_r;
        out32_i <= in32_i;
      end
    end //always

endmodule
