`timescale 1ns / 1ps

module register_st (
        clk,
        reset,
        
        s_axis_tdata,
        s_axis_tvalid,
        s_axis_tready,
        s_axis_tlast,
        
        m_axis_tdata,
        m_axis_tvalid,
        m_axis_tready,
        m_axis_tlast 
);

    parameter DATA_WIDTH = 32;
  
    input  wire                     clk;
    input  wire                     reset; 

    input  wire [DATA_WIDTH-1:0]    s_axis_tdata;
    input  wire                     s_axis_tvalid;
    output wire                     s_axis_tready;
    input  wire                     s_axis_tlast;


    output wire [DATA_WIDTH-1:0]    m_axis_tdata;
    output wire                     m_axis_tvalid;
    input  wire                     m_axis_tready;
    output wire                     m_axis_tlast; 

      reg valid_out;
      
      wire ready;
      wire enable;
      wire t_last;
      reg out_tlast;
    
      reg [DATA_WIDTH-1:0] reg_data;
    
    
      always @ (posedge clk or posedge reset)
      begin
        if (reset == 1)
        begin
          reg_data <= 0;
        end
        else if (enable == 1) 
        begin
          reg_data <=  s_axis_tdata;
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
      out_tlast <= 0;
    end
      else if (enable == 1)
      begin
        out_tlast <= t_last;
      end
   end



  assign ready = (valid_out == 0) | ((m_axis_tready == 1) & (valid_out == 1));
  assign enable = ((ready == 1) & (s_axis_tvalid == 1));

  assign t_last = (s_axis_tlast==1);
  assign s_axis_tready= (ready == 1);
 
  assign m_axis_tdata = reg_data;
  assign m_axis_tvalid = valid_out;
  assign m_axis_tlast = out_tlast;
  
endmodule
