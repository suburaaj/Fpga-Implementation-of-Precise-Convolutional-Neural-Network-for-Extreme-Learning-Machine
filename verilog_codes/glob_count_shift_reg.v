module glob_count_shift_reg (clk2, reset_an2, fifo_dataout, en_lfsr, en_lfsr1, en_lfsr2, en_lfsr3, en_lfsr4, en_lfsr5, en_lfsr6, en_lfsr7, en_lfsr8, en_lfsr9, en_lfsr10, 
																																				en_lfsr11, out_stimulus);

input clk2, reset_an2;
input [127:0] fifo_dataout;

integer global_count=0; 
reg [1023:0] shift_reg;
reg [1023:0] shift_reg_next;
//integer shift_reg_index;

integer wt_pix_index;

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
reg [10:0] lfsr_random;
wire lfsr_feedback = lfsr_random[10] ^ lfsr_random[8];
integer lfsr_count;

reg [8:0] weighted_pixel[0:127];
integer wt_pix_pos = 0;
integer wt_pix = 0;

reg [10:0] sum00;
reg [11:0] sum01;
reg [11:0] sum02;
reg [11:0] sum03;

reg [10:0] sum10;
reg [11:0] sum11;
reg [11:0] sum12;
reg [11:0] sum13;

reg [10:0] sum20;
reg [11:0] sum21;
reg [11:0] sum22;
reg [11:0] sum23;

reg [10:0] sum30;
reg [11:0] sum31;
reg [11:0] sum32;
reg [11:0] sum33;

reg [10:0] sum40;
reg [11:0] sum41;
reg [11:0] sum42;
reg [11:0] sum43;

reg [10:0] sum50;
reg [11:0] sum51;
reg [11:0] sum52;
reg [11:0] sum53;

reg [10:0] sum60;
reg [11:0] sum61;
reg [11:0] sum62;
reg [11:0] sum63;

reg [10:0] sum70;
reg [11:0] sum71;
reg [11:0] sum72;
reg [11:0] sum73;

reg [10:0] sum80;
reg [11:0] sum81;
reg [11:0] sum82;
reg [11:0] sum83;

reg [10:0] sum90;
reg [11:0] sum91;
reg [11:0] sum92;
reg [11:0] sum93;

reg [10:0] sum100;
reg [11:0] sum101;
reg [11:0] sum102;
reg [11:0] sum103;

reg [10:0] sum110;
reg [11:0] sum111;
reg [11:0] sum112;
reg [11:0] sum113;

reg [10:0] sum120;
reg [11:0] sum121;
reg [11:0] sum122;
reg [11:0] sum123;

reg [10:0] sum130;
reg [11:0] sum131;
reg [11:0] sum132;
reg [11:0] sum133;

reg [10:0] sum140;
reg [11:0] sum141;
reg [11:0] sum142;
reg [11:0] sum143;

reg [10:0] sum150;
reg [11:0] sum151;
reg [11:0] sum152;
reg [11:0] sum153;

reg [13:0] sum160;
reg [14:0] sum161;

reg [13:0] sum170;
reg [14:0] sum171;

reg [13:0] sum180;
reg [14:0] sum181;

reg [13:0] sum190;
reg [14:0] sum191;

reg [15:0] sum200;
output reg [15:0] out_stimulus;
 
always @(posedge clk2 or negedge reset_an2)
begin
   
  
  if (!reset_an2 == 1)
    begin
      //for (shift_reg_index = 0;shift_reg_index <= 1023; shift_reg_index = shift_reg_index + 1)
      //begin
        shift_reg <= 1024'b0;//////////////////////check this statement after synthesis
      //end
    end
  else
    begin
	  if (global_count < 23)
	  begin
      shift_reg_next <= {fifo_dataout, shift_reg_next[1023:128]};
      shift_reg <= shift_reg_next;
	  //shift_reg1 <= shift_reg;
	  global_count = global_count + 1;
	  
	  end
	  else
	  begin
	  shift_reg <= {1'b0, shift_reg[1023:896], 1'b0, shift_reg[895:768], 1'b0, shift_reg[767:640], 1'b0, shift_reg[639:512], 1'b0, shift_reg[511:384],
	  1'b0, shift_reg[383:256], 1'b0,  shift_reg[255:128], 1'b0, shift_reg[127:0]};//no of bits need to get truncated from 1032 to 1024
      
	  //shift_reg <= shift_reg_next;
	  global_count = global_count + 1;
	  //$display("%b", shift_reg);
	  end
	  //$display("%b", shift_reg);
             
      
                       
  end
  
  
  
      end
	  
// **---------------------------------------------------------------------------------------------------**
// ** RANDOM WEIGHT GENERATOR 																			**
// **---------------------------------------------------------------------------------------------------**

always @ (posedge clk2 or negedge en_lfsr or negedge en_lfsr1 or negedge en_lfsr2 or negedge en_lfsr3 or negedge en_lfsr4 or negedge en_lfsr5
or negedge en_lfsr6 or negedge en_lfsr7 or negedge en_lfsr8 or negedge en_lfsr9 or negedge en_lfsr10 or negedge en_lfsr11)
begin

 if (!en_lfsr == 1)
 begin

  lfsr_random <= 11'b01011010110; //An LFSR cannot have an all 0 state, thus reset to FF // seed value = all 128 bits are 1's
  lfsr_count <= 0;

 end
  else if (!en_lfsr1 == 1)
  begin
  lfsr_random <= 11'b10100101001;
  lfsr_count <= 11;
  end
  else if (!en_lfsr2 == 1)
  begin
  lfsr_random <= 11'b11000110010;
  lfsr_count <= 22;
  end
  else if (!en_lfsr3 == 1)
  begin
  lfsr_random <= 11'b01010111011;
  lfsr_count <= 33;
  end
  else if (!en_lfsr4 == 1)
  begin
  lfsr_random <= 11'b11101000100;
  lfsr_count <= 44;
  end
  else if (!en_lfsr5 == 1)
  begin
  lfsr_random <= 11'b01111001101;
  lfsr_count <= 55;
  end
  else if (!en_lfsr6 == 1)
  begin
  lfsr_random <= 11'b00001010110;
  lfsr_count <= 66;
  end
  else if (!en_lfsr7 == 1)
  begin
  lfsr_random <= 11'b10011011111;
  lfsr_count <= 77;
  end
  else if (!en_lfsr8 == 1)
  begin
  lfsr_random <= 11'b00101100000;
  lfsr_count <= 88;
  end
  else if (!en_lfsr9 == 1)
  begin
  lfsr_random <= 11'b00111101001;
  lfsr_count <= 99;
  end
  else if (!en_lfsr10 == 1)
  begin
  lfsr_random <= 11'b01001110010;
  lfsr_count <= 110;
  end
  else if (!en_lfsr11 == 1)
  begin
  lfsr_random <= 11'b01011111011;
  lfsr_count <= 121;
  end
 else
 begin
  
  lfsr_random <= {lfsr_feedback, lfsr_random[10:1]}; //shift left the xor'd every posedge clock
  //$display("%b", lfsr_random);
  lfsr_count <= lfsr_count + 1;
  //lfsr_count <= lfsr_count_next; 
 /* 
 if (lfsr_count == 11)
 begin

  lfsr_count <= 0;

 end
 
 end
 */

end
end

// **---------------------------------------------------------------------------------------------------**
// ** WEIGHTED PIXEL ARRAY 																				**
// **---------------------------------------------------------------------------------------------------**

always @(posedge clk2 or negedge reset_an2)
begin

if (!reset_an2 == 1)
begin

for (wt_pix_index = 0;wt_pix_index <= 127;wt_pix_index = wt_pix_index + 1)
begin
weighted_pixel[wt_pix_index] <= 9'b0;
end

end
else
begin
wt_pix <= wt_pix + 1;

case(1)
wt_pix >=24 && wt_pix <= 34 : begin
								weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895], shift_reg[767],
								shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
								//$display("%b", weighted_pixel[wt_pix_pos]);
								wt_pix_pos <= wt_pix_pos + 1;
								end
wt_pix >=37 && wt_pix <= 47 : begin
								weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895], shift_reg[767],
								shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
								//$display("%b", weighted_pixel[wt_pix_pos]);
								wt_pix_pos <= wt_pix_pos + 1;
								end
wt_pix >=50 && wt_pix <= 60 : begin
								weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895], shift_reg[767],
								shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
								//$display("%b", weighted_pixel[wt_pix_pos]);
								wt_pix_pos <= wt_pix_pos + 1;
								end
wt_pix >=63 && wt_pix <= 73 : begin
								weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895], shift_reg[767],
								shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
								//$display("%b", weighted_pixel[wt_pix_pos]);
								wt_pix_pos <= wt_pix_pos + 1;
								end
wt_pix >=76 && wt_pix <= 86 : begin
								weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
								shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
								//$display("%b", weighted_pixel[wt_pix_pos]);
								wt_pix_pos <= wt_pix_pos + 1;
								end
wt_pix >=89 && wt_pix <= 99 : begin
								weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
								shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
								//$display("%b", weighted_pixel[wt_pix_pos]);
								wt_pix_pos <= wt_pix_pos + 1;
								end
wt_pix >=102 && wt_pix <= 112 : begin
									weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
									shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
									//$display("%b", weighted_pixel[wt_pix_pos]);
									wt_pix_pos <= wt_pix_pos + 1;
									end
wt_pix >=115 && wt_pix <= 125 : begin
									weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
									shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
									//$display("%b", weighted_pixel[wt_pix_pos]);
									wt_pix_pos <= wt_pix_pos + 1;
									end
wt_pix >=128 && wt_pix <= 138 : begin
									weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
									shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
									//$display("%b", weighted_pixel[wt_pix_pos]);
									wt_pix_pos <= wt_pix_pos + 1;
									end
wt_pix >=141 && wt_pix <= 151 : begin
									weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
									shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
									//$display("%b", weighted_pixel[wt_pix_pos]);
									wt_pix_pos <= wt_pix_pos + 1;
									end
wt_pix >=154 && wt_pix <= 164 : begin
									weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
									shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
									//$display("%b", weighted_pixel[wt_pix_pos]);
									wt_pix_pos <= wt_pix_pos + 1;
									end
wt_pix >=167 && wt_pix <= 173 : begin
									weighted_pixel[wt_pix_pos] <= {lfsr_random[10], shift_reg[1023], shift_reg[895],
									shift_reg[767], shift_reg[639], shift_reg[511], shift_reg[383], shift_reg[255], shift_reg[127]};
									//$display("%b", weighted_pixel[wt_pix_pos]);
									wt_pix_pos <= wt_pix_pos + 1;
									end
default : begin
			//weighted_pixel[wt_pix_pos] <= 9'bx;
			//$display(" ");
			//wt_pix_pos <= 9'bx;
			end
endcase

end

end
	
// **---------------------------------------------------------------------------------------------------**
// ** PARALLEL ADDER 																					**
// **---------------------------------------------------------------------------------------------------**

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum00 <= 0;
sum01 <= 0;
sum02 <= 0;
sum03 <= 0;
end
else
begin
sum00 <= weighted_pixel[0] + weighted_pixel[1]+weighted_pixel[2];
sum01 <=  sum00 + weighted_pixel[3]+weighted_pixel[4];
sum02 <= sum01+ weighted_pixel[5]+weighted_pixel[6];
sum03 <= sum02 + weighted_pixel[7];

//$display ("%b", sum01);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum10 <= 0;
sum11 <= 0;
sum12 <= 0;
sum13 <= 0;
end
else
begin
sum10 <= weighted_pixel[8] + weighted_pixel[9]+weighted_pixel[10];
sum11 <=  sum10 + weighted_pixel[11]+weighted_pixel[12];
sum12 <= sum11+ weighted_pixel[13]+weighted_pixel[14];
sum13 <= sum12 + weighted_pixel[15];

//$display ("%b", sum13);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum20 <= 0;
sum21 <= 0;
sum22 <= 0;
sum23 <= 0;
end
else
begin
sum20 <= weighted_pixel[16] + weighted_pixel[17]+weighted_pixel[18];
sum21 <=  sum20 + weighted_pixel[19]+weighted_pixel[20];
sum22 <= sum21+ weighted_pixel[21]+weighted_pixel[22];
sum23 <= sum22 + weighted_pixel[23];

//$display ("%b", sum23);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum30 <= 0;
sum31 <= 0;
sum32 <= 0;
sum33 <= 0;
end
else
begin
sum30 <= weighted_pixel[24] + weighted_pixel[25]+weighted_pixel[26];
sum31 <=  sum30 + weighted_pixel[27]+weighted_pixel[28];
sum32 <= sum31+ weighted_pixel[29]+weighted_pixel[30];
sum33 <= sum32 + weighted_pixel[31];

//$display ("%b", sum33);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum40 <= 0;
sum41 <= 0;
sum42 <= 0;
sum43 <= 0;
end
else
begin
sum40 <= weighted_pixel[32] + weighted_pixel[33]+weighted_pixel[34];
sum41 <=  sum40 + weighted_pixel[35]+weighted_pixel[36];
sum42 <= sum41+ weighted_pixel[37]+weighted_pixel[38];
sum43 <= sum42 + weighted_pixel[39];

//$display ("%b", sum43);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum50 <= 0;
sum51 <= 0;
sum52 <= 0;
sum53 <= 0;
end
else
begin
sum50 <= weighted_pixel[40] + weighted_pixel[41]+weighted_pixel[42];
sum51 <=  sum50 + weighted_pixel[43]+weighted_pixel[44];
sum52 <= sum51+ weighted_pixel[45]+weighted_pixel[46];
sum53 <= sum52 + weighted_pixel[47];

//$display ("%b", sum53);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum60 <= 0;
sum61 <= 0;
sum62 <= 0;
sum63 <= 0;
end
else
begin
sum60 <= weighted_pixel[48] + weighted_pixel[49]+weighted_pixel[50];
sum61 <=  sum60 + weighted_pixel[51]+weighted_pixel[52];
sum62 <= sum61+ weighted_pixel[53]+weighted_pixel[54];
sum63 <= sum62 + weighted_pixel[55];

//$display ("%b", sum63);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum70 <= 0;
sum71 <= 0;
sum72 <= 0;
sum73 <= 0;
end
else
begin
sum70 <= weighted_pixel[56] + weighted_pixel[57]+weighted_pixel[58];
sum71 <=  sum70 + weighted_pixel[59]+weighted_pixel[60];
sum72 <= sum71+ weighted_pixel[61]+weighted_pixel[62];
sum73 <= sum72 + weighted_pixel[63];

//$display ("%b", sum73);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum80 <= 0;
sum81 <= 0;
sum82 <= 0;
sum83 <= 0;
end
else
begin
sum80 <= weighted_pixel[64] + weighted_pixel[65]+weighted_pixel[66];
sum81 <=  sum80 + weighted_pixel[67]+weighted_pixel[68];
sum82 <= sum81+ weighted_pixel[69]+weighted_pixel[70];
sum83 <= sum82 + weighted_pixel[71];

//$display ("%b", sum83);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum90 <= 0;
sum91 <= 0;
sum92 <= 0;
sum93 <= 0;
end
else
begin
sum90 <= weighted_pixel[72] + weighted_pixel[73]+weighted_pixel[74];
sum91 <=  sum90 + weighted_pixel[75]+weighted_pixel[76];
sum92 <= sum91+ weighted_pixel[77]+weighted_pixel[78];
sum93 <= sum92 + weighted_pixel[79];

//$display ("%b", sum93);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum100 <= 0;
sum101 <= 0;
sum102 <= 0;
sum103 <= 0;
end
else
begin
sum100 <= weighted_pixel[80] + weighted_pixel[81]+weighted_pixel[82];
sum101 <=  sum100 + weighted_pixel[83]+weighted_pixel[84];
sum102 <= sum101+ weighted_pixel[85]+weighted_pixel[86];
sum103 <= sum102 + weighted_pixel[87];

//$display ("%b", sum103);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum110 <= 0;
sum111 <= 0;
sum112 <= 0;
sum113 <= 0;
end
else
begin
sum110 <= weighted_pixel[88] + weighted_pixel[89]+weighted_pixel[90];
sum111 <=  sum110 + weighted_pixel[91]+weighted_pixel[92];
sum112 <= sum111+ weighted_pixel[93]+weighted_pixel[94];
sum113 <= sum112 + weighted_pixel[95];

//$display ("%b", sum113);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum120 <= 0;
sum121 <= 0;
sum122 <= 0;
sum123 <= 0;
end
else
begin
sum120 <= weighted_pixel[96] + weighted_pixel[97]+weighted_pixel[98];
sum121 <=  sum120 + weighted_pixel[99]+weighted_pixel[100];
sum122 <= sum121+ weighted_pixel[101]+weighted_pixel[102];
sum123 <= sum122 + weighted_pixel[103];

//$display ("%b", sum123);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum130 <= 0;
sum131 <= 0;
sum132 <= 0;
sum133 <= 0;
end
else
begin
sum130 <= weighted_pixel[104] + weighted_pixel[105]+weighted_pixel[106];
sum131 <=  sum130 + weighted_pixel[107]+weighted_pixel[108];
sum132 <= sum131+ weighted_pixel[109]+weighted_pixel[110];
sum133 <= sum132 + weighted_pixel[111];

//$display ("%b", sum133);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum140 <= 0;
sum141 <= 0;
sum142 <= 0;
sum143 <= 0;
end
else
begin
sum140 <= weighted_pixel[112] + weighted_pixel[113]+weighted_pixel[114];
sum141 <=  sum140 + weighted_pixel[115]+weighted_pixel[116];
sum142 <= sum141+ weighted_pixel[117]+weighted_pixel[118];
sum143 <= sum142 + weighted_pixel[119];

//$display ("%b", sum143);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum150 <= 0;
sum151 <= 0;
sum152 <= 0;
sum153 <= 0;
end
else
begin
sum150 <= weighted_pixel[120] + weighted_pixel[121]+weighted_pixel[122];
sum151 <=  sum150 + weighted_pixel[123]+weighted_pixel[124];
sum152 <= sum151+ weighted_pixel[125]+weighted_pixel[126];
sum153 <= sum152 + weighted_pixel[127];

//$display ("%b", sum153);
end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum160 <= 0;
sum161 <= 0;
end
else
begin

sum160 <= sum03 + sum13+ sum23;
sum161 <=  sum160 +sum33;

end
end
always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum170 <= 0;
sum171 <= 0;
end
else
begin

sum170 <= sum43 + sum53+ sum63;
sum171 <=  sum170 +sum73;

end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum180 <= 0;
sum181 <= 0;
end
else
begin

sum180 <= sum83 + sum93+ sum103;
sum181 <=  sum180 +sum113;

end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum190 <= 0;
sum191 <= 0;
end
else
begin

sum190 <= sum123 + sum133+ sum143;
sum191 <=  sum190 +sum153;

end
end

always @(posedge clk2 or negedge reset_an2)	  
begin
if (!reset_an2 == 1)
begin
sum200 <= 0;
out_stimulus <= 0;
end
else
begin

sum200 <= sum161 + sum171+ sum181;
out_stimulus <=  sum200 +sum191;
//$display("%b", out_stimulus);
end
end

endmodule