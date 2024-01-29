`timescale 1ns / 1ps
module state_machine_one_hot_ring(
 clk,
 reset,
 load_start
 );
    
    input clk;
    input reset;
    input load_start;
    
    reg [2:0] state;
    wire flush_state_pipeline;
    wire initialize;
      
    always @ (posedge clk or posedge reset)
    begin
    if (reset == 1)
    
    begin
      state <= 0;
    end
    
    else
    
    begin
      if (flush_state_pipeline == 1)
      begin
        state <= 0;
      end
      else if (initialize == 1)
      begin
        state <= 3'b001;
      end
      else
      begin
        state <= {state[1], state[0], state[2]};
      end
    end
  end
  
 assign initialize = (load_start == 1);
endmodule
