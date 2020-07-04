module fifo1_tb();
reg wclk,rclk;
reg[127:0] wdata;
wire[127:0] rdata;
wire rempty,wfull;
reg rrst_n;
reg wrst_n;
reg winc,rinc;
fifo1 f1(.wdata(wdata),
.rdata(rdata),
.wclk(wclk),
.rclk(rclk),
.wrst_n(wrst_n),
.rrst_n(rrst_n),
.winc(winc) ,
.rinc(rinc),
.rempty(rempty),
.wfull(wfull));
initial
begin
#0 wdata=8'h0;
#128_000 wdata=8'h1; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h2;
#128_000 wdata=8'h3;
#128_000 wdata=8'h4;
#128_000 wdata=8'h5;
#128_000 wdata=8'h6;
#128_000 wdata=8'h7;
#128_000 wdata=8'h8;
#128_000 wdata=8'h9;
#128_000 wdata=8'hA;
#128_000 wdata=8'hB;
#128_000 wdata=8'hC;
#128_000 wdata=8'hD;
#128_000 wdata=8'hE;
#128_000 wdata=8'hF;
#128_000 wdata=8'h10;
#128_000 wdata=8'h11;
#128_000 wdata=8'h12;
#128_000 wdata=8'h13;
#128_000 wdata=8'h14;
#128_000 wdata=8'h15;
#128_000 wdata=8'h16;
#128_000 wdata=8'h17; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h18;
#128_000 wdata=8'h19;
#128_000 wdata=8'h1A;
#128_000 wdata=8'h1B;
#128_000 wdata=8'h1C;
#128_000 wdata=8'h1D;
#128_000 wdata=8'h1E;
#128_000 wdata=8'h1F;
#128_000 wdata=8'h20;
#128_000 wdata=8'h21;
#128_000 wdata=8'h22;
#128_000 wdata=8'h23;
#128_000 wdata=8'h24;
#128_000 wdata=8'h25;
#128_000 wdata=8'h26;
#128_000 wdata=8'h27;
#128_000 wdata=8'h28;
#128_000 wdata=8'h29;
#128_000 wdata=8'h2A;
#128_000 wdata=8'h2B;
#128_000 wdata=8'h2C;
#128_000 wdata=8'h2D;
#128_000 wdata=8'h2E;
#128_000 wdata=8'h2F;
#128_000 wdata=8'h30;
#128_000 wdata=8'h31;
#128_000 wdata=8'h32;
#128_000 wdata=8'h33; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h34;
#128_000 wdata=8'h35;
#128_000 wdata=8'h36;
#128_000 wdata=8'h37;
#128_000 wdata=8'h38;
#128_000 wdata=8'h39;
#128_000 wdata=8'h3A;
#128_000 wdata=8'h3B;
#128_000 wdata=8'h3C;
#128_000 wdata=8'h3D;
#128_000 wdata=8'h3E;
#128_000 wdata=8'h3F;
#128_000 wdata=8'h40;
#128_000 wdata=8'h41;
#128_000 wdata=8'h42;
#128_000 wdata=8'h43;
#128_000 wdata=8'h44;
#128_000 wdata=8'h45;
#128_000 wdata=8'h46;
#128_000 wdata=8'h47;
#128_000 wdata=8'h48;
#128_000 wdata=8'h49; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h4A;
#128_000 wdata=8'h4B;
#128_000 wdata=8'h4C;
#128_000 wdata=8'h4D;
#128_000 wdata=8'h4E;
#128_000 wdata=8'h4F;
#128_000 wdata=8'h50;
#128_000 wdata=8'h51;
#128_000 wdata=8'h52;
#128_000 wdata=8'h53;
#128_000 wdata=8'h54;
#128_000 wdata=8'h55;
#128_000 wdata=8'h56;
#128_000 wdata=8'h57;
#128_000 wdata=8'h58;
#128_000 wdata=8'h59;
#128_000 wdata=8'h5A;
#128_000 wdata=8'h5B;
#128_000 wdata=8'h5C;
#128_000 wdata=8'h5D;
#128_000 wdata=8'h5E;
#128_000 wdata=8'h5F;
#128_000 wdata=8'h60;
#128_000 wdata=8'h61;
#128_000 wdata=8'h62;
#128_000 wdata=8'h63;
#128_000 wdata=8'h64;
#128_000 wdata=8'h65; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h66;
#128_000 wdata=8'h67;
#128_000 wdata=8'h68;
#128_000 wdata=8'h69;
#128_000 wdata=8'h6A;
#128_000 wdata=8'h6B;
#128_000 wdata=8'h6C;
#128_000 wdata=8'h6D;
#128_000 wdata=8'h6E;
#128_000 wdata=8'h6F;
#128_000 wdata=8'h70;
#128_000 wdata=8'h71;
#128_000 wdata=8'h72;
#128_000 wdata=8'h73;
#128_000 wdata=8'h74;
#128_000 wdata=8'h75;
#128_000 wdata=8'h76;
#128_000 wdata=8'h77;
#128_000 wdata=8'h78;
#128_000 wdata=8'h79;
#128_000 wdata=8'h7A;
#128_000 wdata=8'h7B;
#128_000 wdata=8'h7C;
#128_000 wdata=8'h7D;
#128_000 wdata=8'h7E;
#128_000 wdata=8'h7F;
#128_000 wdata=8'h80;
#128_000 wdata=8'h81; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h82;
#128_000 wdata=8'h83;
#128_000 wdata=8'h84;
#128_000 wdata=8'h85;
#128_000 wdata=8'h86;
#128_000 wdata=8'h87;
#128_000 wdata=8'h88;
#128_000 wdata=8'h89;
#128_000 wdata=8'h8A;
#128_000 wdata=8'h8B;
#128_000 wdata=8'h8C;
#128_000 wdata=8'h8D;
#128_000 wdata=8'h8E;
#128_000 wdata=8'h8F;
#128_000 wdata=8'h90;
#128_000 wdata=8'h91;
#128_000 wdata=8'h92;
#128_000 wdata=8'h93;
#128_000 wdata=8'h94;
#128_000 wdata=8'h95;
#128_000 wdata=8'h96;
#128_000 wdata=8'h97; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'h98;
#128_000 wdata=8'h99;
#128_000 wdata=8'h9A;
#128_000 wdata=8'h9B;
#128_000 wdata=8'h9C;
#128_000 wdata=8'h9D;
#128_000 wdata=8'h9E;
#128_000 wdata=8'h9F;
#128_000 wdata=8'hA0;
#128_000 wdata=8'hA1;
#128_000 wdata=8'hA2;
#128_000 wdata=8'hA3;
#128_000 wdata=8'hA4;
#128_000 wdata=8'hA5;
#128_000 wdata=8'hA6;
#128_000 wdata=8'hA7; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'hA8;
#128_000 wdata=8'hA9;
#128_000 wdata=8'hAA;
#128_000 wdata=8'hAB;
#128_000 wdata=8'hAC;
#128_000 wdata=8'hAD;
#128_000 wdata=8'hAE;
#128_000 wdata=8'hAF;
#128_000 wdata=8'hB0;
#128_000 wdata=8'hB1;
#128_000 wdata=8'hB2;
#128_000 wdata=8'hB3;
#128_000 wdata=8'hB4;
#128_000 wdata=8'hB5;
#128_000 wdata=8'hB6;
#128_000 wdata=8'hB7; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'hB8;
#128_000 wdata=8'hB9;
#128_000 wdata=8'hBA;
#128_000 wdata=8'hBB;
#128_000 wdata=8'hBC;
#128_000 wdata=8'hBD;
#128_000 wdata=8'hBE;
#128_000 wdata=8'hBF;
#128_000 wdata=8'hC0;
#128_000 wdata=8'hC1;
#128_000 wdata=8'hC2;
#128_000 wdata=8'hC3;
#128_000 wdata=8'hC4;
#128_000 wdata=8'hC5;
#128_000 wdata=8'hC6;
#128_000 wdata=8'hC7; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'hC8;
#128_000 wdata=8'hC9;
#128_000 wdata=8'hCA;
#128_000 wdata=8'hCB;
#128_000 wdata=8'hCC;
#128_000 wdata=8'hCD;
#128_000 wdata=8'hCE;
#128_000 wdata=8'hCF;
#128_000 wdata=8'hD0;
#128_000 wdata=8'hD1;
#128_000 wdata=8'hD2;
#128_000 wdata=8'hD3;
#128_000 wdata=8'hD4;
#128_000 wdata=8'hD5;
#128_000 wdata=8'hD6;
#128_000 wdata=8'hD7; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'hD8;
#128_000 wdata=8'hD9;
#128_000 wdata=8'hDA;
#128_000 wdata=8'hDB;
#128_000 wdata=8'hDC;
#128_000 wdata=8'hDD;
#128_000 wdata=8'hDE;
#128_000 wdata=8'hDF;
#128_000 wdata=8'hE0;
#128_000 wdata=8'hE1;
#128_000 wdata=8'hE2;
#128_000 wdata=8'hE3;
#128_000 wdata=8'hE4;
#128_000 wdata=8'hE5;
#128_000 wdata=8'hE6;
#128_000 wdata=8'hE7; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'hE8;
#128_000 wdata=8'hE9;
#128_000 wdata=8'hEA;
#128_000 wdata=8'hEB;
#128_000 wdata=8'hEC;
#128_000 wdata=8'hED;
#128_000 wdata=8'hEE;
#128_000 wdata=8'hEF;
#128_000 wdata=8'hF0;
#128_000 wdata=8'hF1;
#128_000 wdata=8'hF2;
#128_000 wdata=8'hF3;
#128_000 wdata=8'hF4;
#128_000 wdata=8'hF5;
#128_000 wdata=8'hF6;
#128_000 wdata=8'hF7; // DATA WHICH IS SUPPLIED
#128_000 wdata=8'hF8;
#128_000 wdata=8'hF9;
#128_000 wdata=8'hFA;
#128_000 wdata=8'hFB;
#128_000 wdata=8'hFC;
#128_000 wdata=8'hFD;
#128_000 wdata=8'hFE;
#128_000 wdata=8'hFF;
#128_000 wdata=12'h100;
#128_000 wdata=12'h101;
#128_000 wdata=12'h102;
#128_000 wdata=12'h103;
#128_000 wdata=12'h104;
#128_000 wdata=12'h105;
#128_000 wdata=12'h106;
#128_000 wdata=12'h107;
#128_000 wdata=12'h108;
#128_000 wdata=12'h109;
#128_000 wdata=12'h10A;
#128_000 wdata=12'h10B;
#128_000 wdata=12'h10C;
#128_000 wdata=12'h10D;
#128_000 wdata=12'h10E;
#128_000 wdata=12'h10F;
#128_000 wdata=12'h110;
#128_000 wdata=12'h111;
#128_000 wdata=12'h112;
#128_000 wdata=12'h113; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h114;
#128_000 wdata=12'h115;
#128_000 wdata=12'h116;
#128_000 wdata=12'h117;
#128_000 wdata=12'h118;
#128_000 wdata=12'h119;
#128_000 wdata=12'h11A;
#128_000 wdata=12'h11B;
#128_000 wdata=12'h11C;
#128_000 wdata=12'h11D;
#128_000 wdata=12'h11E;
#128_000 wdata=12'h11F;
#128_000 wdata=12'h120;
#128_000 wdata=12'h121;
#128_000 wdata=12'h122;
#128_000 wdata=12'h123;
#128_000 wdata=12'h124;
#128_000 wdata=12'h125;
#128_000 wdata=12'h126;
#128_000 wdata=12'h127;
#128_000 wdata=12'h128;
#128_000 wdata=12'h129; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h12A;
#128_000 wdata=12'h12B;
#128_000 wdata=12'h12C;
#128_000 wdata=12'h12D;
#128_000 wdata=12'h12E;
#128_000 wdata=12'h12F;
#128_000 wdata=12'h130;
#128_000 wdata=12'h131;
#128_000 wdata=12'h132;
#128_000 wdata=12'h133;
#128_000 wdata=12'h134;
#128_000 wdata=12'h135;
#128_000 wdata=12'h136;
#128_000 wdata=12'h137;
#128_000 wdata=12'h138;
#128_000 wdata=12'h139;
#128_000 wdata=12'h13A;
#128_000 wdata=12'h13B;
#128_000 wdata=12'h13C;
#128_000 wdata=12'h13D;
#128_000 wdata=12'h13E;
#128_000 wdata=12'h13F;
#128_000 wdata=12'h140;
#128_000 wdata=12'h141;
#128_000 wdata=12'h142;
#128_000 wdata=12'h143;
#128_000 wdata=12'h144;
#128_000 wdata=12'h145; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h146;
#128_000 wdata=12'h147;
#128_000 wdata=12'h148;
#128_000 wdata=12'h149;
#128_000 wdata=12'h14A;
#128_000 wdata=12'h14B;
#128_000 wdata=12'h14C;
#128_000 wdata=12'h14D;
#128_000 wdata=12'h14E;
#128_000 wdata=12'h14F;
#128_000 wdata=12'h150;
#128_000 wdata=12'h151;
#128_000 wdata=12'h152;
#128_000 wdata=12'h153;
#128_000 wdata=12'h154;
#128_000 wdata=12'h155;
#128_000 wdata=12'h156;
#128_000 wdata=12'h157;
#128_000 wdata=12'h158;
#128_000 wdata=12'h159;
#128_000 wdata=12'h15A;
#128_000 wdata=12'h15B;
#128_000 wdata=12'h15C;
#128_000 wdata=12'h15D;
#128_000 wdata=12'h15E;
#128_000 wdata=12'h15F;
#128_000 wdata=12'h160;
#128_000 wdata=12'h161; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h162;
#128_000 wdata=12'h163;
#128_000 wdata=12'h164;
#128_000 wdata=12'h165;
#128_000 wdata=12'h166;
#128_000 wdata=12'h167;
#128_000 wdata=12'h168;
#128_000 wdata=12'h169;
#128_000 wdata=12'h16A;
#128_000 wdata=12'h16B;
#128_000 wdata=12'h16C;
#128_000 wdata=12'h16D;
#128_000 wdata=12'h16E;
#128_000 wdata=12'h16F;
#128_000 wdata=12'h170;
#128_000 wdata=12'h171;
#128_000 wdata=12'h172;
#128_000 wdata=12'h173;
#128_000 wdata=12'h174;
#128_000 wdata=12'h175;
#128_000 wdata=12'h176; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h177;
#128_000 wdata=12'h178;
#128_000 wdata=12'h179;
#128_000 wdata=12'h17A;
#128_000 wdata=12'h17B;
#128_000 wdata=12'h17C;
#128_000 wdata=12'h17D;
#128_000 wdata=12'h17E;
#128_000 wdata=12'h17F;
#128_000 wdata=12'h180;
#128_000 wdata=12'h181;
#128_000 wdata=12'h182;
#128_000 wdata=12'h183;
#128_000 wdata=12'h184;
#128_000 wdata=12'h185;
#128_000 wdata=12'h186;
#128_000 wdata=12'h187;
#128_000 wdata=12'h188;
#128_000 wdata=12'h189;
#128_000 wdata=12'h18A;
#128_000 wdata=12'h18B;
#128_000 wdata=12'h18C;
#128_000 wdata=12'h18D;
#128_000 wdata=12'h18E;
#128_000 wdata=12'h18F;
#128_000 wdata=12'h190;
#128_000 wdata=12'h191;
#128_000 wdata=12'h192; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h193;
#128_000 wdata=12'h194;
#128_000 wdata=12'h195;
#128_000 wdata=12'h196;
#128_000 wdata=12'h197;
#128_000 wdata=12'h198;
#128_000 wdata=12'h199;
#128_000 wdata=12'h19A;
#128_000 wdata=12'h19B;
#128_000 wdata=12'h19C;
#128_000 wdata=12'h19D;
#128_000 wdata=12'h19E;
#128_000 wdata=12'h19F;
#128_000 wdata=12'h1A0;
#128_000 wdata=12'h1A1;
#128_000 wdata=12'h1A2;
#128_000 wdata=12'h1A3;
#128_000 wdata=12'h1A4;
#128_000 wdata=12'h1A5;
#128_000 wdata=12'h1A6;
#128_000 wdata=12'h1A7; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h1A8;
#128_000 wdata=12'h1A9;
#128_000 wdata=12'h1AA;
#128_000 wdata=12'h1AB;
#128_000 wdata=12'h1AC;
#128_000 wdata=12'h1AD;
#128_000 wdata=12'h1AE;
#128_000 wdata=12'h1AF;
#128_000 wdata=12'h1B0;
#128_000 wdata=12'h1B1;
#128_000 wdata=12'h1B2;
#128_000 wdata=12'h1B3;
#128_000 wdata=12'h1B4;
#128_000 wdata=12'h1B5;
#128_000 wdata=12'h1B6;
#128_000 wdata=12'h1B7; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h1B8;
#128_000 wdata=12'h1B9;
#128_000 wdata=12'h1BA;
#128_000 wdata=12'h1BB;
#128_000 wdata=12'h1BC;
#128_000 wdata=12'h1BD;
#128_000 wdata=12'h1BE;
#128_000 wdata=12'h1BF;
#128_000 wdata=12'h1C0;
#128_000 wdata=12'h1C1;
#128_000 wdata=12'h1C2;
#128_000 wdata=12'h1C3;
#128_000 wdata=12'h1C4;
#128_000 wdata=12'h1C5;
#128_000 wdata=12'h1C6;
#128_000 wdata=12'h1C7; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h1C8;
#128_000 wdata=12'h1C9;
#128_000 wdata=12'h1CA;
#128_000 wdata=12'h1CB;
#128_000 wdata=12'h1CC;
#128_000 wdata=12'h1CD;
#128_000 wdata=12'h1CE;
#128_000 wdata=12'h1CF;
#128_000 wdata=12'h1D0;
#128_000 wdata=12'h1D1;
#128_000 wdata=12'h1D2;
#128_000 wdata=12'h1D3;
#128_000 wdata=12'h1D4;
#128_000 wdata=12'h1D5;
#128_000 wdata=12'h1D6;
#128_000 wdata=12'h1D7; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h1D8;
#128_000 wdata=12'h1D9;
#128_000 wdata=12'h1DA;
#128_000 wdata=12'h1DB;
#128_000 wdata=12'h1DC;
#128_000 wdata=12'h1DD;
#128_000 wdata=12'h1DE;
#128_000 wdata=12'h1DF;
#128_000 wdata=12'h1E0;
#128_000 wdata=12'h1E1;
#128_000 wdata=12'h1E2;
#128_000 wdata=12'h1E3;
#128_000 wdata=12'h1E4;
#128_000 wdata=12'h1E5;
#128_000 wdata=12'h1E6;
#128_000 wdata=12'h1E7; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h1E8;
#128_000 wdata=12'h1E9;
#128_000 wdata=12'h1EA;
#128_000 wdata=12'h1EB;
#128_000 wdata=12'h1EC;
#128_000 wdata=12'h1ED;
#128_000 wdata=12'h1EE;
#128_000 wdata=12'h1EF;
#128_000 wdata=12'h1F0;
#128_000 wdata=12'h1F1;
#128_000 wdata=12'h1F2;
#128_000 wdata=12'h1F3;
#128_000 wdata=12'h1F4;
#128_000 wdata=12'h1F5;
#128_000 wdata=12'h1F6;
#128_000 wdata=12'h1F7; // DATA WHICH IS SUPPLIED
#128_000 wdata=12'h1F8;
#128_000 wdata=12'h1F9;
#128_000 wdata=12'h1FA;
#128_000 wdata=12'h1FB;
#128_000 wdata=12'h1FC;
#128_000 wdata=12'h1FD;
#128_000 wdata=12'h1FE;
#128_000 wdata=12'h1FF;
#128_000 wdata=12'h200;
$finish;
end

initial
begin
wclk=1'b0;
winc=1'b0;
rinc=1'b0;
end

//initial
always
begin
#64000 wclk=~wclk; //end // READ AND WRITE CLOCK GENERATION
rclk=1'b0;
end

//initial
//begin
always
#500 rclk=~rclk;
//end

initial
rrst_n=1'b0;
//begin

initial
#5000 rrst_n=1'b1;
//end

initial
wrst_n =1'b0;

initial
#5000 wrst_n=1'b1;

initial
#5000 winc=1'b1;

initial
# 50000 rinc=1'b1;

//initial
//begin
//#1000000000 $finish; 
//end

initial
$monitor( "$time wdata, rdata = %d %d",$time, wdata, rdata);

endmodule