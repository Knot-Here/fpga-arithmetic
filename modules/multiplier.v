module multiplier (
    input [7:0] a,   // 8-bit input a
    input [7:0] b,   // 8-bit input b
    output [15:0] prod // 16-bit output product
);
    assign prod = a * b;
endmodule
