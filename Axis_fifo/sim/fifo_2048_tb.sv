module fifo_2048_tb;

  parameter DataWidth = 32;
  parameter Depth = 2048;

  logic clk;
  logic reset;
  
  //logic writeReq;
  
  logic [DataWidth-1:0] writeData;
  logic writeDataReady;
  logic writeDataValid;
  logic writeDataLast;
  
  //logic readReq;
  
  logic [DataWidth-1:0] readData;
  logic readDataValid;
  logic readDataReady;
  logic readDataLast;
  
  //logic full;
  //logic empty;
                       
  
  fifo_2048 #(
    .DataWidth(DataWidth),
    .Depth(Depth)
  ) fifo_inst (
    .clk(clk),
    .reset(reset),
    //.writeReq(writeReq),
    .writeData(writeData),
    .writeDataValid(writeDataValid),
    .writeDataReady(writeDataReady),
    .writeDataLast(writeDataLast),
    .readData(readData),
    .readDataValid(readDataValid),
    .readDataReady(readDataReady),
    .readDataLast(readDataLast)
    //.readReq(readReq),
    //.full(full),
    //.empty(empty)
  );
  
  counter_up #(
    .DataWidth(DataWidth)
  ) in566(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_up(writeData),
 .count_valid(writeDataValid),
 .count_ready(writeDataReady),
 .count_last(writeDataLast) 
 );
  
  always #5 clk = ~clk;

  initial begin
    clk = 0;
    reset = 1;
    //writeReq = 0;
    //writeData = 0;
    //readReq = 0;
    //writeDataValid=0;
    readDataReady=0;
    #10 reset = 0;
    //#30 writeReq = 1;
    // #20800 writeReq=0;
    // #80 readReq = 1;
    // #300 readDataReady=1;
    #28000 readDataReady=1;
    #48000 readDataReady=0;
    /*
    #60
    writeData = 32'hABCDEFFF;
    writeDataValid=1'b1; 
    #10;
    writeReq = 0;
    #10;
    */
    
    
    // Read data
    //
    //#80;
    //readReq = 0;
    //#10;
    //$stop;
  end
  
endmodule
