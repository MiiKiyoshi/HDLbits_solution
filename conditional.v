module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

  //a와 b비교 -> min(a,b)과 c 비교 -> min(a,b,c)과 d비교 
  //for문안에 min을 a로 초기화하고 a와 b->c->d순으로 비교하면서 계속 min값을
  //바꿔나갔었음 
  //베릴로그에선 min을 여러개 만들어 a와 b를 비교, 더 작은값을 min1에 
  //연결하고 min1과 c를 비교, min2에 연결하고.. 이런 방식으로 갈거임 
  
  wire [7:0] min1, min2;

  assign min1 = (a < b) ? a:b;
  assign min2 = (min1 < c) ? min1:c;
  assign min = (min2 < d) ? min2:d;

endmodule
