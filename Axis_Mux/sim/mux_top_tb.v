`timescale 1ns / 1ps

module mux_top_tb(
    );
        parameter DataWidth=32;
    
        reg clk;
        reg reset;
        
        reg sel;
        
        wire [DataWidth-1:0] s_axis_tdata_A;
        wire s_axis_tvalid_A;
        wire s_axis_tready_A;
        wire s_axis_tlast_A;
        
        wire [DataWidth-1:0] s_axis_tdata_B;
        wire s_axis_tvalid_B;
        wire s_axis_tready_B;
        wire s_axis_tlast_B;
        
        wire [DataWidth-1:0] m_axis_tdata;
        wire m_axis_tvalid;
        reg m_axis_tready;
        wire m_axis_tlast;
        
        wire count_up_valid;
        wire count_down_valid;
        reg enable_st_up;
        reg enable_st_down;
        
 two_to_one_st_mux inst_mux(
        .clk(clk),
        .reset(reset),
        
        .sel(sel),
        
        .s_axis_tdata_A(s_axis_tdata_A),
        .s_axis_tvalid_A(s_axis_tvalid_A),
        .s_axis_tready_A(s_axis_tready_A),
        .s_axis_tlast_A(s_axis_tlast_A),
        
        .s_axis_tdata_B(s_axis_tdata_B),
        .s_axis_tvalid_B(s_axis_tvalid_B),
        .s_axis_tready_B(s_axis_tready_B),
        .s_axis_tlast_B(s_axis_tlast_B),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

     
streamer_up #(
    .DataWidth(DataWidth)
  ) in567(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_up(s_axis_tdata_A),
 .count_valid(count_up_valid),
 .count_ready(s_axis_tready_A),
 .count_last(s_axis_tlast_A) 
 );
 
 streamer_down #(
    .DataWidth(DataWidth)
  ) in568(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd16),

 .count_down(s_axis_tdata_B),
 .count_valid(count_down_valid),
 .count_ready(s_axis_tready_B),
 .count_last(s_axis_tlast_B) 
 );
    
    
    initial
    begin
    clk=0;
    reset=1;
    sel=0;
    enable_st_up=1;
    enable_st_down=1;
    #6 reset=0;
    m_axis_tready=1; 
     #80 m_axis_tready=0; 
      #40 m_axis_tready=1;
        enable_st_up=0;
        #40 m_axis_tready=0;
          enable_st_up=1;
          #40 m_axis_tready=1;
             #80 m_axis_tready=0;
         sel=1;
     #30 m_axis_tready=1;
     #80 m_axis_tready=0; 
      #40 m_axis_tready=1;
        enable_st_down=0;
         #40 m_axis_tready=0;
          enable_st_down=1;
           #40 m_axis_tready=1;
             #80 m_axis_tready=0;
      
           
    end
    
    always#5 clk=~clk;
    assign s_axis_tvalid_A = count_up_valid & enable_st_up;
    assign s_axis_tvalid_B = count_down_valid & enable_st_down;
    
endmodule
