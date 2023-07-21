`timescale 1ns / 1ps

module get_negative #
(
    parameter N = 16
)
(
    input   [N-1:0] in,
    output  [N-1:0] out
);
    assign out = ~in + 1'b1;
endmodule
