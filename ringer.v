module top_module (
    input ring,
    input vibrate_mode,
    output ringer,       // Make sound
    output motor         // Vibrate
);
//Sum of products
//ringer = rv'
//motor = rv

assign ringer = ring & (~vibrate_mode);
assign motor = ring & vibrate_mode;

endmodule
