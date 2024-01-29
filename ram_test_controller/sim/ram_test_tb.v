`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
module ram_test_tb(
    );
    
  parameter DEFAULT_TIMER_RESOLUTION = 10;
  parameter DEFAULT_BLOCK_SIZE = 1024;
  parameter DEFAULT_TRAIL_DISTANCE = 1;
  reg clk;
  reg reset;

  reg [2:0] csr_address;
  reg csr_read;
  reg csr_write;
  wire [31:0] csr_readdata;
  reg [31:0] csr_writedata;
  reg [3:0] csr_byteenable;
  wire csr_waitrequest;

  wire [95:0] src_write_command_data;
  reg src_write_command_ready;
  wire src_write_command_valid;
  
  wire [96:0] src_read_command_data;
  reg src_read_command_ready;
  wire src_read_command_valid;
    
 ram_test_controller in789 (
  .clk(clk),
  .reset(reset),
  
  .csr_address(csr_address),
  .csr_read(csr_read),
  .csr_write(csr_write),
  .csr_readdata(csr_readdata),
  .csr_writedata(csr_writedata),
  .csr_byteenable(csr_byteenable),
  .csr_waitrequest(csr_waitrequest),
  
  .src_write_command_data(src_write_command_data),
  .src_write_command_ready(src_write_command_ready),
  .src_write_command_valid(src_write_command_valid),

  .src_read_command_data(src_read_command_data),
  .src_read_command_ready(src_read_command_ready),
  .src_read_command_valid(src_read_command_valid)
);


  initial 
  begin
  clk=0;
  reset=1;
  src_write_command_ready=1;
 
  #5 reset=0;
  csr_write=1;
  csr_address=0;
  csr_byteenable=4'b1111;
  csr_writedata=0;
  
  #10
   csr_address=3'b010;
   csr_byteenable=4'b1111;
   csr_writedata=4028;
  
  #12 
  csr_address=3'b100;
  csr_byteenable=4'b1000;
  csr_writedata[24]<=1;
  end
  
  always #5 clk=~clk;


endmodule
