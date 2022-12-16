`timescale 1ns / 1ps

module mux #
(
    parameter N = 16
)
(
    input       [N-1:0]     a1,
    input       [N-1:0]     a2,
    input       [N-1:0]     a3,
    input       [N-1:0]     a4,
    input       [N-1:0]     a5,
    input       [2:0]       sel,

    output reg  [N-1:0]     c
);

  always @ (*) begin
    case (sel)
      3'b000    :   c = a1;
      3'b001    :   c = a2;
      3'b010    :   c = a3;
      3'b011    :   c = a4;
      3'b100    :   c = a5;
      default   :   c = 0;
    endcase
  end // always

endmodule
