module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire carry;

add16 adder1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(carry));
add16 adder2(.a(a[31:16]), .b(b[31:16]), .cin(carry), .sum(sum[31:16]), .cout());

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );

/*
wire [1:0] all_sum;
assign all_sum = a + b + cin; 
assign sum = all_sum[0];
assign cout = all_sum[1];
*/
assign sum = a ^ b ^ cin; 
// 1이 홀수개 있으면 1나오고 짝수개 있으면 0나온다. xor(^)을 사용하면 carry를
// 생략한 합을 계산할 수 있다.
assign cout = a&b|a&cin|b&cin; // 1이 두개가 있으면 carry가 일어남
// 두개를 묶는 경우의 수를 사용하여 두개 씩 And(&) 취하고 OR(|)하면 carry값을
// 계산할 수 있다.

endmodule
