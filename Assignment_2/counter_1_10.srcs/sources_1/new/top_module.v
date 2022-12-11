`timescale 1ns / 1ps
module top_module(
    input clk_125M,
    input reset,
    //output [7:0] count,
    output [31:0] sum  
    );
    wire clk_5M,clk_1H; 
      clk_wiz_0 in1
   (
    // Clock out portss
    .clk_out1(clk_5M),     // output clk_out1
   // Clock in ports
    .clk_in1(clk_125M)      // input clk_in1
);
clk_divider in2(.clk_in(clk_5M),.divided_clk(clk_1H));
//counter in3(.counter_clk(clk_1H),.reset(reset),.count(count));

top_bram in3(.clk(clk_1H),.clk2(clk_125M),.rst(reset),.sum(sum));
endmodule
