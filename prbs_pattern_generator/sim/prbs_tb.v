`timescale 1ns / 1ps
module prbs_tb(
    );
 parameter DATA_WIDTH = 32;    
  reg clk;
  reg reset;

  reg [2:0] csr_address;
  reg [31:0] csr_writedata;
  reg csr_write;
  wire  [31:0] csr_readdata;
  reg csr_read;
  reg [3:0] csr_byteenable;

  wire [DATA_WIDTH-1:0] src_data;
  wire src_valid;
  reg src_ready;
 
prbs_pattern_generator in1(
  .clk(clk),
  .reset(reset),

  .csr_address(csr_address),
  .csr_writedata(csr_writedata),
  .csr_write(csr_write),
  .csr_readdata(csr_readdata),
  .csr_read(csr_read),
  .csr_byteenable(csr_byteenable),

  .src_data(src_data),
  .src_valid(src_valid),
  .src_ready(src_ready)
  );
  
  initial 
  begin
  clk=0;
  reset=1;
  #5 reset=0;
  src_ready=1'b1;
  csr_write=1'b1;
  
   /*#5 csr_byteenable=4'b0100; //load SEED_VALUE(unecessary since reset is feeding the seed)
    csr_address=3'b010;
    csr_writedata= 32'h00010000;
   */
   
   /*
    #5 csr_byteenable=4'b1111; //load POLYNOMIAL[31:0]
    csr_address=3'b100;
    csr_writedata= 32'h0F0F0F0F;
   */
      
    /*  
    #10 csr_byteenable=4'b1111; //load POLYNOMIAL[63:31]
    csr_address=3'b101;
    csr_writedata= 32'h0F0F0F0F;
    */
    
  /*
    #5 csr_byteenable=4'b1111; //load Payload length counter
    csr_address=3'b000;
    csr_writedata= 32;
    */
    
    #10 csr_write=1'b0;   //toggle read and write
    csr_read=1'b1;
 
    csr_address=3'b000;   //read the address 000
    #10 csr_address=3'b100; //read the address 100
   
    #10 csr_write=1'b1;   //toggle read and write
    csr_read=1'b0;
   
       
    #10 csr_byteenable=4'b1000;  // load start 
    csr_address=3'b010;
    csr_writedata= 32'h01000000;
    #10 csr_write=1'b0;
 
  
  end
   
  always #5 clk=~clk;
  


endmodule
