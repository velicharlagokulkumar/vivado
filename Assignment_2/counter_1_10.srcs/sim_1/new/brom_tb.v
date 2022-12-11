`timescale 1ns / 1ps
module brom_tb(
    );
    reg clk=0;
    wire [31:0] fibout;
    top_bram tb3(.clk(clk),.sum(fibout));
    always #5 clk=~clk;
endmodule
