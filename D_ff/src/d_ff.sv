`timescale 1ns / 1ps

module d_ff(
   input clk,
   input rst_n,
   input [2:0] d_in,
   output logic [2:0] d_ff
    );
    
logic [2:0] d_ff_2 ;
    
always_ff @ (posedge clk or negedge rst_n) begin
  if(~rst_n) begin
    d_ff <= 0;
    d_ff_2 <= 0;
  end 
  else begin
    d_ff <= d_in;
    d_ff_2 <= d_ff;
 end
 end

endmodule
