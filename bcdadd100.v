module top_module(
 input [399:0] a, b,
 input cin,
 output cout, 
 output [399:0] sum
);

wire [99:0] carry;

bcd_fadd bcdadder0(
  .a(a[3:0]),
  .b(b[3:0]),
  .cin(cin),
  .cout(carry[0]),
  .sum(sum[3:0])
);

//동일한 모듈 인스턴스를 반복하여 생성할때 generate문을 씀
genvar i;
generate
  for(i=4;i<$bits(sum);i=i+4) begin : bcdgen
    bcd_fadd bcdadder1(
      .a(a[i+3:i]),
      .b(b[i+3:i]), 
      .cin(carry[i/4-1]),
      .cout(carry[i/4]),
      .sum(sum[i+3:i])
    );
  end
endgenerate

assign cout = carry[99];

endmodule
