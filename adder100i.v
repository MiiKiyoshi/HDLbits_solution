module top_module(
  input [99:0] a, b,
  input cin,
  output [99:0] cout,
  output [99:0] sum );

wire [99:0] carry;

//아래 for문에서 carry[i-1]값을 carry in으로 사용하기 위해서 
//0번 비트값은 따로 구해놓고
assign sum[0] = a[0] ^ b[0] ^ cin;
assign carry[0] = (a[0]&b[0]) || (a[0]&cin) || (cin&b[0]);

//counter varible인 i를 1부터 시작함
integer i;
always @(*) begin
  for (i = 1; i < 100; i = i+1) begin
    sum[i] = a[i] ^ b[i] ^ carry[i-1];
    carry[i] = (a[i]&&b[i]) || (a[i]&&carry[i-1]) || (carry[i-1]&&b[i]);
    //이전 루프에서 구한 carry값(carry[i-1])이 현재 루프관점에선 carry in값임   
  end
end

assign cout = carry;

endmodule
