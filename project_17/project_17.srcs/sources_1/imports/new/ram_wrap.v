`timescale 1ns / 1ps
module ram_wrap(
    clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb
    );
    
    input clka;
    input ena;
    input [3 : 0] wea;
    input [6 : 0] addra;
    input [31 : 0] dina;
    input clkb;
    input [6 : 0] addrb;
    output [31 : 0] doutb;
    
    
    ram2 in_ram (
  .clka(clka),    // input wire clka
  .ena(ena),      // input wire ena
  .wea(wea),      // input wire [3 : 0] wea
  .addra(addra),  // input wire [6 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .clkb(clkb),    // input wire clkb
  .addrb(addrb),  // input wire [6 : 0] addrb
  .doutb(doutb)  // output wire [31 : 0] doutb
);
endmodule
