module top_module;

reg clk;

always
  #5 clk = ~clk;
initial
  clk = 0;

initial begin

end

endmodule
