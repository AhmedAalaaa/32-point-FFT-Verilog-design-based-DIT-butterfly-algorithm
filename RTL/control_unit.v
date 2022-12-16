`timescale 1ns / 1ps

module control_unit #
(
    parameter N = 3
)
(
    input                   clk2,     // for mac (50 Mhz)
    input                   rst,

    output  reg     [2:0]   mux_sel1, // for muxes input
    output  reg     [2:0]   mux_sel2  // for twiddel muxes

);

    reg     [N-1:0]     counter;

    always @ (posedge clk2 or posedge rst) begin
      if(rst) begin
        mux_sel1 <= 0;
        mux_sel2 <= 0;
        counter  <= 0;
      end
      else begin
        mux_sel1 <= counter;
        mux_sel2 <= counter;
        counter  <= counter + 1;

        if(counter == 4)
          counter <= 0;

      end
    end // always

endmodule
