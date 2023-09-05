module top_module(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q
); 

wire [511:0] q_right, q_left;

assign q_right = {1'b0, q[511:1]};
assign q_left = {q[510:0], 1'b0};

always @(posedge clk) begin
  if(load) begin
    q <= data;
  end else begin
    q <= (~q & q_right) | (q_right & ~q_left) | (q & ~q_right);
  end
end

endmodule
