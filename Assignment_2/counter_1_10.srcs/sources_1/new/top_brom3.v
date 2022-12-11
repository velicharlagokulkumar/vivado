`timescale 1ns / 1ps
module top_brom3(
    input clk,
    output reg [31:0] sum=0
    );

reg [3:0] addr_reg=0,addr_next;
wire [3:0] dout;
wire we_a,we_b;
wire [31 : 0] data_a,data_b;
reg [31 : 0] q_a;
reg [31:0]  q_b;
always@(posedge clk)
addr_reg<=addr_next;
always@(*)
begin
if(addr_reg==4'd9)
addr_next=addr_reg;
else
addr_next=addr_reg+1;
end
  blk_mem_gen_0 your_instance_name (
  .clka(clk),    // input wire clka
  .wea(we_a),      // input wire [0 : 0] wea
  .addra(addr_reg),  // input wire [6 : 0] addra
  .dina(data_a),    // input wire [31 : 0] dina
  .douta(q_a),  // output wire [31 : 0] douta
  .clkb(clkb),    // input wire clkb
  .web(we_b),      // input wire [0 : 0] web
  .addrb(addr_reg+1),  // input wire [6 : 0] addrb
  .dinb(data_b),    // input wire [31 : 0] dinb
  .doutb(q_b)  // output wire [31 : 0] doutb
);
always@(posedge clk)
begin
q_a<= q_b;
q_b<= q_a+ q_b;
end
 assign sum = q_a;
endmodule
