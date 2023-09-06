module top_module (
    input clk,
    input reset,
    input [3:1] s,
    output fr3,
    output fr2,
    output fr1,
    output dfr
); 

parameter A  = 3'd0,
          B1 = 3'd1, B2 = 3'd2,
          C1 = 3'd3, C2 = 3'd4,
          D  = 3'd5;

reg [3:0] state, next_state;

// State transition logic
always @(*) begin
  case(state)
    A : next_state = s[3]? A : B1;
    B2: next_state = s[3]? A : (s[2]? B2 : C1);
    B1: next_state = s[3]? A : (s[2]? B1 : C1);
    C2: next_state = s[2]? B2: (s[1]? C2 : D );
    C1: next_state = s[2]? B2: (s[1]? C1 : D );
    D : next_state = s[1]? C2: D; 
  endcase
end

// State flip-flops with synchronous reset
always @(posedge clk) begin
  if(reset) begin
    state <= D;
  end else begin
    state <= next_state;
  end
end

// Output logic
always @(*) begin
  case(state)
    A : {fr3, fr2, fr1, dfr} = 4'b0000;
    B2: {fr3, fr2, fr1, dfr} = 4'b0010;
    B1: {fr3, fr2, fr1, dfr} = 4'b0011;
    C2: {fr3, fr2, fr1, dfr} = 4'b0110;
    C1: {fr3, fr2, fr1, dfr} = 4'b0111;
    D : {fr3, fr2, fr1, dfr} = 4'b1111;
  endcase
end

endmodule

//                             
//   \       A \  B -> A : A              
//   \       S3\                 
//   \       B \  A -> B : B1 , C -> B : B2               
//   \       S2\                 
//   \       C \  B -> C : C1 , D -> C : C2              
//   \       S1\                 
//   \       D \  C -> D : D              
//   \         \ 
//   \         \  * 1인것은 dfr이 필요 1이 수위가 낮아진거라서
//   \         \                 
//   \         \  밀리 머신이었으면 현재 상태도
//   \         \  output logic에 관여하기 때문에              
//   \_________\  1 이랑 2 이렇게 안나눠도 됬을거임              
