`timescale 1ns / 1ps
module streamer_down
#(
  parameter DataWidth = 32
) (
    input counter_clk,
    input reset,
    input [DataWidth-1:0] count_up_to,
    
    output [DataWidth-1:0] count_down,
    output count_valid,
    input count_ready,
    output count_last 
 );
    
    
    reg [31:0] count_reg=0;
    reg [31:0] count_next=0;
    reg valid_out;
    reg last;
    wire ready;
    
    reg [4:0] sample_count;
    reg [4:0] sample_count_next;
    
    always@(posedge counter_clk)
    begin
    if(reset==1'b1|count_reached==1'b1) begin
    count_reg <= {DataWidth{1'b1}};
    sample_count <= 0;
    end
    else 
    if(enable) begin
    count_reg <= count_next;
    sample_count <= sample_count_next;
    end
    end
    
   always @ (posedge counter_clk or posedge reset)
    begin
    if (reset == 1)
    begin
      valid_out <= 0;
    end
    else if(ready)
       valid_out <= 1'b1;    
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
    begin
    count_next = count_reg - 1;
    sample_count_next = sample_count + 1;
    end
    
    assign count_reached = (sample_count==count_up_to);
    assign ready = (valid_out==0) | (valid_out==1);
    assign enable = (ready == 1) & (count_ready == 1);
    assign count_down = count_reg;
    assign count_valid = valid_out;
    assign count_last=last;
 
endmodule