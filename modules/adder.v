module adder (
    input [7:0] a,   // 8-bit input a
    input [7:0] b,   // 8-bit input b
    output [7:0] sum // 8-bit output sum
);
    assign sum = a + b;
endmodule
