`timescale 1ns / 1ps

module one_hot_tb(
    );
    
    
    reg clk;
    reg reset;
    reg load_start;
    
 state_machine_one_hot_ring in39(
 .clk(clk),
 .reset(reset),
 .load_start(load_start)
 );
 
 initial
 begin
 clk=0;
 load_start=0;
 #5 reset=1;
 reset=0;
 load_start=1;
 #60 load_start=0;
 end
 
 always #5 clk=~clk;
   
endmodule
