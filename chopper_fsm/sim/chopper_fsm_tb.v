`timescale 1ns / 1ps

module chopper_fsm_tb(

    );
    
    
  reg clk;
  reg reset;
  
  reg enable;
  reg [31:0] transfer_length;  // assumed to be constant throughout transfer
  reg [23:0] block_size;       // assumed to be constant throughout transfer
  reg [63:0] base_address;     // assumed to be constant throughout transfer
  reg fifo_full;
  
   wire [63:0] fifo_command_address;
   wire [23:0] fifo_command_length;
   wire fifo_last_command;
   wire fifo_write;

    
    
    
 chopper_fsm in888 (
  .clk(clk),
  .reset(reset),

  .enable(enable),
  .transfer_length(transfer_length),
  .block_size(block_size),
  .base_address(base_address),
  .fifo_full(fifo_full),
  
  .fifo_command_address(fifo_command_address),
  .fifo_command_length(fifo_command_length),
  .fifo_last_command(fifo_last_command),
  .fifo_write(fifo_write)
);



 initial
 begin
 clk=0;
 reset=1;
 enable=0;
 fifo_full=0;
 block_size=1024;
 transfer_length=4095;
 base_address=0;
 
 #6 
  reset=0;
  enable=1;



 end
 
 always #5 clk=~clk;
endmodule
