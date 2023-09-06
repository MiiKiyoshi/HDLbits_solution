module top_module(
    input clk,
    input in,
    input reset,
    output out
);

reg [3:0] state, next_state;
parameter A = 3'd1, B = 3'd2, C = 3'd3, D = 3'd4;

// State transition logic
always @(*) begin
  case(state)
    A: next_state = in? B : A;
    B: next_state = in? B : C;
    C: next_state = in? D : A;
    D: next_state = in? B : C;
  endcase
end

// State flip-flops with synchronous reset
always @(posedge clk) begin
  if(reset) begin
    state <= A;
  end else begin
    state <= next_state;
  end
end

// Output logic
assign out = state == D;

endmodule
