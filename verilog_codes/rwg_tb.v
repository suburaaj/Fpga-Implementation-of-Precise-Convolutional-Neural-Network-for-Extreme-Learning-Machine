module rwg_tb();

reg clk2;

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

wire [10:0] lfsr_random;

rwg r1 (.clk2(clk2), .en_lfsr(en_lfsr), .en_lfsr1(en_lfsr1), .en_lfsr2(en_lfsr2), .en_lfsr3(en_lfsr3), .en_lfsr4(en_lfsr4), .en_lfsr5(en_lfsr5), .en_lfsr6(en_lfsr6), 
.en_lfsr7(en_lfsr7), .en_lfsr8(en_lfsr8), .en_lfsr9(en_lfsr9), .en_lfsr10(en_lfsr10), .en_lfsr11(en_lfsr11), .lfsr_random(lfsr_random));

initial
begin
clk2 = 1'b0;
end

always 
begin
#500 clk2 = ~clk2; 
end

initial
begin

#1000 en_lfsr=0; //$finish;
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
#11000 //$finish;

#1000 en_lfsr=0; //$finish;
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
#11000 //$finish;

#1000 en_lfsr=0; //$finish;
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
#11000 //$finish;

#1000 en_lfsr=0; //$finish;
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
#11000 //$finish;

#1000 en_lfsr=0; //$finish;
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
#11000 $finish;

end

initial
$monitor( "$time lfsr_random = %b",lfsr_random);

endmodule