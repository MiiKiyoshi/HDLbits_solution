//단순히 두signed인 수를 더했을때 msb쪽으로 비트 하나 증가한거로 판단하면 안됨
//두 양수를 더했을때 부호비트인 msb가 바뀔수 있다는것도 생각해야됨 (signed한정)

module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
);

wire comp;
reg comp2;

//xor할때 1이 짝수개이면 0임 따라서 not붙이면 
//똑같은 비트일때 1 다른 비트일때 0을 표현가능

assign comp = a[7] ~^ b[7]; 
//a와 b가 부호가 서로 같은지 확인
//같으면 1 다르면 0
//다르면 overflow를 고려할 필요 없음

always @(*) begin
  comp2 = 0;
  if (comp == 1) begin
    comp2 = a[7] ^ s[7]; 
    // a와 b의 부호가 같다는 전제하에서
    // 특정 input값의 부호와 sum값의 부호가 다르면 overflow라고 판단 가능
    // a와 b의 부호가 같을때 서로 더하면 반대부호가 나온다 이건 overflow이다.
  end
end

//결론 signed에서 오버플로우를 감지하는 방법
//두 input의 부호가 같을때
//input값의 부호와 sum값의 부호가 다르면 overflow가 발생한거다.

assign overflow = comp & comp2;

assign s = a + b; 

endmodule

/* 정석적인 풀이
* 사람의 뇌 flow로는 assign과 연산 여러개로 짬뽕한 식을 만들기 어려울거 같음
module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 
 	assign s = a + b;
    assign overflow = (a[7]~^b[7])&(s[7]==a[7] ? 0:1);
endmodule
*/
