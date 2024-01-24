`timescale 1ns / 1ps
module custom_pattern_tb(
    );
  parameter DATA_WIDTH = 32;          // must be an even multiple of 8 and is used to determine the width of the 2nd port of the on-chip RAM
  parameter MAX_PATTERN_LENGTH = 64;  // used to determine the depth of the on-chip RAM and modulo counter width, set to a multiple of 2
  parameter ADDRESS_WIDTH = 6;

  localparam NUM_OF_SYMBOLS = DATA_WIDTH / 8;

  reg clk;
  reg reset;

  reg [1:0] csr_address;
  reg [31:0] csr_writedata;
  reg csr_write;
  wire [31:0] csr_readdata;
  reg csr_read;
  reg [3:0] csr_byteenable;

  reg [ADDRESS_WIDTH-1:0] pattern_address;
  reg [DATA_WIDTH-1:0] pattern_writedata;
  reg pattern_write;
  reg [(DATA_WIDTH/8)-1:0] pattern_byteenable;

  wire [DATA_WIDTH-1:0] src_data;
  wire src_valid;
  reg src_ready;
    
  wire [31:0] count;
  reg c_reset;
 
mtm_custom_pattern_generator in89(
  .clk(clk),
  .reset(reset),

  .csr_address(csr_address),
  .csr_writedata(csr_writedata),
  .csr_write(csr_write),
  .csr_readdata(csr_readdata),
  .csr_read(csr_read),
  .csr_byteenable(csr_byteenable),

  .pattern_address(pattern_address),
  .pattern_writedata(pattern_writedata),
  .pattern_write(pattern_write),
  .pattern_byteenable(pattern_byteenable),

  .src_data(src_data),
  .src_valid(src_valid),
  .src_ready(src_ready)
);


 counter in43(
 .counter_clk(clk),
 .reset(c_reset),
 .count(count)
    );
  
  initial 
  begin
  clk=0;
  reset=1;
  pattern_write=0;
  #5 reset=0;
  src_ready=1'b1;
  csr_write=1'b1;
  csr_address=2'b00;
  csr_byteenable=4'b1111;
  csr_writedata=32'h00000020; //payload length
  #10 //pattern position
  csr_address=2'b01;
  csr_byteenable=4'b1100;
  csr_writedata=32'h00000000;
  #10 //pattern length
  csr_address=2'b01;
  csr_byteenable=4'b0011;
  csr_writedata=32'h00000008;
   #5
  csr_write=1'b0;
  
  /*

*/

  c_reset=1; //make pattern feeding arrangements
  #10 c_reset=0;
  pattern_write=1'b1;
  pattern_byteenable=4'b1111;
  #80
   pattern_write=1'b0;
   
    #10 //start
  csr_write=1'b1;
  csr_address=2'b10;
  csr_byteenable=4'b1000;
  csr_writedata=32'h01000000; 
   #10 csr_write=1'b0;
  end
    
  always@(posedge clk)  //generate amd feed custom pattern when pattern write high
  begin
  if(reset)begin
  pattern_address=0;
  pattern_writedata=0;
  end
  else if(pattern_write) begin
  pattern_address=count;
  pattern_writedata=count;
  end
  end

/* 
  //reading block
  #20 csr_write=1'b0;
  csr_address=2'b10;
  csr_read=1'b1;
  end
*/
  always #5 clk=~clk;
  
endmodule
