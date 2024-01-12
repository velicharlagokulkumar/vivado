`timescale 1ns / 1ps
module ram_wrap_tb(
    );
    
    
    reg clk;
    reg ena;
    reg [3 : 0] wea;
    reg [6 : 0] addra;
    reg [31 : 0] dina;
    reg [6 : 0] addrb;
    wire [31 : 0] doutb;
  
  ram_wrap in445(
    .clka(clk),
    .ena(ena),
    .wea(wea),
    .addra(addra),
    .dina(dina),
    .clkb(clk),
    .addrb(addrb),
    .doutb(doutb)
    );
    
    initial
    begin
    clk=0;
    ena=1;
    wea=4'b1111;
    #5addra=1;
    dina=57;
    #10ena=0;
    
    #10 addrb=1;
    end
    
    always #5 clk=~clk;  
    
endmodule
