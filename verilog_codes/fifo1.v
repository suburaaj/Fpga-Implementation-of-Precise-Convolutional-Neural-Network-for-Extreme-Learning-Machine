module fifo1 (rdata, wfull, rempty, wdata, winc, wclk, wrst_n, rinc, rclk, rrst_n); 

parameter DSIZE = 128;
parameter ASIZE = 9; // 2^9 = 512 

output [DSIZE-1:0] rdata;//fifo dataout
output wfull;
output rempty;

input [DSIZE-1:0] wdata;//fifo datain
input winc, wclk, wrst_n;//winc = fifo_writecounter, clk1
input rinc, rclk, rrst_n;//rinc = fifo_readcounter

wire [ASIZE-1:0] waddr, raddr;
wire [ASIZE:0] wptr, rptr, wq2_rptr, rq2_wptr;

sync_r2w sync_r2w (.wq2_rptr(wq2_rptr), .rptr(rptr), .wclk(wclk), .wrst_n(wrst_n));

sync_w2r sync_w2r (.rq2_wptr(rq2_wptr), .wptr(wptr), .rclk(rclk), .rrst_n(rrst_n));

fifomem fifomem (.rdata(rdata), .wdata(wdata), .waddr(waddr), .raddr(raddr), .wclken(winc), .wfull(wfull), .wclk(wclk));

rptr_empty rptr_empty (.rempty(rempty), .raddr(raddr), .rptr(rptr), .rq2_wptr(rq2_wptr), .rinc(rinc), .rclk(rclk), .rrst_n(rrst_n));

wptr_full wptr_full (.wfull(wfull), .waddr(waddr), .wptr(wptr), .wq2_rptr(wq2_rptr), .winc(winc), .wclk(wclk), .wrst_n(wrst_n));

endmodule