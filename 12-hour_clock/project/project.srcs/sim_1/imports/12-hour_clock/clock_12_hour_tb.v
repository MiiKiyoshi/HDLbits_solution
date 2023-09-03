`timescale 1ns/1ps

module clock_12_hour_tb;

    reg clk;
    reg reset;
    reg ena;
    wire pm;
    wire [7:0] hh;
    wire [7:0] mm;
    wire [7:0] ss;

    clock_12_hour u_clock_12_hour(
        .clk(clk),
        .reset(reset),
        .ena(ena),
        .pm(pm),
        .hh(hh),
        .mm(mm),
        .ss(ss)
    );

    initial begin
        clk = 0;
        reset = 1;
        ena = 0;
        #10 reset = 0;
        #10 ena = 1;
        #100000 $finish;
    end

    always #5 clk = ~clk;

endmodule