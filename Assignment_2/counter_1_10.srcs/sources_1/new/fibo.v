`timescale 1ns / 1ps
module fibo (clk, rst, fibout);
input clk;
input rst;
output [31:0] fibout;
reg [31:0] prev_val;
reg [31:0] curr_val;
always@(posedge clk or posedge rst)
begin
if (rst==1'b1)
begin
prev_val<= 12'b0; //PREVIOUS VALUE 
curr_val<= 12'b1; //CURRENT VALUE
end
else if (clk == 1'b1)
begin
prev_val<= curr_val;
curr_val<= curr_val+ prev_val;
end
end
assign fibout = prev_val;
endmodule