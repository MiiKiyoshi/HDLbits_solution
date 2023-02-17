// 1 111 1111 은 -1임 확인하려면 invert(0000 0000)하고 1을 더하면됨(0000 0001)
// 이렇게 된 이유는 -0을 binary로 표현할 방도도 없어 
// 1 111 1111부터 -1로 취급했기에 이렇게 계산이 복잡한거임
// 비슷하게 1 111 1110 은 -2(0000 0010)임 

// add를 이해했다면 sub는 간단함 
// add: (a + b + 0) 
// sub: (a + ~b + 1)

module top_module(input [31:0] a, input [31:0] b, input sub, output [31:0] sum);

wire [31:0] signb;
wire carry;

assign signb = b ^ {32{sub}};
// 매우 충격: 아오 기정아 sub랑 b랑 bit수가 안맞자너 vector를 replicate해가지고
// bit수를 맞춰야지
// xor은 한 operand를 inverting시키는 역할을 한다.
// An XOR gate can also be viewed as a programmable inverter

add16 adder_low(.a(a[15:0]), .b(signb[15:0]), .cin(sub), .sum(sum[15:0]), .cout(carry));
add16 adder_upp(.a(a[31:16]), .b(signb[31:16]), .cin(carry), .sum(sum[31:16]), .cout());

endmodule
