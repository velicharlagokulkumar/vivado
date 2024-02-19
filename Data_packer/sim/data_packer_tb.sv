`timescale 1ns / 1ps
module data_packer_tb(
    );
   
    parameter DATA_WIDTH = 8;
  
      logic                     clk;
      logic                     reset;
      logic [15:0]              confi; 

      logic [DATA_WIDTH-1:0]    s_axis_tdata;
      logic                     s_axis_tvalid;
      logic                     s_axis_tready;
      logic                     s_axis_tlast;


     logic [DATA_WIDTH-1:0]    m_axis_tdata;
     logic                     m_axis_tvalid;
     logic                     m_axis_tready;
     logic                     m_axis_tlast;   
    
 data_packer packer_inst(
        .clk(clk),
        .reset(reset),
        .confi(confi),
        
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

  
 counter_up #(
    .DataWidth(DATA_WIDTH)
  ) in568(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_up(s_axis_tdata),
 .count_valid(s_axis_tvalid),
 .count_ready(s_axis_tready),
 .count_last(s_axis_tlast) 
 );
    
  initial begin
    clk = 0;
    reset = 1;
    m_axis_tready=1'b1;
    confi = 16'h0410;
        #10 reset = 0;
  end
  

always #5 clk=~clk;
    
endmodule
