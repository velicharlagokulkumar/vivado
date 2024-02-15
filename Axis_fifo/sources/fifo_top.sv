`timescale 1ns / 1ps

module fifo_top #(
  parameter  DataWidth = 32,
  parameter  Depth     = 4096,
  localparam PtrWidth  = $clog2(Depth)
) (
  input  logic                 clk,
  input  logic                 reset,
  
  input  logic                 writeReq,
  
  input  logic [DataWidth-1:0] writeData,
  input  logic                 writeDataValid,
  output logic                 writeDataReady,
  input  logic                 writeDataLast,
   
  input  logic                 readReq,
  
  output logic [DataWidth-1:0] readData,
  output logic                 readDataValid,
  input  logic                 readDataReady,
  output logic                 readDataLast,
  
  output logic                 full,
  output logic                 empty
);

logic write_to_fifo_2;
logic read_from_fifo_2;

logic write_to_fifo_1;
logic read_from_fifo_1;

 fifo_2048 fifo1(
  .clk(clk),
  .reset(reset),
  
  .writeReq(writeReq_1),
  
  .writeData(writeData_1),
  .writeDataValid(writeDataValid_1),
  .writeDataReady(writeDataReady_1),
  .writeDataLast(writeDataLast_1),
   
  .readReq(readReq_1),
  
  .readData(readData_1),
  .readDataValid(readDataValid_1),
  .readDataReady(readDataReady_1),
  .readDataLast(readDataLast_1),
  
  .full(full_1),
  .empty(empty_1),
  .abt_full(abt_full_1),
  .abt_empty(abt_empty_1)
);

fifo_2048 fifo2(
 
  .clk(clk),
  .reset(reset),
  
  .writeReq(writeReq_2),
  
  .writeData(writeData_2),
  .writeDataValid(writeDataValid_2),
  .writeDataReady(writeDataReady_2),
  .writeDataLast(writeDataLast_2),
   
  .readReq(readReq_2),
  
  .readData(readData_2),
  .readDataValid(readDataValid_2),
  .readDataReady(readDataReady_2),
  .readDataLast(readDataLast_2),
  
  .full(full_2),
  .empty(empty_2),
  
  .abt_full(abt_full_2),
  .abt_empty(abt_empty_2)
);


 always@(posedge clk or posedge reset)
 begin
   if (reset)
    write_to_fifo_2 <= 1'b0;
      else if(fifo_1_full)
            write_to_fifo_2 <= 1'b1; 
            else if (fifo_2_full)
              write_to_fifo_2 <= 1'b0;
    end
    
 always@(posedge clk or posedge reset)
 begin
   if (reset)
    write_to_fifo_1 <= 1'b0;
      else if(fifo_2_full)
            write_to_fifo_1 <= 1'b1;   
    end
    
always@(posedge clk or posedge reset)
 begin
   if (reset)
    read_from_fifo_2 <= 1'b0;
      else if(fifo_1_empty & !both_empty)
            read_from_fifo_2 <= 1'b1; 
            else
            read_from_fifo_2 <= 1'b0;  
    end
  /*  
always@(posedge clk or posedge reset)
 begin
   if (reset)
    read_from_fifo_1 <= 1'b0;
      else if(fifo_2_empty & !both_empty)
            read_from_fifo_1 <= 1'b1; 
            else
            read_from_fifo_1 <= 1'b0;  
    end
   */
assign writeReq_1 =  !write_to_fifo_2 | write_to_fifo_1 ? writeReq : 1'b0;
assign writeReq_2 =  write_to_fifo_2 | !write_to_fifo_1 ? writeReq : 1'b0;

assign writeDataReady = (fifo1.writeDataReady & fifo2.writeDataReady);

assign fifo1.writeDataValid = !write_to_fifo_2 ? writeDataValid : 1'b0;
assign fifo2.writeDataValid = write_to_fifo_2 ? writeDataValid : 1'b0;

assign fifo1.writeData = !(write_to_fifo_2) ? writeData : 32'b0;
assign fifo2.writeData = (write_to_fifo_2) ? writeData : 32'b0;

assign fifo1.writeDataLast  = !(write_to_fifo_2) ? writeDataLast :1'b0;
assign fifo2.writeDataLast  = (write_to_fifo_2) ? writeDataLast : 1'b0;


assign readReq_1        =  !read_from_fifo_2 ? readReq : 1'b0;
assign readReq_2        =  read_from_fifo_2 ? readReq : 1'b0;

assign readDataValid = (fifo1.readDataValid | fifo2.readDataValid);
assign fifo1.readDataReady  = readDataReady;
assign fifo2.readDataReady  = readDataReady;
assign readData =  write_to_fifo_2 ? fifo2.readData : fifo1.readData ;
assign readDataLast = (fifo1.readDataLast | fifo2.readDataLast);


assign fifo_1_full  = (fifo1.abt_full == 1);
assign fifo_1_empty  = (fifo1.empty == 1);

assign fifo_2_full =  (fifo2.abt_full == 1);
assign fifo_2_empty =  (fifo2.empty == 1);
assign both_empty = fifo1.empty & fifo2.empty;
   
endmodule
