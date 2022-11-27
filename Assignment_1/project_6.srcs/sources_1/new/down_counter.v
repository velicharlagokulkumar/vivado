`timescale 1ns / 1ps
module down_counter(counter,zero_flag,clk,COUNT_IN,latch,dec,divide_by_two);
input clk,latch,dec,divide_by_two;
input [7:0] COUNT_IN;
output [7:0] counter;
output reg zero_flag=0;
reg [7:0] counter_down=0;

always @(posedge clk)
begin

if(latch)
counter_down <= COUNT_IN;

if(dec&latch==0)
if(counter_down==0)
begin
zero_flag=1;
end
else
begin
counter_down <= counter_down-1;
zero_flag=0;
end

if(divide_by_two&latch==0&dec==0)
counter_down <= counter_down/2;
end

assign counter = counter_down;
endmodule
