//always_if2.v
//
//Combinational circuits must have a value 
//assigned to all outputs under all conditions.
//
//This usually means you always need else clauses 
//or a default value assigned to the outputs.
//

// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    always @(*) begin
        if (cpu_overheated) begin
           shut_off_computer = 1;
         end else begin
           shut_off_computer = 0;
         end
     end

    always @(*) begin
        if (~arrived) begin
           keep_driving = ~gas_tank_empty;
         end else begin
           keep_driving = 0;
         end
       end

endmodule

