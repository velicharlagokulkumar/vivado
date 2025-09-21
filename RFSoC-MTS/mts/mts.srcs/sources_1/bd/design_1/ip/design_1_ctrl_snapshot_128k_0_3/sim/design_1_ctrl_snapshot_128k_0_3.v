// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:ctrl_snapshot_128k:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ctrl_snapshot_128k_0_3 (
  bram_wdata,
  bram_we,
  bram_en,
  bram_rdata,
  bram_addr,
  bram_clk,
  bram_rst,
  axis_clk,
  axis_aresetn,
  CAP_AXIS_tdata,
  CAP_AXIS_tready,
  CAP_AXIS_tvalid,
  PASSTHROUGH_AXIS_tdata,
  PASSTHROUGH_AXIS_tready,
  PASSTHROUGH_AXIS_tvalid,
  trig_cap,
  trig_cap_p_2to1_mon
);

(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *)
output wire [255 : 0] bram_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *)
output wire [31 : 0] bram_we;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *)
output wire bram_en;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *)
input wire [255 : 0] bram_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *)
output wire [31 : 0] bram_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *)
output wire bram_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A RST" *)
output wire bram_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_clk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF CAP_AXIS:PASSTHROUGH_AXIS, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *)
input wire axis_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
input wire axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 CAP_AXIS TDATA" *)
input wire [255 : 0] CAP_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 CAP_AXIS TREADY" *)
output wire CAP_AXIS_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CAP_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 CAP_AXIS TVALID" *)
input wire CAP_AXIS_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TDATA" *)
output wire [255 : 0] PASSTHROUGH_AXIS_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TREADY" *)
input wire PASSTHROUGH_AXIS_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PASSTHROUGH_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TVALID" *)
output wire PASSTHROUGH_AXIS_tvalid;
input wire trig_cap;
output wire [1 : 0] trig_cap_p_2to1_mon;

  ctrl_snapshot_128k #(
    .DWIDTH(256),
    .MEM_SIZE_BYTES(131072)
  ) inst (
    .bram_wdata(bram_wdata),
    .bram_we(bram_we),
    .bram_en(bram_en),
    .bram_rdata(bram_rdata),
    .bram_addr(bram_addr),
    .bram_clk(bram_clk),
    .bram_rst(bram_rst),
    .axis_clk(axis_clk),
    .axis_aresetn(axis_aresetn),
    .CAP_AXIS_tdata(CAP_AXIS_tdata),
    .CAP_AXIS_tready(CAP_AXIS_tready),
    .CAP_AXIS_tvalid(CAP_AXIS_tvalid),
    .PASSTHROUGH_AXIS_tdata(PASSTHROUGH_AXIS_tdata),
    .PASSTHROUGH_AXIS_tready(PASSTHROUGH_AXIS_tready),
    .PASSTHROUGH_AXIS_tvalid(PASSTHROUGH_AXIS_tvalid),
    .trig_cap(trig_cap),
    .trig_cap_p_2to1_mon(trig_cap_p_2to1_mon)
  );
endmodule
