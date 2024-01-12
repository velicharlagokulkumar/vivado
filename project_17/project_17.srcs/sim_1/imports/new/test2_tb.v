`timescale 1ns / 1ps

module test2_tb(
    );
    
    reg counter_clk;
    reg reset;
    wire [31:0] count;
 
counter in56(
.counter_clk(counter_clk),
.reset(reset),
.count(count)
    );
    
initial
    begin counter_clk=1;
    reset=1;
    #5 reset=0;
end

always #5 counter_clk=~counter_clk;

endmodule
