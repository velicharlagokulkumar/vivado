`timescale 1ns / 1ps
module xilinx_fifo_tb(
    );
   
    reg clk;
    reg srst;
    wire [31 : 0] din;
    reg wr_en;
    reg rd_en;
    wire [31 : 0] dout;
    wire full;
    wire empty;
    wire wr_rst_busy;
    wire rd_rst_busy;
     
fifo_xilinx in678(
    .clk(clk),
    .srst(srst),
    .din(din),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .dout(dout),
    .full(full),
    .empty(empty),
    .wr_rst_busy(wr_rst_busy),
    .rd_rst_busy(rd_rst_busy)
);


counter in590(
.counter_clk(clk),
.start_count(1'b1),
.reset(srst),
.count(din)
    );
    
initial
begin
clk=0;
srst=1;
#6 srst=0;
wr_en=1;
rd_en=0;
end

always #5 clk=~clk;

endmodule
