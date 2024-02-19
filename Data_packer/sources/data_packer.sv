`timescale 1ns / 1ps
module data_packer (
        clk,
        reset,
        confi,
        
        s_axis_tdata,
        s_axis_tvalid,
        s_axis_tready,
        s_axis_tlast,
        
        m_axis_tdata,
        m_axis_tvalid,
        m_axis_tready,
        m_axis_tlast 
);

    parameter DATA_WIDTH = 8;
  
    input  logic                     clk;
    input  logic                     reset;
    input  logic [15:0]              confi; 

    input  logic [DATA_WIDTH-1:0]    s_axis_tdata;
    input  logic                     s_axis_tvalid;
    output logic                     s_axis_tready;
    input  logic                     s_axis_tlast;


    output logic [DATA_WIDTH-1:0]    m_axis_tdata;
    output logic                     m_axis_tvalid;
    input  logic                     m_axis_tready;
    output logic                     m_axis_tlast; 
    
    logic valid_out;
    logic out_tlast;
    logic [15:0] delay;
    logic [7:0] packet_length;
    logic [7:0] k;
    
    logic [DATA_WIDTH-1:0] data_in;
    logic [DATA_WIDTH-1:0] data_out;
    
    logic readDataValid;
    logic readDataReady;
    logic readDataLast;
    logic [7:0] fifo_init;
    logic ready;
    logic write;
    
    logic [DATA_WIDTH-1:0] mem[512];
    
    logic [9:0] count;
    logic [9:0] count_next;
    logic [15:0] init_confi;
    logic ready_r;
    logic [7:0] i;
    logic [7:0] j;
    logic tlast_r;
    
    logic [7:0] readData;
    
  fifo #(
     .DataWidth(8), 
     .Depth(512)
   )  fifo_inst2 (
        .clk(clk),
        .reset(reset),
        .en(write),
             
        .writeData(s_axis_tdata),
        .writeDataValid(s_axis_tvalid),
        .writeDataReady(s_axis_tready),
        .writeDataLast(s_axis_tlast),
             
        .readData(readData),
        .readDataValid(readDataValid),
        .readDataReady(readDataReady),
        .readDataLast(readDataLast)
  );
  
    
    always_ff @ (posedge clk or posedge reset) begin
     if (reset == 1 | t_last)
      count <= 0;
      else if (enable == 1)
      begin
        count <= count_next;
      end
   end
   
    always@(*)
    count_next = count + 1;
    
    
  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      valid_out <= 0;
    end
      else if (ready == 1)
      begin
        valid_out <= enable;
      end
   end
    
    always_ff @ (posedge clk or posedge reset)
    begin
    if (reset)
    out_tlast <= 1'b0;
    else if(t_last)
    out_tlast <= 1'b1;
    else
    out_tlast <= 1'b0; 
    end
    
    
    always_ff @ (posedge clk or posedge reset)
    begin
      if(reset | i == k-1)begin
        readDataReady <= 0;
        end
    else
       if (readDataReady_w)
         readDataReady <=1;
       end
       
   always_ff @ (posedge clk or posedge reset)
    begin
      if(reset | i==k)
        i <= 0;
    else
       if (start_fifo_read)
         i <= i+1;
       end
       
   always_ff @ (posedge clk or posedge reset)
    begin
      if(reset | j == k-1)
        tlast_r <= 1'b0;
    else
       if (t_last)
         tlast_r <= 1'b1;
       end
       
   always_ff @ (posedge clk or posedge reset)
    begin
      if(reset | j == k)
        j <= 0;
    else
       if (tlast_r)
         j <= j+1;
       end
       
    always_ff @ (posedge clk or posedge reset) 
    begin
    if(reset | count == packet_length)
         write <=0;
       else if (count == fifo_init)
         write <=1;
       end
           
    assign data_in = s_axis_tdata;
    
    assign init_confi = confi;
    assign packet_length = init_confi[7:0];
    assign k = init_confi[15:8];
    assign fifo_init = packet_length - k;
    assign readDataReady_w =(count == packet_length - 1);

    //assign ready = s_axis_tvalid & s_axis_tready;
    //assign s_axis_tready = (valid_out == 0);
    
    assign t_last = s_axis_tlast;
    assign m_axis_tdata = (tlast_r == 1) ? (data_in + readData ) : data_in ;
    
    assign m_axis_tlast = t_last;//out_tlast;

    assign m_axis_tdata = data_out;
    assign start_fifo_read = (readDataReady==1);
    
    assign ready = (valid_out == 0) | ((m_axis_tready == 1) & (valid_out == 1));
    assign enable = ((ready == 1) & (s_axis_tvalid == 1));
    
    assign s_axis_tready = (ready == 1);
     
    assign m_axis_tvalid = s_axis_tvalid;
    endmodule