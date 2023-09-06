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

parameter LEFT=0, RIGHT=1, FALL_LEFT=2, FALL_RIGHT=3, DIG_LEFT=4, DIG_RIGHT=5, SPLATTER=6;
reg [2:0] state, next_state;
reg [4:0] cycles;
reg pre_aaah;

// count cycles while FALLING
always @(posedge clk or posedge areset) begin
  if(areset) begin
    cycles <= 0;
  end else if(ground) begin
    cycles <= 0;
  end else begin
    if(cycles > 20) begin
      cycles <= cycles;
    end else begin
      cycles <= cycles + 1;
    end
  end
end

// if(areset | ground) begin 하면 오류나더라 
// sensitivity list에 들어가 있는건 피연산자가 될 수 없다고 함


// State transition logic
always @(*) begin
  case(state) 
    LEFT: next_state = ground? (dig? DIG_LEFT : (bump_left? RIGHT : LEFT)) : FALL_LEFT;
    RIGHT: next_state = ground? (dig? DIG_RIGHT : (bump_right? LEFT : RIGHT)) : FALL_RIGHT;
    FALL_LEFT: next_state = ground? ((cycles > 20)? SPLATTER : LEFT) : FALL_LEFT;
    FALL_RIGHT: next_state = ground? ((cycles > 20)? SPLATTER : RIGHT) : FALL_RIGHT;
    DIG_LEFT: next_state = ground? DIG_LEFT : FALL_LEFT;
    DIG_RIGHT: next_state = ground? DIG_RIGHT : FALL_RIGHT;
    SPLATTER: next_state = SPLATTER;
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
