`timescale 1ns / 1ps
module counter(
input counter_clk,
input reset,
output [31:0] count
    );
    
    reg [31:0] count_reg=0;
    reg [31:0] count_next=0;
    
    always@(posedge counter_clk)
    begin
    if(reset==1'b1)
    count_reg<=32'h0;
    else
    count_reg<=count_next;
    end
    always@(*)
    count_next=count_reg+1;
    assign count=count_reg;
 
endmodule