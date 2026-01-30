`timescale 1ns / 1ps
module d_ff_tb(
    );
    
logic clk;
logic rst_n;
logic set_n;
logic [2:0]d_ff;
logic [2:0] d_in;

d_ff inst_ff (.*);

initial begin
    clk = 0;
    rst_n = 0;
    set_n = 1;
    d_in = 'd0;
    # 20 rst_n = 1;
      d_in = 'd5;
    # 7 d_in = 'd6;
    # 1 d_in = 'd5;
end

initial begin
 #10 d_in = 6;
 #13 d_in = 4;
end

initial begin
 #30 rst_n = 0;
 #2 set_n = 0;
 #8 rst_n = 1;
end

always #5 clk = ~clk;

endmodule
