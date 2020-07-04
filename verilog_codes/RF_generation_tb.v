`timescale 1ns / 1ps

module RF_generation_tb();
/////reg [7:0] mem[0:783];
/////reg [7:0] region[0:127];
reg clk1, reset_an1;

wire [127:0] pattern;

RF_generation t1(.clk1(clk1), .reset_an1(reset_an1), .pattern(pattern));

initial
begin
clk1 = 0;
reset_an1 = 1;
end

always 
begin
#10 clk1 = ~clk1;
end

endmodule
