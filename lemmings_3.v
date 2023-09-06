module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging
);

parameter LEFT=0, RIGHT=1, FALL_LEFT=2, FALL_RIGHT=3, DIG_LEFT=4, DIG_RIGHT=5;
reg [2:0] state, next_state;

// State transition logic
always @(*) begin
  case(state) 
    LEFT: next_state = ground? (dig? DIG_LEFT : (bump_left? RIGHT : LEFT)) : FALL_LEFT;
    RIGHT: next_state = ground? (dig? DIG_RIGHT : (bump_right? LEFT : RIGHT)) : FALL_RIGHT;
    FALL_LEFT: next_state = ground? LEFT : FALL_LEFT;
    FALL_RIGHT: next_state = ground? RIGHT : FALL_RIGHT;
    DIG_LEFT: next_state = ground? DIG_LEFT : FALL_LEFT;
    DIG_RIGHT: next_state = ground? DIG_RIGHT : FALL_RIGHT;
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
assign aaah = (state == FALL_RIGHT) | (state == FALL_LEFT);
assign digging = (state == DIG_RIGHT) | (state == DIG_LEFT);

endmodule
