`timescale 1ns / 1ps
module mux_top(
    input  wire                     clk,
    input  wire                     reset,
    input  wire                     sel,

    output wire [31:0]              m_axis_tdata,
    output wire                     m_axis_tvalid,
    input  wire                     m_axis_tready,
    output wire                     m_axis_tlast 

    );
    
    wire [31:0] count_A;
    wire [31:0] count_B;
    
    wire countA_valid;
    wire countB_valid;
    
    wire countA_last;
    wire countB_last;
    
    
two_to_one_st_mux inst_mux(

        .clk(clk),
        .reset(reset),
        
        .sel(sel),
        
        .s_axis_tdata_A(count_A),
        .s_axis_tvalid_A(countA_valid),
        .s_axis_tready_A(s_axis_tready_A),
        .s_axis_tlast_A(countA_last),
        
        .s_axis_tdata_B(count_B),
        .s_axis_tvalid_B(countB_valid),
        .s_axis_tready_B(s_axis_tready_B),
        .s_axis_tlast_B(countB_last),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast)
); 
    
    //upcounter
    
 counter_up stream_source_A(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'd20),
 
 .count_up(count_A),
 .count_valid(countA_valid),
 .count_ready(s_axis_tready_A),
 .count_last(countA_last)
    );
    
    
    //down counter
    
 counter_down stream_source_B(
 .counter_clk(clk),
 .reset(reset),
 .count_up_to(32'hFFFFFFed),
 
 
 .count_down(count_B),
 .count_valid(countB_valid),
 .count_ready(s_axis_tready_B),
 .count_last(countB_last)
    );
    
endmodule
