
`timescale 1ns / 1ps
module rwg (clk2, en_lfsr, en_lfsr1, en_lfsr2, en_lfsr3, en_lfsr4, en_lfsr5, en_lfsr6, en_lfsr7, en_lfsr8, en_lfsr9, en_lfsr10, en_lfsr11, lfsr_random);

input clk2;

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

output reg [10:0] lfsr_random;
wire lfsr_feedback = lfsr_random[10] ^ lfsr_random[8];
integer lfsr_count;

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
  
  lfsr_random <= {lfsr_feedback, lfsr_random[10:1]}; //shift right the xor'd every posedge clock
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

endmodule