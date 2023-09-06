module top_module(
    input in,
    input [3:0] state,
    output [3:0] next_state,
    output out); //

    parameter A=0, B=1, C=2, D=3;

    // State transition logic: Derive an equation for each state flip-flop.
    assign next_state[A] = (state[A] & ~in) | (state[C] & ~in);
    assign next_state[B] = (state[A] & in) | (state[B] & in) | (state[D] & in);
    assign next_state[C] = (state[B] & ~in) | (state[D] & ~in);
    assign next_state[D] = state[C] & in;
    // Next_state가 특정 상태가 되기 위한 
    // 현재 state와 in들을 minterm으로 묶어서 더함

    // state 벡터에서 set된 부분만 확인하여 
    // state를 알아내면 되고
    // ex) state[A]가 1인가?? = 현재 A상태인가?
    // in은 set인지 아닌지 확인하면 되고

    // Output logic: 
    assign out = state[D];

endmodule

// 이 방식이 one hot encoding이며 
// 특징은 state를 벡터로 만들고 
// 각 index가 하나의 상태를 나타내도록 함
