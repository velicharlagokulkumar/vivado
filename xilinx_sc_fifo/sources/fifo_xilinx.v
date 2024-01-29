`timescale 1ns / 1ps
module fifo_xilinx(
    clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy
);
    
    input clk;
    input srst;
    input wire [31 : 0] din;
    input wr_en;
    input rd_en;
    output wire [31 : 0] dout;
    output full;
    output empty;
    output wr_rst_busy;
    output rd_rst_busy;
    
 fifo_generator_0 in474 (
  .clk(clk),                  // input wire clk
  .srst(srst),                // input wire srst
  .din(din),                  // input wire [31 : 0] din
  .wr_en(wr_en),              // input wire wr_en
  .rd_en(rd_en),              // input wire rd_en
  .dout(dout),                // output wire [31 : 0] dout
  .full(full),                // output wire full
  .empty(empty),              // output wire empty
  .wr_rst_busy(wr_rst_busy),  // output wire wr_rst_busy
  .rd_rst_busy(rd_rst_busy)  // output wire rd_rst_busy   
    );
    
endmodule
