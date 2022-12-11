`timescale 1ns / 1ps
module vio_wrapper(
    input clk
    );
    wire reset;
    wire [31:0] sum;
   vio_0 in6 (
  .clk(clk),                // input wire clk
  .probe_in0(sum) ,   // input wire [7 : 0] probe_in0
  .probe_out0(reset) // output wire [0 : 0] probe_out0
);
top_module(.clk_125M(clk),.reset(reset),.sum(sum));
endmodule
