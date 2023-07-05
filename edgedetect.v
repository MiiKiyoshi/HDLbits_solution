module top_module(
  input clk,
  input [7:0] in,
  output [7:0] pedge
);

reg [7:0] inPast; 

always @(posedge clk) begin
  pedge <= in & ~inPast; //과거의 입력이 0이고 현재의 입력이 1일때만 (외워!!)
  inPast <= in;
end

endmodule
