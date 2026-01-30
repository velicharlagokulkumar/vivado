`timescale 1ns / 1ps

module d_ff(
   input clk,
   input rst_n,
   input set_n,
   input [2:0] d_in,
   output logic [2:0] d_ff
    );
    
logic [2:0] d_ff_2 ;
    
always_ff @ (posedge clk or negedge rst_n or negedge set_n) begin
  if(!rst_n) begin
    d_ff <= 'd0;
  end 
  else if(!set_n) begin
    d_ff <= 'b111;
  end
  else begin
    d_ff <= d_in;
 end
 end
 
 // follower flop's
 always_ff @ (posedge clk)
    d_ff_2 <= d_ff; 
    
 // synopsys  translate_off
 always @(rst_n or set_n)
    if (rst_n && !set_n)
        force d_ff ='b111;
    else 
        release d_ff;
 // synopsys translate_on

endmodule
