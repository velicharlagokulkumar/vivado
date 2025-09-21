`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// 
//////////////////////////////////////////////////////////////////////////////////

//Make sure parameter and interface_parameter bram_size_bytes matches mem_size
//Make sure parameter and interface_parameter BRAM_CPU_DWIDTH matches MEM_WIDTH

//           parameter MEM_SIZE_BYTES = 32768

module uram_play128k #(
           parameter DWIDTH = 256,

           parameter MEM_SIZE_BYTES = 131072
       ) (        

     (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *)

     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *)
     output wire [DWIDTH-1:0] portA_cpu_wdata, // Data In Bus (optional)

     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *)
     output [DWIDTH/8-1:0] portA_we, // Byte Enables (optional)
   
     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *)
     output reg portA_en, // Chip Enable Signal (optional)
   
     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *)
     input wire [DWIDTH-1:0] portA_cpu_rdata, // Data Out Bus (optional)
   
     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *)
     output reg [31:0] portAcpu_addr, // Address Signal (required)
   
     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *)
     output wire portA_clk, // Clock Signal (required)
   
     (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A RST" *)
     output wire portA_rst, // Reset Signal (required)

     (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *)
     (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF AXIS, ASSOCIATED_RESET axis_aresetn" *)
     input wire axis_clk,
     (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
     input  wire              axis_aresetn,

     output wire  [DWIDTH-1:0] axis_tdata,
     input wire                axis_tready,
     output wire               axis_tvalid,

     input                    enable

   );
   
   localparam URAM_AWIDTH = $clog2(MEM_SIZE_BYTES/(DWIDTH/8));
   
initial begin
    $display("*****************************************************");
    $display("XXXXXX URAM_AWIDTH                       = %d", URAM_AWIDTH);
    $display("XXXXXX MEM_SIZE_BYTES/(DWIDTH/8)         = %d", MEM_SIZE_BYTES/(DWIDTH/8));
    $display("XXXXXX $clog2(MEM_SIZE_BYTES/(DWIDTH/8)) = %d", $clog2(MEM_SIZE_BYTES/(DWIDTH/8)));
end

  reg [DWIDTH-1:0] reg_axis_tdata;
  reg              reg_axis_tvalid;

  assign portA_cpu_wdata = 0;
  assign portA_we = 0;

  assign axis_tdata = reg_axis_tdata;
  assign portA_clk = axis_clk;
  assign portA_rst = ~axis_aresetn;
  assign axis_tvalid = reg_axis_tvalid;

	always @(posedge axis_clk) begin
      reg_axis_tdata <= portA_cpu_rdata;
    end
    
	always @(posedge axis_clk)
	begin
		if (!axis_aresetn) begin
		    reg_axis_tvalid <= 0;
		    portAcpu_addr <= 0;
		    portA_en <= 0;
		end else begin
			if (enable == 1'b1) begin
				reg_axis_tvalid <= 1;
				portAcpu_addr <= portAcpu_addr + DWIDTH/8;
				portA_en <= 1'b1;
			end else begin
		    	reg_axis_tvalid <= 0;
		        portAcpu_addr <= 0;
		        portA_en <= 1'b0;
		    end

		end
	end

	
endmodule
			