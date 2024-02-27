`timescale 1ns / 1ps
module counter_up_tb(
    );
        
    reg clk;
    reg reset;
    
    wire [31:0] count;
    wire count_valid;
    reg count_ready;
    reg [31:0] count_up_to;
    wire count_last;
    
 streamer_up in_down(
    .counter_clk(clk),
    .reset(reset),
    .count_up_to(count_up_to),
    
    .count_up(count),
    .count_valid(count_valid),
    .count_ready(count_ready),
    .count_last(count_last)
    );
    
    initial 
    begin
    clk=0;
    reset=1;
    count_up_to=20;
    #6 reset=0;
    #80 count_ready=1;
     #480 count_ready=0;
     #20 count_ready=1;
    end
    
    always #5 clk=~clk;
    
    
endmodule
