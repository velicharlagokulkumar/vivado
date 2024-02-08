`timescale 1ns / 1ps

module mux_top_tb(

    );
    
        reg                       clk;
        reg                        reset;
        reg                        sel; 
        
        wire [31:0]              m_axis_tdata;
        wire                     m_axis_tvalid;
        reg                       m_axis_tready;
        wire                     m_axis_tlast;
        
    
  mux_top mux_top_tb(
            .clk(clk),
            .reset(reset),
            .sel(sel),         
            .m_axis_tdata(m_axis_tdata),
            .m_axis_tvalid(m_axis_tvalid),
            .m_axis_tready(m_axis_tready),
            .m_axis_tlast(m_axis_tlast) 
    );
    
    
    initial
    begin
    clk=0;
    reset=1;
    sel=0;
    #6 reset=0;
    m_axis_tready=1; 
    end
    
    always#5 clk=~clk;
    
endmodule
