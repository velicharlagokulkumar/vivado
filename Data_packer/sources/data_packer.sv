`timescale 1ns / 1ps
module data_packer (
        clk,
        reset,
        k,
        
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
    input  logic [1:0]               k; 

    input  logic [DATA_WIDTH-1:0]    s_axis_tdata;
    input  logic                     s_axis_tvalid;
    output logic                     s_axis_tready;
    input  logic                     s_axis_tlast;


    output logic [DATA_WIDTH-1:0]    m_axis_tdata;
    output logic                     m_axis_tvalid;
    input  logic                     m_axis_tready;
    output logic                     m_axis_tlast; 
    
    logic valid_out;
    logic [4:0] confi;
    logic out_tlast;
    logic [4:0] delay;
    
    logic [DATA_WIDTH-1:0] data_in;
    logic [DATA_WIDTH-1:0] data_out;
    
    logic readDataValid;
    logic readDataReady;
    logic readDataLast;
    
    logic [DATA_WIDTH-1:0] mem[512];
    
    logic [9:0] count;
    logic [9:0] count_next;
    logic [4:0] int_confi;
    logic ready_r;
    
  fifo_2048 #(
     .DataWidth(8), 
     .Depth(2048)
   )  fifo_inst (
        .clk(clk),
        .reset(reset),
             
        .writeData(s_axis_tdata),
        .writeDataValid(s_axis_tvalid),
        .writeDataReady(s_axis_tready),
        .writeDataLast(s_axis_tlast),
             
        .readData(readData),
        .readDataValid(readDataValid),
        .readDataReady(readDataReady),
        .readDataLast(readDataLast)
  );
  
   always_ff @ (posedge clk or posedge reset)
    begin
    if (ready)
    mem[count] <= data_in;
    end
    
    always_ff @ (posedge clk or posedge reset) begin
     if (reset == 1)
      count <= 0;
      else if (ready == 1)
      begin
        count <= count_next;
      end
   end
   
    always@(*)
    count_next = count + 1;
    
    
    always_ff @ (posedge clk or posedge reset)
    begin
    if (reset)
    valid_out <= 1'b0;
    end
    
    always_ff @ (posedge clk or posedge reset)
    begin
    if (reset)
    confi <= 2'b0;
    else 
    confi <= k;
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
    if(reset | t_last)
    delay <= 1;
    else
    if (s_axis_tvalid)
    delay <= delay + 1; 
    end
    
   always_ff @ (posedge clk or posedge reset)
    begin
    if(reset)
    ready_r <= 0;
    else
    if (ready)
    ready_r <= 1; 
    else
        ready_r <= 0;
    end
    
    always_ff @ (posedge clk or posedge reset)
    begin
      if(reset | t_last)
        readDataReady <= 0;
    else
       if (readDataReady_w)
         readDataReady <=1;
       end
       
       always@(*)
       mem[513]=8'b1;

    assign readDataReady_w = ready & (delay == k);    
    assign data_in = s_axis_tdata;
    assign int_confi = confi;
    
    assign ready = s_axis_tvalid & s_axis_tready;
    assign s_axis_tready = (valid_out == 0);
    assign t_last = s_axis_tlast;
    
    assign m_axis_tlast = out_tlast;

    assign m_axis_tdata = data_out;
    
    //assign readDataReady = t_last;
    endmodule