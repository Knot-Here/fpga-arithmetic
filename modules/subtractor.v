module subtractor (
    input [7:0] a,        // 8-bit input A
    input [7:0] b,        // 8-bit input B
    output [7:0] diff     // 8-bit output Difference
);
    assign diff = a - b;  // Subtract inputs
endmodule
