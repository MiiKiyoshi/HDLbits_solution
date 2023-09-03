module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss
); 

wire u_count2_am_pm_en, u_bcd12_hh_en, u_bcd60_mm_en;

assign u_count2_am_pm_en = (hh == 8'h11) & (mm == 8'h59) & (ss == 8'h59) & ena;
assign u_bcd12_hh_en = (mm == 8'h59) & (ss == 8'h59) & ena;
assign u_bcd60_mm_en = (ss == 8'h59) & ena;

count2 u_count2_am_pm(
    .clk(clk),
    .reset(reset),
    .enable(u_count2_am_pm_en),
    .q(pm)
);

bcd12 u_bcd12_hh(
    .clk(clk),
    .reset(reset),
    .enable(u_bcd12_hh_en),
    .q(hh)
);

bcd60 u_bcd60_mm(
    .clk(clk),
    .reset(reset),
    .enable(u_bcd60_mm_en),
    .q(mm)
);

bcd60 u_bcd60_ss(
    .clk(clk),
    .reset(reset),
    .enable(ena),
    .q(ss)
);

endmodule

//--------------------------------------------------------

module count2(
    input clk,
    input reset,
    input enable,
    output q
);

always @(posedge clk) begin
    if(reset) begin
        q = 1'b0;
    end else if(enable) begin
        q = q + 1'b1;
    end
end

endmodule

//--------------------------------------------------------

module bcd12(
  input clk,
  input reset,
  input enable,
  output [7:0] q
);

reg [3:0] digit1, digit2;

always @(posedge clk) begin
    if(reset) begin
        digit2 <= 4'h1;
        digit1 <= 4'h2;
    end else if(enable) begin
        if(digit2 == 4'h1 & digit1 == 4'h2) begin
            digit1 <= 4'h1;
            digit2 <= 4'h0;
        end else begin
            if(digit1 == 4'h9) begin
                digit2 <= digit2 + 4'h1;
                digit1 <= 4'h0;
            end else begin
                digit1 <= digit1 + 4'h1;
            end
        end
    end
end

assign q = {digit2, digit1};

endmodule

//--------------------------------------------------------

module bcd60(
    input clk,
    input reset,
    input enable,
    output [7:0] q
);

reg [3:0] digit1, digit2;

always @(posedge clk) begin
    if(reset) begin
        digit2 <= 4'h0;
        digit1 <= 4'h0;
    end else if(enable) begin
        if(digit2 == 4'h5 & digit1 == 4'h9) begin
            digit1 <= 4'h0;
            digit2 <= 4'h0;
        end else begin
            if(digit1 == 4'h9) begin
                digit2 <= digit2 + 4'h1;
                digit1 <= 4'h0;
            end else begin
                digit1 <= digit1 + 4'h1;
            end
        end
    end
end

assign q = {digit2, digit1};

endmodule
