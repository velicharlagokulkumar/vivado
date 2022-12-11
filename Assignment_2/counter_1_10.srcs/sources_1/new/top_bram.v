`timescale 1ns / 1ps
module top_bram(
    input clk,
    input clk2,
    input rst,
    output [31:0] sum
    );

reg [31:0] addr_next;
wire [31:0] douta;
wire [31:0] doutb;
reg [31:0] dina=0;
reg [31:0] dinb=1;
reg wea=1;
reg web=1; 
reg [6 : 0] addra=0;
reg [6 : 0] addrb=1;
//reg [31:0] ram[63:0];

always@(posedge clk)
begin
addra<=addr_next;
addrb<=addr_next+1;
end
always@(*)
begin
if(addra==49)
addr_next=0;
else
addr_next=addra+1;
end

blk_mem_gen_0 in4 (
  .clka(clk),    // input wire clka
  .wea(wea),      // input wire [0 : 0] wea
  .addra(addra),  // input wire [6 : 0] addra
  .dina(dina),    // input wire [31 : 0] dina
  .douta(douta),  // output wire [31 : 0] douta
  .clkb(clk),    // input wire clkb
  .web(web),      // input wire [0 : 0] web
  .addrb(addrb),  // input wire [6 : 0] addrb
  .dinb(dinb),    // input wire [31 : 0] dinb
  .doutb(doutb)  // output wire [31 : 0] doutb
);
always @ (posedge clk)
begin
if (rst==1'b1)
begin
dina<= 1'b0; //PREVIOUS VALUE 
dinb<= 1'b1; //CURRENT VALUE
end
else if(clk==1)
begin
dina<=dinb;
dinb<=dina+dinb;
end
end
assign sum=dina;

ila_0 in5 (
	.clk(clk2), // input wire clk


	.probe0(clk),
	.probe1(rst), // input wire [0:0]  probe0  
	.probe2(addra), // input wire [5:0]  probe1 
	.probe3(douta) // input wire [31:0]  probe2
);
endmodule
