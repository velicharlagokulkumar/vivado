`timescale 1ns / 1ps
 
 module pattern_writer_tb(
    );
     
  parameter ADDRESS_WIDTH = 32;          // derived parameter (using system info)
  parameter LENGTH_WIDTH = 32;           // any value from 4-32 (larger the value the slower the logic will be), LENGTH_WIDTH shouldn't be larger than ADDRESS_WIDTH and should be reduced to increase the Fmax of the master.
  parameter DATA_WIDTH = 32;             // 16, 32, 64, 128, 256, 512, 1024 are valid choices
  parameter BYTE_ENABLE_WIDTH = 4;       // derived parameter
  parameter BYTE_ENABLE_WIDTH_LOG2 = 2;  // derived parameter
  parameter BURST_ENABLE = 1;            // 1 for bursting to be enabled, otherwise it is disabled
  parameter MAX_BURST_COUNT = 2;         // must be a multiple of 2 between 2 and 1024, when bursting is disabled this value must be set to 1
  parameter BURST_WIDTH = 2;             // derived parameter
  parameter FIFO_DEPTH = 128;            // must be a multiple of 2 between 32 and 4096 (larger the value the slower the logic will be).  The FIFO_DEPTH must also be at least twice MAX_BURST_COUNT
  parameter FIFO_DEPTH_LOG2 = 7;         // derived parameter
  parameter BURST_REALIGN_ENABLE = 1;    // turn on to make sure the master realigns itself to burst boundaries at the beginning of a transfer

    
  reg clk;
  reg reset;

  wire [ADDRESS_WIDTH-1:0] master_address;
  wire master_write;
  wire [DATA_WIDTH-1:0] master_writedata;
  wire [BURST_WIDTH-1:0] master_burstcount;
  wire [BYTE_ENABLE_WIDTH-1:0] master_byteenable;
  reg master_waitrequest;

  reg [DATA_WIDTH-1:0] snk_data;
  reg snk_valid;
  wire snk_ready;

  reg [95:0] snk_command_data;
  reg snk_command_valid;
  wire snk_command_ready;
   
   
  pattern_writer in467(

  .clk(clk),
  .reset(reset),

  .master_address(master_address),
  .master_write(master_write),
  .master_writedata(master_writedata),
  .master_burstcount(master_burstcount),
  .master_byteenable(master_byteenable),
  .master_waitrequest(master_waitrequest),

  .snk_data(snk_data),
  .snk_valid(snk_valid),
  .snk_ready(snk_ready),

  .snk_command_data(snk_command_data),
  .snk_command_valid(snk_command_valid),
  .snk_command_ready(snk_command_ready)
  
);

  initial 
    begin
      clk=0;
      reset=1;
      snk_command_data={{32'd1024},{64{1'b0}}};
      #6 reset=0;
      master_waitrequest=0;
      snk_valid=1;
      snk_command_valid=1;
      
    end
 
  always #5 clk=~clk;


endmodule
