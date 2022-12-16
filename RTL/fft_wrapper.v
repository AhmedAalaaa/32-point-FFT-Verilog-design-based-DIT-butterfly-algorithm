`timescale 1ns / 1ps


module fft_wrapper #
(
    parameter DIVISOR    = 5,
    parameter N          = 16,
    parameter Q          = 8,
    parameter ADDR_WIDTH = 5,
    parameter DATA_WIDTH = 16,
    parameter DEPTH      = 32
)
(
    input                         clk,
    input                         rst,
    // master interface
    input      [ADDR_WIDTH-1:0]   m_addr,
    input      [DATA_WIDTH-1:0]   m_data,
    input                         m_we,
    // slave interface
    input      [ADDR_WIDTH-1:0]   s_addr,
    input                         s_re,
    output     [2*DATA_WIDTH-1:0] s_data
);

  // signals definition
  wire [DATA_WIDTH-1:0] data00_int;
  wire [DATA_WIDTH-1:0] data01_int;
  wire [DATA_WIDTH-1:0] data02_int;
  wire [DATA_WIDTH-1:0] data03_int;
  wire [DATA_WIDTH-1:0] data04_int;
  wire [DATA_WIDTH-1:0] data05_int;
  wire [DATA_WIDTH-1:0] data06_int;
  wire [DATA_WIDTH-1:0] data07_int;
  wire [DATA_WIDTH-1:0] data08_int;
  wire [DATA_WIDTH-1:0] data09_int;
  wire [DATA_WIDTH-1:0] data10_int;
  wire [DATA_WIDTH-1:0] data11_int;
  wire [DATA_WIDTH-1:0] data12_int;
  wire [DATA_WIDTH-1:0] data13_int;
  wire [DATA_WIDTH-1:0] data14_int;
  wire [DATA_WIDTH-1:0] data15_int;
  wire [DATA_WIDTH-1:0] data16_int;
  wire [DATA_WIDTH-1:0] data17_int;
  wire [DATA_WIDTH-1:0] data18_int;
  wire [DATA_WIDTH-1:0] data19_int;
  wire [DATA_WIDTH-1:0] data20_int;
  wire [DATA_WIDTH-1:0] data21_int;
  wire [DATA_WIDTH-1:0] data22_int;
  wire [DATA_WIDTH-1:0] data23_int;
  wire [DATA_WIDTH-1:0] data24_int;
  wire [DATA_WIDTH-1:0] data25_int;
  wire [DATA_WIDTH-1:0] data26_int;
  wire [DATA_WIDTH-1:0] data27_int;
  wire [DATA_WIDTH-1:0] data28_int;
  wire [DATA_WIDTH-1:0] data29_int;
  wire [DATA_WIDTH-1:0] data30_int;
  wire [DATA_WIDTH-1:0] data31_int;

  wire [DATA_WIDTH-1:0] out0_r_int   ;
  wire [DATA_WIDTH-1:0] out0_i_int   ;
  wire [DATA_WIDTH-1:0] out1_r_int   ;
  wire [DATA_WIDTH-1:0] out1_i_int   ;
  wire [DATA_WIDTH-1:0] out2_r_int   ;
  wire [DATA_WIDTH-1:0] out2_i_int   ;
  wire [DATA_WIDTH-1:0] out3_r_int   ;
  wire [DATA_WIDTH-1:0] out3_i_int   ;
  wire [DATA_WIDTH-1:0] out4_r_int   ;
  wire [DATA_WIDTH-1:0] out4_i_int   ;
  wire [DATA_WIDTH-1:0] out5_r_int   ;
  wire [DATA_WIDTH-1:0] out5_i_int   ;
  wire [DATA_WIDTH-1:0] out6_r_int   ;
  wire [DATA_WIDTH-1:0] out6_i_int   ;
  wire [DATA_WIDTH-1:0] out7_r_int   ;
  wire [DATA_WIDTH-1:0] out7_i_int   ;
  wire [DATA_WIDTH-1:0] out8_r_int   ;
  wire [DATA_WIDTH-1:0] out8_i_int   ;
  wire [DATA_WIDTH-1:0] out9_r_int   ;
  wire [DATA_WIDTH-1:0] out9_i_int   ;
  wire [DATA_WIDTH-1:0] out10_r_int  ;
  wire [DATA_WIDTH-1:0] out10_i_int  ;
  wire [DATA_WIDTH-1:0] out11_r_int  ;
  wire [DATA_WIDTH-1:0] out11_i_int  ;
  wire [DATA_WIDTH-1:0] out12_r_int  ;
  wire [DATA_WIDTH-1:0] out12_i_int  ;
  wire [DATA_WIDTH-1:0] out13_r_int  ;
  wire [DATA_WIDTH-1:0] out13_i_int  ;
  wire [DATA_WIDTH-1:0] out14_r_int  ;
  wire [DATA_WIDTH-1:0] out14_i_int  ;
  wire [DATA_WIDTH-1:0] out15_r_int  ;
  wire [DATA_WIDTH-1:0] out15_i_int  ;
  wire [DATA_WIDTH-1:0] out16_r_int  ;
  wire [DATA_WIDTH-1:0] out16_i_int  ;
  wire [DATA_WIDTH-1:0] out17_r_int  ;
  wire [DATA_WIDTH-1:0] out17_i_int  ;
  wire [DATA_WIDTH-1:0] out18_r_int  ;
  wire [DATA_WIDTH-1:0] out18_i_int  ;
  wire [DATA_WIDTH-1:0] out19_r_int  ;
  wire [DATA_WIDTH-1:0] out19_i_int  ;
  wire [DATA_WIDTH-1:0] out20_r_int  ;
  wire [DATA_WIDTH-1:0] out20_i_int  ;
  wire [DATA_WIDTH-1:0] out21_r_int  ;
  wire [DATA_WIDTH-1:0] out21_i_int  ;
  wire [DATA_WIDTH-1:0] out22_r_int  ;
  wire [DATA_WIDTH-1:0] out22_i_int  ;
  wire [DATA_WIDTH-1:0] out23_r_int  ;
  wire [DATA_WIDTH-1:0] out23_i_int  ;
  wire [DATA_WIDTH-1:0] out24_r_int  ;
  wire [DATA_WIDTH-1:0] out24_i_int  ;
  wire [DATA_WIDTH-1:0] out25_r_int  ;
  wire [DATA_WIDTH-1:0] out25_i_int  ;
  wire [DATA_WIDTH-1:0] out26_r_int  ;
  wire [DATA_WIDTH-1:0] out26_i_int  ;
  wire [DATA_WIDTH-1:0] out27_r_int  ;
  wire [DATA_WIDTH-1:0] out27_i_int  ;
  wire [DATA_WIDTH-1:0] out28_r_int  ;
  wire [DATA_WIDTH-1:0] out28_i_int  ;
  wire [DATA_WIDTH-1:0] out29_r_int  ;
  wire [DATA_WIDTH-1:0] out29_i_int  ;
  wire [DATA_WIDTH-1:0] out30_r_int  ;
  wire [DATA_WIDTH-1:0] out30_i_int  ;
  wire [DATA_WIDTH-1:0] out31_r_int  ;
  wire [DATA_WIDTH-1:0] out31_i_int  ;


  // master RAM
  m_reg_file #
  (
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
    .DEPTH(DEPTH)
  ) m_ram_block
  (
    .clk   (clk )      ,
    .addr  (m_addr)    ,
    .data  (m_data)    ,
    .we    (m_we  )    ,
    .data00(data00_int),
    .data01(data01_int),
    .data02(data02_int),
    .data03(data03_int),
    .data04(data04_int),
    .data05(data05_int),
    .data06(data06_int),
    .data07(data07_int),
    .data08(data08_int),
    .data09(data09_int),
    .data10(data10_int),
    .data11(data11_int),
    .data12(data12_int),
    .data13(data13_int),
    .data14(data14_int),
    .data15(data15_int),
    .data16(data16_int),
    .data17(data17_int),
    .data18(data18_int),
    .data19(data19_int),
    .data20(data20_int),
    .data21(data21_int),
    .data22(data22_int),
    .data23(data23_int),
    .data24(data24_int),
    .data25(data25_int),
    .data26(data26_int),
    .data27(data27_int),
    .data28(data28_int),
    .data29(data29_int),
    .data30(data30_int),
    .data31(data31_int)
  );


  // fft block
  top # (.DIVISOR(DIVISOR), .N(N), .Q(Q)) fft_block
  (
    .rst    (rst)         ,
    .clk2   (clk)         ,
    .in0_r  (data00_int)  ,
    .in1_r  (data01_int)  ,
    .in2_r  (data02_int)  ,
    .in3_r  (data03_int)  ,
    .in4_r  (data04_int)  ,
    .in5_r  (data05_int)  ,
    .in6_r  (data06_int)  ,
    .in7_r  (data07_int)  ,
    .in8_r  (data08_int)  ,
    .in9_r  (data09_int)  ,
    .in10_r (data10_int)  ,
    .in11_r (data11_int)  ,
    .in12_r (data12_int)  ,
    .in13_r (data13_int)  ,
    .in14_r (data14_int)  ,
    .in15_r (data15_int)  ,
    .in16_r (data16_int)  ,
    .in17_r (data17_int)  ,
    .in18_r (data18_int)  ,
    .in19_r (data19_int)  ,
    .in20_r (data20_int)  ,
    .in21_r (data21_int)  ,
    .in22_r (data22_int)  ,
    .in23_r (data23_int)  ,
    .in24_r (data24_int)  ,
    .in25_r (data25_int)  ,
    .in26_r (data26_int)  ,
    .in27_r (data27_int)  ,
    .in28_r (data28_int)  ,
    .in29_r (data29_int)  ,
    .in30_r (data30_int)  ,
    .in31_r (data31_int)  ,
    .out0_r (out0_r_int ) ,
    .out0_i (out0_i_int ) ,
    .out1_r (out1_r_int ) ,
    .out1_i (out1_i_int ) ,
    .out2_r (out2_r_int ) ,
    .out2_i (out2_i_int ) ,
    .out3_r (out3_r_int ) ,
    .out3_i (out3_i_int ) ,
    .out4_r (out4_r_int ) ,
    .out4_i (out4_i_int ) ,
    .out5_r (out5_r_int ) ,
    .out5_i (out5_i_int ) ,
    .out6_r (out6_r_int ) ,
    .out6_i (out6_i_int ) ,
    .out7_r (out7_r_int ) ,
    .out7_i (out7_i_int ) ,
    .out8_r (out8_r_int ) ,
    .out8_i (out8_i_int ) ,
    .out9_r (out9_r_int ) ,
    .out9_i (out9_i_int ) ,
    .out10_r(out10_r_int) ,
    .out10_i(out10_i_int) ,
    .out11_r(out11_r_int) ,
    .out11_i(out11_i_int) ,
    .out12_r(out12_r_int) ,
    .out12_i(out12_i_int) ,
    .out13_r(out13_r_int) ,
    .out13_i(out13_i_int) ,
    .out14_r(out14_r_int) ,
    .out14_i(out14_i_int) ,
    .out15_r(out15_r_int) ,
    .out15_i(out15_i_int) ,
    .out16_r(out16_r_int) ,
    .out16_i(out16_i_int) ,
    .out17_r(out17_r_int) ,
    .out17_i(out17_i_int) ,
    .out18_r(out18_r_int) ,
    .out18_i(out18_i_int) ,
    .out19_r(out19_r_int) ,
    .out19_i(out19_i_int) ,
    .out20_r(out20_r_int) ,
    .out20_i(out20_i_int) ,
    .out21_r(out21_r_int) ,
    .out21_i(out21_i_int) ,
    .out22_r(out22_r_int) ,
    .out22_i(out22_i_int) ,
    .out23_r(out23_r_int) ,
    .out23_i(out23_i_int) ,
    .out24_r(out24_r_int) ,
    .out24_i(out24_i_int) ,
    .out25_r(out25_r_int) ,
    .out25_i(out25_i_int) ,
    .out26_r(out26_r_int) ,
    .out26_i(out26_i_int) ,
    .out27_r(out27_r_int) ,
    .out27_i(out27_i_int) ,
    .out28_r(out28_r_int) ,
    .out28_i(out28_i_int) ,
    .out29_r(out29_r_int) ,
    .out29_i(out29_i_int) ,
    .out30_r(out30_r_int) ,
    .out30_i(out30_i_int) ,
    .out31_r(out31_r_int) ,
    .out31_i(out31_i_int)
  );

  // slave RAM
  s_reg_file #
  (
    .ADDR_WIDTH(ADDR_WIDTH),
    .DATA_WIDTH(DATA_WIDTH),
    .DEPTH     (DEPTH     )
  ) s_ram_block
  (
    .clk     (clk         )           ,
    .addr    (s_addr      )           ,
    .re      (s_re        )           ,
    .data00_r(out0_r_int  )           ,
    .data00_i(out0_i_int  )           ,
    .data01_r(out1_r_int  )           ,
    .data01_i(out1_i_int  )           ,
    .data02_r(out2_r_int  )           ,
    .data02_i(out2_i_int  )           ,
    .data03_r(out3_r_int  )           ,
    .data03_i(out3_i_int  )           ,
    .data04_r(out4_r_int  )           ,
    .data04_i(out4_i_int  )           ,
    .data05_r(out5_r_int  )           ,
    .data05_i(out5_i_int  )           ,
    .data06_r(out6_r_int  )           ,
    .data06_i(out6_i_int  )           ,
    .data07_r(out7_r_int  )           ,
    .data07_i(out7_i_int  )           ,
    .data08_r(out8_r_int  )           ,
    .data08_i(out8_i_int  )           ,
    .data09_r(out9_r_int  )           ,
    .data09_i(out9_i_int  )           ,
    .data10_r(out10_r_int )           ,
    .data10_i(out10_i_int )           ,
    .data11_r(out11_r_int )           ,
    .data11_i(out11_i_int )           ,
    .data12_r(out12_r_int )           ,
    .data12_i(out12_i_int )           ,
    .data13_r(out13_r_int )           ,
    .data13_i(out13_i_int )           ,
    .data14_r(out14_r_int )           ,
    .data14_i(out14_i_int )           ,
    .data15_r(out15_r_int )           ,
    .data15_i(out15_i_int )           ,
    .data16_r(out16_r_int )           ,
    .data16_i(out16_i_int )           ,
    .data17_r(out17_r_int )           ,
    .data17_i(out17_i_int )           ,
    .data18_r(out18_r_int )           ,
    .data18_i(out18_i_int )           ,
    .data19_r(out19_r_int )           ,
    .data19_i(out19_i_int )           ,
    .data20_r(out20_r_int )           ,
    .data20_i(out20_i_int )           ,
    .data21_r(out21_r_int )           ,
    .data21_i(out21_i_int )           ,
    .data22_r(out22_r_int )           ,
    .data22_i(out22_i_int )           ,
    .data23_r(out23_r_int )           ,
    .data23_i(out23_i_int )           ,
    .data24_r(out24_r_int )           ,
    .data24_i(out24_i_int )           ,
    .data25_r(out25_r_int )           ,
    .data25_i(out25_i_int )           ,
    .data26_r(out26_r_int )           ,
    .data26_i(out26_i_int )           ,
    .data27_r(out27_r_int )           ,
    .data27_i(out27_i_int )           ,
    .data28_r(out28_r_int )           ,
    .data28_i(out28_i_int )           ,
    .data29_r(out29_r_int )           ,
    .data29_i(out29_i_int )           ,
    .data30_r(out30_r_int )           ,
    .data30_i(out30_i_int )           ,
    .data31_r(out31_r_int )           ,
    .data31_i(out31_i_int )           ,
    .data    (s_data      )
  );

endmodule
