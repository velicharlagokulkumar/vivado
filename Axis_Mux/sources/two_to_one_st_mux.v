/*
2:1 streaming mux Pipelined
*/

`timescale 1ns / 1ps

module two_to_one_st_mux #(
  parameter  DATA_WIDTH = 32
)(
        clk,
        reset,
        
        sel,
        
        s_axis_tdata_A,
        s_axis_tvalid_A,
        s_axis_tready_A,
        s_axis_tlast_A,
        
        s_axis_tdata_B,
        s_axis_tvalid_B,
        s_axis_tready_B,
        s_axis_tlast_B,
        
        m_axis_tdata,
        m_axis_tvalid,
        m_axis_tready,
        m_axis_tlast 
);
  
    input  wire                     clk;
    input  wire                     reset;
    input  wire                     sel;  

    input  wire [DATA_WIDTH-1:0]    s_axis_tdata_A;
    input  wire                     s_axis_tvalid_A;
    output wire                     s_axis_tready_A;
    input  wire                     s_axis_tlast_A;

    input  wire [DATA_WIDTH-1:0]    s_axis_tdata_B;
    input  wire                     s_axis_tvalid_B;
    output wire                     s_axis_tready_B;
    input  wire                     s_axis_tlast_B;

    output wire [DATA_WIDTH-1:0]    m_axis_tdata;
    output wire                     m_axis_tvalid;
    input  wire                     m_axis_tready;
    output wire                     m_axis_tlast; 



  reg input_select;

  reg [DATA_WIDTH-1:0] data_out;
  reg valid_out;
  wire ready;
  wire enable;
  reg out_tlast;
  reg valid_output;

  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      input_select <= 1'bX;
    end
    else if (valid_sel==1)
    begin
      input_select <= sel;
    end
  end


  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      data_out <= 0;
    end
    else if (enable == 1) 
    begin
      data_out <= (input_select == 0)? s_axis_tdata_A : s_axis_tdata_B;
    end
  end


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
   
  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      valid_output <= 0;
    end
      else if (ready == 1)
      begin
        valid_output <= enable;
      end
      else 
        valid_output <= 0;
   end
   
  always @ (posedge clk or posedge reset)
  begin
    if (reset == 1)
    begin
      out_tlast <= 0;
    end
      else if (enable == 1)
      begin
        out_tlast <= A_last|B_last;
      end
   end


  assign valid_sel = (sel==0|sel==1);
  assign m_axis_tvalid = valid_out;
  assign m_axis_tdata = data_out;
  
  assign  A_last = (sel==0)&(s_axis_tlast_A==1);
  assign  B_last = (sel==1)&(s_axis_tlast_B==1);
  assign  m_axis_tlast = out_tlast;
  
  assign ready = (valid_out == 0) | ((m_axis_tready == 1) & (valid_out == 1));
  assign enable = ((input_select == 0) & (ready == 1) & (s_axis_tvalid_A == 1)) |
                           ((input_select == 1) & (ready == 1) & (s_axis_tvalid_B == 1));
                           
  assign s_axis_tready_A = ((input_select == 0) & (ready == 1))? 1 : 0;
  assign s_axis_tready_B = ((input_select == 1) & (ready == 1))? 1 : 0;

endmodule
