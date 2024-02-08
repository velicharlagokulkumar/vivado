`timescale 1ns / 1ps

module reg_top_tb(
    );
    
        reg                       clk;
        reg                       reset;
        
        wire [31:0]              m_axis_tdata;
        wire                     m_axis_tvalid;
        reg                       m_axis_tready;
        wire                     m_axis_tlast; 

   reg_top axi_reg_tb(
        .clk(clk),
        .reset(reset),
        
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tvalid(m_axis_tvalid),
        .m_axis_tready(m_axis_tready),
        .m_axis_tlast(m_axis_tlast) 

    );
    
   initial
    begin
    clk=0;
    reset=1;
    #6 reset=0;
    m_axis_tready=1; 
    end
    
    always#5 clk=~clk;
endmodule
