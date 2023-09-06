module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah
);

parameter LEFT=0, RIGHT=1, FALL_FROM_LEFT=2, FALL_FROM_RIGHT=3;
reg [1:0] state, next_state;

// State transition logic
always @(*) begin
  case(state) 
    LEFT: next_state = ground? (bump_left? RIGHT : LEFT) : FALL_FROM_LEFT;
    RIGHT: next_state = ground? (bump_right? LEFT : RIGHT) : FALL_FROM_RIGHT;
    FALL_FROM_LEFT: next_state = ground? LEFT : FALL_FROM_LEFT;
    FALL_FROM_RIGHT: next_state = ground? RIGHT : FALL_FROM_RIGHT;
  endcase
end

// State flip-flops with asynchronous reset
always @(posedge clk, posedge areset) begin
  if(areset) begin
    state <= LEFT;
  end else begin
    state <= next_state;
  end
end

// Output logic
assign walk_left = (state == LEFT);
assign walk_right = (state == RIGHT);
assign aaah = (state == FALL_FROM_RIGHT) | (state == FALL_FROM_LEFT);

endmodule
