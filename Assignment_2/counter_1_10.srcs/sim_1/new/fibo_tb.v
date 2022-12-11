`timescale 1ns / 1ps
module fibo_tb(
    );
    reg fibo_clk,reset;
    wire [31:0] sum ;
    fibo tb1(.clk(fibo_clk),.rst(reset),.fibout(sum));
    initial
    begin
    fibo_clk=1'b0;
    reset=1'b1;
    end
    initial 
    begin
    #5 reset=1'b1;
    #30 reset =1'b0;
    #60 reset=1'b1;
    #30 reset =1'b0;
    end
    always #5 fibo_clk=~fibo_clk;
endmodule


