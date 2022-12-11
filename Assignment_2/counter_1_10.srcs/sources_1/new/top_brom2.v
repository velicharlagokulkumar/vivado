`timescale 1ns / 1ps
module top_brom2(
	input [31:0] data_a, data_b,
	input [99:0] addr_a, addr_b,
	input we_a, we_b, clk,
	output reg [31:0] q_a, q_b
);
	// Declare the RAM variable
	reg [31:0] ram[63:0];
reg [3:0] addr_reg=0,addr_next;
wire [3:0] dout;
wire [31:0] fibout;
reg [31:0] prev_val;
reg [31:0] curr_val;
	// Port A
	always @ (posedge clk)
	begin
		if (we_a) 
		begin
			ram[addr_a] <= data_a;
			q_a <= data_a;
		end
		else 
		begin
			q_a <= ram[addr_a];
		end
	end
	
	// Port B
	always @ (posedge clk)
	begin
		if (we_b)
		begin
			ram[addr_b] <= data_b;
			q_b <= data_b;
		end
		else
		begin
			q_b <= ram[addr_b];
		end
	end
	
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



always@(*)
begin
curr_val=q_a;
prev_val=q_b;
prev_val<= curr_val;
curr_val<= curr_val+ prev_val;
end
assign fibout = prev_val;
endmodule
