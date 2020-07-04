`timescale 1ns / 1ps

module RF_top1_tb();

reg clk1, clk2, reset_an1, reset_an2;//req
//reg [127:0] fifo_read, fifo_write;//read
reg en_lfsr;
reg en_lfsr1;
reg en_lfsr2;
reg en_lfsr3;
reg en_lfsr4;
reg en_lfsr5;
reg en_lfsr6;
reg en_lfsr7;
reg en_lfsr8;
reg en_lfsr9;
reg en_lfsr10;
reg en_lfsr11;
reg fifo_readcounter, fifo_writecounter;//req

/////wire
wire [127:0] pattern;//req
wire [127:0] fifo_dataout;//
wire wfull, rempty;//req
wire [10:0] lfsr_random;//new
wire [15:0] out_stimulus;

RF_top1 r1 (.clk1(clk1), .clk2(clk2), .reset_an1(reset_an1), .reset_an2(reset_an2), .fifo_readcounter(fifo_readcounter), .fifo_writecounter(fifo_writecounter),
 .pattern(pattern),.en_lfsr(en_lfsr), .en_lfsr1(en_lfsr1), .en_lfsr2(en_lfsr2), .en_lfsr3(en_lfsr3), .en_lfsr4(en_lfsr4), .en_lfsr5(en_lfsr5), .en_lfsr6(en_lfsr6),
.en_lfsr7(en_lfsr7), .en_lfsr8(en_lfsr8), .en_lfsr9(en_lfsr9), .en_lfsr10(en_lfsr10), .en_lfsr11(en_lfsr11), .fifo_dataout(fifo_dataout), .wfull(wfull), .rempty(rempty),
 .lfsr_random(lfsr_random), .out_stimulus(out_stimulus)); 

initial
begin

clk1 = 0;
clk2 = 0;
reset_an1 = 0;
reset_an2 = 0;
//fifo_write = 0;
//fifo_read = 0;
fifo_readcounter = 0;
fifo_writecounter = 0;

end
 
always 
begin
#64000 clk1 = ~clk1;
clk2 = 1'b0; 
end

always 
begin
#500 clk2 = ~clk2;//64000 / 500 = 128 (can we change it ?) 
end

initial
#5000 reset_an1=1;

initial
#5000 reset_an2=1;

initial
#5000 fifo_writecounter=1'b1;

initial
#50000 fifo_readcounter=1'b1;
/*
initial
begin
#1000000000 $finish; 
end
*/

initial
$monitor( "time = %t, out_stimulus = %d ", $time, out_stimulus);

initial
begin
//$set_gate_level_monitoring ("on");
//$set_toggle_region ("r1");
//$toggle_start();
//#4000 fifo_write = 1;
//#20000 fifo_read = 1;fifo_write = 0;
//#18000 fifo_read = 0;
#321000;
#128000;
#128000;
#128000;
#128000;
#128000;
#128000;
#128000;
#2000 en_lfsr=0; //$finish;
#1000 en_lfsr=1;
#11000 //$finish;
#1000 en_lfsr1=0;
#1000 en_lfsr1=1;
#11000 //$finish; 
#1000 en_lfsr2=0;
#1000 en_lfsr2=1;
#11000 //$finish;
#1000 en_lfsr3=0;
#1000 en_lfsr3=1;
#11000 //$finish;
#1000 en_lfsr4=0;
#1000 en_lfsr4=1;
#11000 //$finish;
#1000 en_lfsr5=0;
#1000 en_lfsr5=1;
#11000 //$finish; 
#1000 en_lfsr6=0;
#1000 en_lfsr6=1;
#11000 //$finish;
#1000 en_lfsr7=0;
#1000 en_lfsr7=1;
#11000 //$finish;
#1000 en_lfsr8=0;
#1000 en_lfsr8=1;
#11000 //$finish;
#1000 en_lfsr9=0;
#1000 en_lfsr9=1;
#11000 //$finish;
#1000 en_lfsr10=0;
#1000 en_lfsr10=1;
#11000 //$finish;
#1000 en_lfsr11=0;
#1000 en_lfsr11=1;
#8000;
 
#4000;


#98000;
#128000;
#128000;
#128000;
#128000;
#128000;
#128000;


#2000 en_lfsr=0; //$finish;
#1000 en_lfsr=1;
#11000 //$finish;
#1000 en_lfsr1=0;
#1000 en_lfsr1=1;
#11000 //$finish; 
#1000 en_lfsr2=0;
#1000 en_lfsr2=1;
#11000 //$finish;
#1000 en_lfsr3=0;
#1000 en_lfsr3=1;
#11000 //$finish;
#1000 en_lfsr4=0;
#1000 en_lfsr4=1;
#11000 //$finish;
#1000 en_lfsr5=0;
#1000 en_lfsr5=1;
#11000 //$finish; 
#1000 en_lfsr6=0;
#1000 en_lfsr6=1;
#11000 //$finish;
#1000 en_lfsr7=0;
#1000 en_lfsr7=1;
#11000 //$finish;
#1000 en_lfsr8=0;
#1000 en_lfsr8=1;
#11000 //$finish;
#1000 en_lfsr9=0;
#1000 en_lfsr9=1;
#11000 //$finish;
#1000 en_lfsr10=0;
#1000 en_lfsr10=1;
#11000 //$finish;
#1000 en_lfsr11=0;
#1000 en_lfsr11=1;
#8000;
 
#4000;

end


//$toggle_stop;
//$toggle_report ("RF_top2.saif", 1.0e-9, "t1");




endmodule





