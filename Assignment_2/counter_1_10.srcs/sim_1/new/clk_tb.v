`timescale 1ns / 1ps
module clock_tb(

    );
    reg clk_in;
    wire divided_clk;
    clk_divider tb1(.clk_in(clk_in),.divided_clk(divided_clk));
    initial 
    clk_in=1'b0;
    always #100 clk_in=~clk_in;
    
endmodule
