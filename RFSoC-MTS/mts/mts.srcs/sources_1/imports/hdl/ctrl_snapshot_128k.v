`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2018 11:37:21 PM
// Design Name: 
// Module Name: ctrl_snapshot_128k
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.03 - Added pipeline between axis tdata/tvalid in and both bram data
//                 and passthrough tdata/tvalid out
// Revision 0.02 - Removed bram instantiation and added interface to connect to
//                 IPI memory block
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//Make sure parameter DWIDTH and interface_parameter MEM_WIDTH matche

module ctrl_snapshot_128k #(
    parameter DWIDTH = 256,
    
    parameter MEM_SIZE_BYTES = 131072
) (        
    (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *)

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *)
    output reg [DWIDTH-1:0] bram_wdata, // Data In Bus (optional)

    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *)
    output reg [DWIDTH/8-1:0] bram_we, // Byte Enables (optional)
  
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *)
    output reg bram_en, // Chip Enable Signal (optional)
  
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *)
    input wire [DWIDTH-1:0] bram_rdata, // Data Out Bus (optional)
  
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *)
    output reg [31:0] bram_addr, // Address Signal (required)
  
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *)
    output wire bram_clk, // Clock Signal (required)
  
    (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A RST" *)
    output wire bram_rst, // Reset Signal (required)

    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *)
    (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF CAP_AXIS:PASSTHROUGH_AXIS, ASSOCIATED_RESET axis_aresetn" *)
    input wire axis_clk,

    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
    input  wire              axis_aresetn,

    input  wire  [DWIDTH-1:0] CAP_AXIS_tdata,
    output wire               CAP_AXIS_tready,
    input  wire               CAP_AXIS_tvalid,

    output reg  [DWIDTH-1:0] PASSTHROUGH_AXIS_tdata,
    input  wire               PASSTHROUGH_AXIS_tready,
    output reg               PASSTHROUGH_AXIS_tvalid,

    input  wire               trig_cap,
    
    output wire [1:0]         trig_cap_p_2to1_mon
);
   
         
    localparam ADDR_INC = DWIDTH/8;
    localparam CAP_SIZE = MEM_SIZE_BYTES;
    
    (* ASYNC_REG="TRUE" *) reg [2:0] trig_cap_p;
    
    
    assign bram_clk = axis_clk;
    assign bram_rst = ~axis_aresetn;
    
    assign trig_cap_p_2to1_mon = trig_cap_p[2:1];
    assign CAP_AXIS_tready = 1'b1;
    

    // pipline registers for in data to bram and passthrough outputs
    always @(posedge axis_clk)
    begin
        PASSTHROUGH_AXIS_tdata  <= CAP_AXIS_tdata;
        PASSTHROUGH_AXIS_tvalid <= CAP_AXIS_tvalid;

        bram_wdata <= CAP_AXIS_tdata;
    end

    //sync trig_cap to cap_clk and add bit for rising pulse detect
    always @(posedge axis_clk)
	begin
		if (!axis_aresetn) begin
		    trig_cap_p[2:0] <= 0;
		end else begin
        trig_cap_p[2:0] <= {trig_cap_p[1:0], trig_cap};
		end
	end
  
  //BRAM Port B address control
	always @(posedge axis_clk)
	begin
		if (!axis_aresetn) begin
		    bram_addr <= 0;
		    bram_we <= {DWIDTH/8{1'b0}};;  
		    bram_en <= 0;

		end else begin
			
			if((trig_cap_p[2:1] == 2'b01)) begin
			  bram_addr <= 0;
		  	  bram_we <= {DWIDTH/8{1'b1}};
		  	  bram_en <= 1'b1;
			end 
			
			if(bram_en) begin
			  if(bram_addr < CAP_SIZE-ADDR_INC) begin
		  	    bram_addr = bram_addr + ADDR_INC;
		  	    bram_we <= {DWIDTH/8{1'b1}};
		        bram_en <= 1'b1;
		      end else begin
		  	    bram_we <= {DWIDTH/8{1'b0}};;
		        bram_en <= 1'b0;
		      end
		      
			end				

		end
	end

endmodule
