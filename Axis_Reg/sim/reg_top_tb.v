`timescale 1ns / 1ps

module reg_top_tb(
    );
        parameter DATA_WIDTH = 32;
            
        reg                       clk;
        reg                       reset; 
        
        wire  [DATA_WIDTH-1:0]   s_axis_tdata;
        wire                     s_axis_tvalid;
        wire                     s_axis_tready;
        wire                     s_axis_tlast;
        
        
        wire [DATA_WIDTH-1:0]    m_axis_tdata;
        wire                     m_axis_tvalid;
        reg                      m_axis_tready;
        wire                     m_axis_tlast; 
 
        reg enable_st_up;

register_st inst_Reg(
        .clk(clk),
        .reset(reset),
        
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(s_axis_tlast),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

streamer_up #(
    .DataWidth(DATA_WIDTH)
  ) in569(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_up(s_axis_tdata),
 .count_valid(count_up_valid),
 .count_ready(s_axis_tready),
 .count_last(s_axis_tlast) 
 );
    
    initial
    begin
    clk=0;
    reset=1;
    enable_st_up=1;
    #6 reset=0;
    m_axis_tready=1; 
     #80 m_axis_tready=0; 
      #40 m_axis_tready=1;
        enable_st_up=0;
        #40 m_axis_tready=0;
          enable_st_up=1;
          #40 m_axis_tready=1;
             #80 m_axis_tready=0;
    end
    
    always #5 clk = ~clk;
    
    assign s_axis_tvalid = count_up_valid & enable_st_up;

endmodule
