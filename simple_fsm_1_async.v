module top_module(
    input  clk,
    input  areset,    // Asynchronous reset to state B
    input  in,
    output out
);  

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        // State transition logic
        if(in == 0) begin
          case(state)
            A: next_state = B;
            B: next_state = A;
          endcase
        end else begin
          next_state = state;
        end
    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if(areset) begin
          state = B;
        end else begin
          state = next_state;
        end
    end

    // Output logic
    assign out = (state == B);

endmodule
