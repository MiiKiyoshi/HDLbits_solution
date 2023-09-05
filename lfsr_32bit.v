module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 32'h1
    output [31:0] q
); 

always @(posedge clk) begin
  if(reset) begin
    q = 32'h1;
  end else begin
    q = {q[0]^1'b0, q[31:23], q[0]^q[22], q[21:3], q[0]^q[2], q[0]^q[1]};
  end
end

// q[31]에 q[0]^1'b0가 들어가는 이유는 LFSR의 
// 32번째 비트를 갱신하기 위함 by chatgpt

endmodule
