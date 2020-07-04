
`timescale 1ns / 1ps

module RF_top1(clk1, clk2, reset_an1, reset_an2, fifo_readcounter, fifo_writecounter, pattern, fifo_dataout, wfull, rempty,
 lfsr_random, out_stimulus, en_lfsr, en_lfsr1, en_lfsr2, en_lfsr3, en_lfsr4, en_lfsr5, en_lfsr6, en_lfsr7, en_lfsr8, 
 en_lfsr9, en_lfsr10, en_lfsr11); ////, init_lfsr, lfsr_random, adder_out

// **---------------------------------------------------------------------------------------------------**
// ** DECLARATION AND INITIALIZATION 																	**
// **---------------------------------------------------------------------------------------------------**

output [127:0]pattern;

input clk1, clk2, reset_an1, reset_an2; //asynchronous negative reset

output [127:0] fifo_dataout;
output wfull, rempty;
output [10:0] lfsr_random;

//input fifo_write, fifo_read;
input fifo_readcounter;//it is required to get output
input fifo_writecounter;//=4'b0

input en_lfsr;
input en_lfsr1;
input en_lfsr2;
input en_lfsr3;
input en_lfsr4;
input en_lfsr5;
input en_lfsr6;
input en_lfsr7;
input en_lfsr8;
input en_lfsr9;
input en_lfsr10;
input en_lfsr11;

output [15:0] out_stimulus;

// **---------------------------------------------------------------------------------------------------**
// ** GENERATING INPUT PATTERN 																			**
// **---------------------------------------------------------------------------------------------------**

RF_generation r1 (.clk1(clk1), .reset_an1(reset_an1), .pattern(pattern));

// **---------------------------------------------------------------------------------------------------**
// ** FIFO 																								**
// **---------------------------------------------------------------------------------------------------**

fifo1 f1 (.rdata(fifo_dataout), .wfull(wfull), .rempty(rempty), .wdata(pattern), .winc(fifo_writecounter), .wclk(clk1), .wrst_n(reset_an1),
 .rinc(fifo_readcounter), .rclk(clk2), .rrst_n(reset_an2));//incomplete port connection

// **---------------------------------------------------------------------------------------------------**
// ** SHIFT REGISTERS, GLOBAL COUNTER, RANDOM WEIGHT GENERATOR, WEIGHTED PIXEL ARRAY, PARALLEL ADDER 	**
// **---------------------------------------------------------------------------------------------------**

rwg g1 (.clk2(clk2), .en_lfsr(en_lfsr), .en_lfsr1(en_lfsr1), .en_lfsr2(en_lfsr2), .en_lfsr3(en_lfsr3), .en_lfsr4(en_lfsr4), .en_lfsr5(en_lfsr5), 
.en_lfsr6(en_lfsr6), .en_lfsr7(en_lfsr7), .en_lfsr8(en_lfsr8), .en_lfsr9(en_lfsr9), .en_lfsr10(en_lfsr10), .en_lfsr11(en_lfsr11), 
.lfsr_random(lfsr_random));

weigh_pix_par_add w1 (.clk2(clk2), .reset_an2(reset_an2), .fifo_dataout(fifo_dataout), .lfsr_random(lfsr_random), .out_stimulus(out_stimulus));

endmodule






	  
	  










  


	  
	  










  