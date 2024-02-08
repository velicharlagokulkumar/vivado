`timescale 1ns / 1ps
module counter_up(
input counter_clk,
input reset,
input [4:0] count_up_to,

output [31:0] count_up,
output count_valid,
input count_ready,
output count_last 
    );
    
    
    reg [31:0] count_reg=0;
    reg [31:0] count_next=0;
    reg valid_out;
    reg last;
    
    always@(posedge counter_clk)
    begin
    if(reset==1'b1|count_reached==1'b1)
    count_reg<=0;
    else if(count_ready)
    count_reg<=count_next;
    end
    
   always @ (posedge counter_clk or posedge reset)
    begin
    if (reset == 1)
    begin
      valid_out <= 0;
    end
    else if(ready)
       valid_out = 1;    
    end
    
  always @ (posedge counter_clk or posedge reset)
   begin
    if (reset == 1)
    begin
      last <= 0;
    end
    else if(count_reached)
       last <= 1;
       else
       last <= 0;    
    end
    
    
    always@(*)
    count_next=count_reg+1;
    
    
    assign count_reached=(count_reg==count_up_to);
    assign ready = (count_ready == 1);
    assign count_up = count_reg;
    assign count_valid = valid_out;
    assign count_last=last;
 
endmodule