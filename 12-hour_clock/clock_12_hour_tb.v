module clock_12_hour_tb;

reg clk, reset, enable;
wire [7:0] q;

bcd60 u_bcd60(
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .q(q)
);

initial begin
    clk = 0;
    reset = 1;
    enable = 0;
    #10;
    reset = 0;
    enable = 1;
    #1000;
    enable = 0;
    #10;
    $finish;
end

always #5 clk = ~clk;

initial $monitor($time, " q = %b", q);

endmodule
