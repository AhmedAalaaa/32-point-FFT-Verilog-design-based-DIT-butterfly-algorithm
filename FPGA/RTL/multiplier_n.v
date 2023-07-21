`timescale 1ns / 1ps

module multiplier #
(
    parameter Q = 8,
    parameter N = 16
)
(
    input                   clk,
    input                   rst,
    input       [N-1:0]     A,
    input       [N-1:0]     B,
    output reg  [N-1:0]     C
);

    reg [2*N-1:0]   P;
    reg [N-1:0]     temp1;
    reg [N-1:0]     temp2;
    reg [N-1:0]     temp3;

    always @ (negedge clk or posedge rst ) begin
    if(rst) begin
        C     = 0;
        P     = 0;
        temp1 = 0;
        temp2 = 0;
        temp3 = 0;
    end
    else begin
        if(A[N-1] == 0 && B[N-1] == 0) begin
            // (+ve, +ve) case
            // make a normal multiplication operation
            // the output will be ready in the next cycle
            temp1 = 0;
            temp2 = 0;
            temp3 = 0;
            P     = A * B;
            C     = P[N - 1 + Q:Q];
        end
        else if(A[N-1] == 0 && B[N-1] == 1) begin
            // (+ve, -ve) case
            // 2's compelemnt will be taken for the second
            // the output will be ready in the next cycle
            // the result will be negative
            // need to take the 2's compelemnt again to the result
            temp1   = 0;
            temp2   = ~B + 1'b1;
            P       = A * temp2;
            temp3   = P[N - 1 + Q:Q];
            C       = ~temp3 + 1'b1;
        end
        else if(A[N-1] == 1 && B[N-1] == 0) begin
            // (-ve, +ve) case
            // 2's compelemnt will be taken for the first
            // the output will be ready in the next cycle
            // the result will be negative
            // need to take the 2's compelemnt again to the result
            temp2   = 0;
            temp1   = ~A + 1'b1;
            P       = B * temp1;
            temp3   = P[N - 1 + Q:Q];
            C       = ~temp3 + 1'b1;
        end
        else begin
            // (-ve, -ve) case
            // 2's compelemnt will be taken for the first and the second
            // the output will be ready in the next cycle
            // the result will be positive and not need to take
            // 2's compelemnt for the result
            temp1   = ~A + 1'b1;
            temp2   = ~B + 1'b1;
            temp3   = 0;
            P       = temp2 * temp1;
            C       = P[N - 1 + Q:Q];
        end
    end
    end

endmodule
