module top_module(
  input clk,
  input reset,
  input [7:0] d,
  output [7:0] q
);

reg [7:0] q_reg;

always @(negedge clk) begin
  if(reset) begin
    q_reg = 8'h34;
  end else begin
    q_reg = d;
  end
end

assign q = q_reg;

endmodule
