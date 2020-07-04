`timescale 1ns / 1ps

module RF_generation(clk1, reset_an1, pattern);

reg [7:0] mem[0:783];

reg [7:0]region[0:127];
integer step_region = 0; //step size for iterating over region array
integer region_index; // represents index of the region array

output reg [127:0]pattern;
integer pat_bit_index; //index of 128-bit pattern array
integer pix_index; // represents index of 8-bit pixel array

input clk1, reset_an1; //clk1 to wclk in fifo, asynchronous negative reset

initial
begin

#10
//$readmemb("\/home\/userdata\/18mvd0072\/thesis\/inputBin5.txt",mem);// reads text file and store it in 
//mem array ----------------->(ASIC CHANGES)
$readmemb("C:\\Users\\Rajavarshini\\Desktop\\hardware implementation\\inputBin5.txt",mem);// reads text file and store it in mem array
end

// **---------------------------------------------------------------------------------------------------**
// ** GENERATING INPUT PATTERN 																			**
// **---------------------------------------------------------------------------------------------------**

always @(posedge clk1 or negedge reset_an1)
begin
if (!reset_an1 == 1)
begin
for(region_index = 0;region_index <=127;region_index = region_index + 1)
begin
for(pix_index = 7;pix_index >= 0;pix_index = pix_index - 1)
begin
region[region_index][pix_index] <= 0;

end

end
end
else
begin


for(region_index = 0;region_index <=127;region_index = region_index + 1)
begin
for(pix_index = 7;pix_index >= 0;pix_index = pix_index - 1)
begin
region[region_index][pix_index] <= mem[region_index + step_region][pix_index]; //In every postive edge of clock, 128 pixels are 
//copied to region array 
//$display("%b", region[region_index][pix_index]);
end
//$display("%b", region[region_index]);
end
step_region <= step_region + 16;
if (step_region == 784) //16(step size) multiplied by 49 (maximum no. of shift) is 784
begin

step_region <= 0;

end
end

end
/*
always @(posedge clk1 or posedge reset_an1) //NOT SUPPORTED IN FPGA
begin
  if (!reset_an1 == 0)
    begin
if (step_region == 784) //16(step size) multiplied by 49 (maximum no. of shift) is 784
begin

step_region <= 0;

end
end
end
*/
always @(posedge clk1 or negedge reset_an1)
begin
  if (!reset_an1 == 1)
    begin
      for (pat_bit_index = 0;pat_bit_index <= 127;pat_bit_index = pat_bit_index + 1)
      begin
        pattern[pat_bit_index] <= 0;
      end
    end
    else
      begin

        pattern <= {region[0], region[1], region[2], region[3], 
        region[4], region[5], region[6], region[7], 
        region[8], region[9], region[10], region[11],
        region[12], region[13], region[14], region[15]}; //In every positive edge of clock, 16 pixels are copied to pattern
		//$display("%b", pattern);		
      end

    end
	
	endmodule