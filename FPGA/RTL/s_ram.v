`timescale 1ns / 1ps

module s_reg_file #
(
    parameter ADDR_WIDTH = 5,
    parameter DATA_WIDTH = 16,
    parameter DEPTH      = 32
)

(
    input                       clk,
    input      [ADDR_WIDTH-1:0] addr,
    input                       re,
    input      [DATA_WIDTH-1:0] data00_r,
    input      [DATA_WIDTH-1:0] data01_r,
    input      [DATA_WIDTH-1:0] data02_r,
    input      [DATA_WIDTH-1:0] data03_r,
    input      [DATA_WIDTH-1:0] data04_r,
    input      [DATA_WIDTH-1:0] data05_r,
    input      [DATA_WIDTH-1:0] data06_r,
    input      [DATA_WIDTH-1:0] data07_r,
    input      [DATA_WIDTH-1:0] data08_r,
    input      [DATA_WIDTH-1:0] data09_r,
    input      [DATA_WIDTH-1:0] data10_r,
    input      [DATA_WIDTH-1:0] data11_r,
    input      [DATA_WIDTH-1:0] data12_r,
    input      [DATA_WIDTH-1:0] data13_r,
    input      [DATA_WIDTH-1:0] data14_r,
    input      [DATA_WIDTH-1:0] data15_r,
    input      [DATA_WIDTH-1:0] data16_r,
    input      [DATA_WIDTH-1:0] data17_r,
    input      [DATA_WIDTH-1:0] data18_r,
    input      [DATA_WIDTH-1:0] data19_r,
    input      [DATA_WIDTH-1:0] data20_r,
    input      [DATA_WIDTH-1:0] data21_r,
    input      [DATA_WIDTH-1:0] data22_r,
    input      [DATA_WIDTH-1:0] data23_r,
    input      [DATA_WIDTH-1:0] data24_r,
    input      [DATA_WIDTH-1:0] data25_r,
    input      [DATA_WIDTH-1:0] data26_r,
    input      [DATA_WIDTH-1:0] data27_r,
    input      [DATA_WIDTH-1:0] data28_r,
    input      [DATA_WIDTH-1:0] data29_r,
    input      [DATA_WIDTH-1:0] data30_r,
    input      [DATA_WIDTH-1:0] data31_r,
		       
    input      [DATA_WIDTH-1:0] data00_i,
    input      [DATA_WIDTH-1:0] data01_i,
    input      [DATA_WIDTH-1:0] data02_i,
    input      [DATA_WIDTH-1:0] data03_i,
    input      [DATA_WIDTH-1:0] data04_i,
    input      [DATA_WIDTH-1:0] data05_i,
    input      [DATA_WIDTH-1:0] data06_i,
    input      [DATA_WIDTH-1:0] data07_i,
    input      [DATA_WIDTH-1:0] data08_i,
    input      [DATA_WIDTH-1:0] data09_i,
    input      [DATA_WIDTH-1:0] data10_i,
    input      [DATA_WIDTH-1:0] data11_i,
    input      [DATA_WIDTH-1:0] data12_i,
    input      [DATA_WIDTH-1:0] data13_i,
    input      [DATA_WIDTH-1:0] data14_i,
    input      [DATA_WIDTH-1:0] data15_i,
    input      [DATA_WIDTH-1:0] data16_i,
    input      [DATA_WIDTH-1:0] data17_i,
    input      [DATA_WIDTH-1:0] data18_i,
    input      [DATA_WIDTH-1:0] data19_i,
    input      [DATA_WIDTH-1:0] data20_i,
    input      [DATA_WIDTH-1:0] data21_i,
    input      [DATA_WIDTH-1:0] data22_i,
    input      [DATA_WIDTH-1:0] data23_i,
    input      [DATA_WIDTH-1:0] data24_i,
    input      [DATA_WIDTH-1:0] data25_i,
    input      [DATA_WIDTH-1:0] data26_i,
    input      [DATA_WIDTH-1:0] data27_i,
    input      [DATA_WIDTH-1:0] data28_i,
    input      [DATA_WIDTH-1:0] data29_i,
    input      [DATA_WIDTH-1:0] data30_i,
    input      [DATA_WIDTH-1:0] data31_i,

	output reg      [2*DATA_WIDTH-1:0] data
);

  reg [2*DATA_WIDTH-1:0]  mem [DEPTH-1:0];

  always @ (posedge clk) begin
    mem[ 0] <= {data00_r, data00_i};
    mem[ 1] <= {data01_r, data01_i};
    mem[ 2] <= {data02_r, data02_i};
    mem[ 3] <= {data03_r, data03_i};
    mem[ 4] <= {data04_r, data04_i};
    mem[ 5] <= {data05_r, data05_i};
    mem[ 6] <= {data06_r, data06_i};
    mem[ 7] <= {data07_r, data07_i};
    mem[ 8] <= {data08_r, data08_i};
    mem[ 9] <= {data09_r, data09_i};
    mem[10] <= {data10_r, data10_i};
    mem[11] <= {data11_r, data11_i};
    mem[12] <= {data12_r, data12_i};
    mem[13] <= {data13_r, data13_i};
    mem[14] <= {data14_r, data14_i};
    mem[15] <= {data15_r, data15_i};
    mem[16] <= {data16_r, data16_i};
    mem[17] <= {data17_r, data17_i};
    mem[18] <= {data18_r, data18_i};
    mem[19] <= {data19_r, data19_i};
    mem[20] <= {data20_r, data20_i};
    mem[21] <= {data21_r, data21_i};
    mem[22] <= {data22_r, data22_i};
    mem[23] <= {data23_r, data23_i};
    mem[24] <= {data24_r, data24_i};
    mem[25] <= {data25_r, data25_i};
    mem[26] <= {data26_r, data26_i};
    mem[27] <= {data27_r, data27_i};
    mem[28] <= {data28_r, data28_i};
    mem[29] <= {data29_r, data29_i};
    mem[30] <= {data30_r, data30_i};
    mem[31] <= {data31_r, data31_i};
  end

  always @ (posedge clk) begin
    if (re)
      data <= mem[addr];
  end

endmodule