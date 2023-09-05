// Note the Verilog-1995 module declaration syntax here:
module top_module(
    input clk,
    input reset,    // Synchronous reset to state B
    input in,
    output reg out
);

    // Fill in state name declarations
    parameter A = 0, B = 1;
    reg present_state, next_state;
    
    // update
    always @(posedge clk) begin
      if(reset) begin
        present_state <= B;
      end else begin
        present_state <= next_state;
      end
    end

    // // calculate next_state
    // always @(*) begin
    //   if(!in) begin
    //     case(present_state)
    //       A: next_state = B;
    //       B: next_state = A;
    //     endcase
    //   end else begin
    //     next_state <= next_state;
    //   end
    // end
    // 
    // 위와 같이 코드를 짜면
    // in이 1일땐 next_state를 계산 하지 않게 된다.
    // 단순히 next_state를 유지하게 되는데
    // 이 말은 in이 0이 되기 전까진 
    // next_state는 초기값에 쓰레기값 들어가면
    // reset이 걸려도 쓰레기값이 초기화 안된다.
    // 라고 틀린 이유를 고찰해보았다.
    //
    // 아래와 같이 코드를 짜는것이 안전하다.

    // calculate next_state
    always @(*) begin
      case(present_state)
        A: next_state = in? A:B;
        B: next_state = in? B:A;
      endcase
    end

    assign out = (present_state == B);

endmodule
