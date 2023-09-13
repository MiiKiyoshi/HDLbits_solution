module serial_receiver_tb;
    reg clk;
    reg in;
    reg reset;
    wire done;

    // Instantiate the Unit Under Test (UUT)
    serial_receiver uut (
        .clk(clk), 
        .in(in), 
        .reset(reset), 
        .done(done)
    );

    initial begin
        // Initialize inputs
        clk = 1;
        in = 0;
        reset = 1;

        // Apply reset
        #10 reset = 0;
        #10 reset = 1;
        #10 reset = 0;

        // Apply stimulus
        #10 in = 1; // Start
        #20 in = 0; // Bit0
        #30 in = 1; // Bit1
        #40 in = 0; // Bit2
        #50 in = 1; // Bit3
        #60 in = 0; // Bit4
        #70 in = 1; // Bit5
        #80 in = 0; // Bit6
        #90 in = 1; // Bit7
        #100 in = 0; // Stop

        #10 $finish;

        // Wait for done signal
        while (!done) #10;

        $finish;  // End simulation
    end

    always #5 clk = ~clk;  // Generate clock signal

endmodule
