`timescale 1ns / 1ps
module fifo_top_tb(
    );
    
  parameter DataWidth = 32;
        logic                   clk;
        logic                   reset;
        
        //logic                   writeReq;
        
        logic   [DataWidth-1:0] writeData;
        logic                   writeDataValid;
        logic                   writeDataReady;
        logic                   writeDataLast;
        
       // logic                   readReq;
        
        logic  [DataWidth-1:0] readData;
        logic                 readDataValid;
        logic                   readDataReady;
        logic                 readDataLast;
        
        //logic                 full;
        //logic                 empty;

 fifo_top fifo_4096 (
        .clk(clk),
        .reset(reset),
        
        //.writeReq(writeReq),
        
        .writeData(writeData),
        .writeDataValid(writeDataValid),
        .writeDataReady(writeDataReady),
        .writeDataLast(writeDataLast),
        
       // .readReq(readReq),
        
        .readData(readData),
        .readDataValid(readDataValid),
        .readDataReady(readDataReady),
        .readDataLast(readDataLast)
        
       // .full(full),
        //.empty(empty)
  
  );
  
  
  
counter_up #(
    .DataWidth(DataWidth)
  ) in567(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_up(writeData),
 .count_valid(writeDataValid),
 .count_ready(writeDataReady),
 .count_last(writeDataLast) 
 );
    
  initial begin
    clk = 0;
    reset = 1;
    //writeReq = 0;
    //readReq = 0;
    readDataReady=0;
    #10 reset = 0;
    //#30 writeReq = 1;
     //#20800 writeReq=1;
    // #1000 readReq = 1;
     //#300 readDataReady=1;
     #60000 readDataReady=1'b1;
      //#200 readDataReady=1'b0;
     end

 always #5 clk=~clk;
                  
endmodule
