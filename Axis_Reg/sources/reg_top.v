`timescale 1ns / 1ps
module reg_top(
    input  wire                     clk,
    input  wire                     reset,

    output wire [31:0]              m_axis_tdata,
    output wire                     m_axis_tvalid,
    input  wire                     m_axis_tready,
    output wire                     m_axis_tlast 

    );
    
    
    wire [31:0] count;   
    wire count_valid;
    wire count_last;
    
register_st axi_reg_inst(
        .clk(clk),
        .reset(reset),
        
        .s_axis_tdata(count),
        .s_axis_tvalid(count_valid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tlast(count_last),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 
);

 
 //upcounter
 counter_up stream_source(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd20),
 
 .count_up(count),
 .count_valid(count_valid),
 .count_ready(s_axis_tready),
 .count_last(count_last)
  );
    
endmodule
