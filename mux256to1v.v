module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

  //변수의 비트폭이 필요할때 사용해야하는 대체문법 두가지 
  //in[ sel*4+3 : sel*4 ] 이런식으로 하면 오류남 

  //1. bit slicing 문법
  //assign out = {in[sel*4+3], in[sel*4+2], in[sel*4+1], in[sel*4+0]};
  
  //2. indexed vector part select 문법 
  //변수[시작비트 <+증가/-감소>: 비트 폭]
  assign out = in[sel*4 +: 4]; 
  //assign out = in[sel*4+3 -: 4];

endmodule

