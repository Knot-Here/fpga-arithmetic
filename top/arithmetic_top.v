module arithmetic_top (
    input [7:0] a,              // Input A
    input [7:0] b,              // Input B
    output [7:0] sum,           // Output from adder
    output [15:0] prod,         // Output from multiplier
    output [7:0] diff,          // Output from subtractor
    output [7:0] quotient,      // Output from divider
    output [7:0] remainder      // Remainder from divider
);

    // Instantiate the adder
    adder u_adder (
        .a(a),
        .b(b),
        .sum(sum)
    );

    // Instantiate the multiplier
    multiplier u_multiplier (
        .a(a),
        .b(b),
        .prod(prod)
    );

    // Instantiate the subtractor
    subtractor u_subtractor (
        .a(a),
        .b(b),
        .diff(diff)
    );

    // Instantiate the divider
    divider u_divider (
        .dividend(a),
        .divisor(b),
        .quotient(quotient),
        .remainder(remainder)
    );

endmodule
