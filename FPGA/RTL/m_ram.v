`timescale 1ns / 1ps

module m_reg_file #
(
    parameter ADDR_WIDTH = 5,
    parameter DATA_WIDTH = 16,
    parameter DEPTH      = 32
)

(
    input                       clk,
    input      [ADDR_WIDTH-1:0] addr,
    input      [DATA_WIDTH-1:0] data,
    input                       we,

    output reg [DATA_WIDTH-1:0] data00,
    output reg [DATA_WIDTH-1:0] data01,
    output reg [DATA_WIDTH-1:0] data02,
    output reg [DATA_WIDTH-1:0] data03,
    output reg [DATA_WIDTH-1:0] data04,
    output reg [DATA_WIDTH-1:0] data05,
    output reg [DATA_WIDTH-1:0] data06,
    output reg [DATA_WIDTH-1:0] data07,
    output reg [DATA_WIDTH-1:0] data08,
    output reg [DATA_WIDTH-1:0] data09,
    output reg [DATA_WIDTH-1:0] data10,
    output reg [DATA_WIDTH-1:0] data11,
    output reg [DATA_WIDTH-1:0] data12,
    output reg [DATA_WIDTH-1:0] data13,
    output reg [DATA_WIDTH-1:0] data14,
    output reg [DATA_WIDTH-1:0] data15,
    output reg [DATA_WIDTH-1:0] data16,
    output reg [DATA_WIDTH-1:0] data17,
    output reg [DATA_WIDTH-1:0] data18,
    output reg [DATA_WIDTH-1:0] data19,
    output reg [DATA_WIDTH-1:0] data20,
    output reg [DATA_WIDTH-1:0] data21,
    output reg [DATA_WIDTH-1:0] data22,
    output reg [DATA_WIDTH-1:0] data23,
    output reg [DATA_WIDTH-1:0] data24,
    output reg [DATA_WIDTH-1:0] data25,
    output reg [DATA_WIDTH-1:0] data26,
    output reg [DATA_WIDTH-1:0] data27,
    output reg [DATA_WIDTH-1:0] data28,
    output reg [DATA_WIDTH-1:0] data29,
    output reg [DATA_WIDTH-1:0] data30,
    output reg [DATA_WIDTH-1:0] data31
);

  reg [DATA_WIDTH-1:0]  mem [DEPTH-1:0];

  always @ (posedge clk) begin
    if (we)
      mem[addr] <= data;
  end

  always @ (posedge clk) begin
      data00 <= mem[ 0];
      data01 <= mem[ 1];
      data02 <= mem[ 2];
      data03 <= mem[ 3];
      data04 <= mem[ 4];
      data05 <= mem[ 5];
      data06 <= mem[ 6];
      data07 <= mem[ 7];
      data08 <= mem[ 8];
      data09 <= mem[ 9];
      data10 <= mem[10];
      data11 <= mem[11];
      data12 <= mem[12];
      data13 <= mem[13];
      data14 <= mem[14];
      data15 <= mem[15];
      data16 <= mem[16];
      data17 <= mem[17];
      data18 <= mem[18];
      data19 <= mem[19];
      data20 <= mem[20];
      data21 <= mem[21];
      data22 <= mem[22];
      data23 <= mem[23];
      data24 <= mem[24];
      data25 <= mem[25];
      data26 <= mem[26];
      data27 <= mem[27];
      data28 <= mem[28];
      data29 <= mem[29];
      data30 <= mem[30];
      data31 <= mem[31];
  end

endmodule