module top_module(
  input clk,
  input reset,
  input [31:0] in,
  output [31:0] out
);

reg [31:0] inPast;

always @(posedge clk) begin
  inPast <= in;
  if(reset) begin
    out = 32'b0;
  end else begin
    out = (inPast & ~in) | out; 
    // 과거 입력이 1 현재 입력이 0인 edge일때 1이 되야됨
    // 이전 출력이 1이었으면 이를 유지 시켜주기 위해 이전 출력과 or함
  end
end

endmodule
