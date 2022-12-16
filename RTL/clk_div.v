`timescale 1ns / 1ps

module Clk_div #
(
    parameter DIVISOR = 5
)
(
    input       rst,
    input       clock_in,
    output reg  clock_out
);

  reg [3:0] counter;

  always @(posedge clock_in or posedge rst ) begin
    if(rst) begin
      counter   <= 0;
      clock_out <= 0;
    end
    else begin
      counter <= counter + 1;

      if(counter >= (DIVISOR-1))
        counter <= 0;

      clock_out <= (counter < DIVISOR/2) ? (1'b1) : (1'b0);

    end
  end // always

endmodule