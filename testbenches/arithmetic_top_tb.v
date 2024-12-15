`timescale 1ns/1ps
module arithmetic_top_tb;

    // Test inputs
    reg [7:0] a, b;

    // Test outputs
    wire [7:0] sum;           // Output from adder
    wire [15:0] prod;         // Output from multiplier
    wire [7:0] diff;          // Output from subtractor
    wire [7:0] quotient;      // Output from divider
    wire [7:0] remainder;     // Remainder from divider

    // Instantiate the top-level module
    arithmetic_top uut (
        .a(a),
        .b(b),
        .sum(sum),
        .prod(prod),
        .diff(diff),
        .quotient(quotient),
        .remainder(remainder)
    );

    initial begin
        $monitor("Time: %t | A: %d | B: %d | Sum: %d | Prod: %d | Diff: %d | Quotient: %d | Remainder: %d",
                  $time, a, b, sum, prod, diff, quotient, remainder);

        // Test cases
        a = 8'd20; b = 8'd10; #10;   // Sum=30, Prod=200, Diff=10, Quotient=2, Remainder=0
        a = 8'd50; b = 8'd20; #10;   // Sum=70, Prod=1000, Diff=30, Quotient=2, Remainder=10
        a = 8'd15; b = 8'd4;  #10;   // Sum=19, Prod=60, Diff=11, Quotient=3, Remainder=3
        a = 8'd0;  b = 8'd7;  #10;   // Sum=7, Prod=0, Diff=-7 (wraparound), Quotient=0, Remainder=0

        $stop; // End simulation
    end

endmodule
