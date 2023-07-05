// J	K	Q
// 0	0	Qold
// 0	1	0
// 1	0	1
// 1	1	~Qold

module top_module(
  input clk,
  input j,
  input k,
  output Q
);

always @(posedge clk) begin
  if(j^k) begin
    Q = j;
  end else begin
    if(j) 
      Q = ~Q;
    else
      Q = Q;
  end
end

endmodule
