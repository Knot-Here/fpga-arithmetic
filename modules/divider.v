module divider (
    input [7:0] dividend,  // 8-bit dividend
    input [7:0] divisor,   // 8-bit divisor
    output [7:0] quotient, // 8-bit quotient
    output [7:0] remainder // 8-bit remainder
);
    assign quotient = dividend / divisor;
    assign remainder = dividend % divisor;
endmodule
