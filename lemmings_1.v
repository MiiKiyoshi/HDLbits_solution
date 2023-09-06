module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    output walk_left,
    output walk_right); //  

    // parameter LEFT=0, RIGHT=1, ...
    reg state, next_state;

    always @(*) begin
        // State transition logic
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
    end

    // Output logic
    // assign walk_left = (state == ...);
    // assign walk_right = (state == ...);

endmodule
