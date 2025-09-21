// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Sep 21 13:04:28 2025
// Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ctrl_snapshot_128k_0_5_stub.v
// Design      : design_1_ctrl_snapshot_128k_0_5
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ctrl_snapshot_128k,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(bram_wdata, bram_we, bram_en, bram_rdata, 
  bram_addr, bram_clk, bram_rst, axis_clk, axis_aresetn, CAP_AXIS_tdata, CAP_AXIS_tready, 
  CAP_AXIS_tvalid, PASSTHROUGH_AXIS_tdata, PASSTHROUGH_AXIS_tready, 
  PASSTHROUGH_AXIS_tvalid, trig_cap, trig_cap_p_2to1_mon)
/* synthesis syn_black_box black_box_pad_pin="bram_wdata[255:0],bram_we[31:0],bram_en,bram_rdata[255:0],bram_addr[31:0],bram_clk,bram_rst,axis_clk,axis_aresetn,CAP_AXIS_tdata[255:0],CAP_AXIS_tready,CAP_AXIS_tvalid,PASSTHROUGH_AXIS_tdata[255:0],PASSTHROUGH_AXIS_tready,PASSTHROUGH_AXIS_tvalid,trig_cap,trig_cap_p_2to1_mon[1:0]" */;
  output [255:0]bram_wdata;
  output [31:0]bram_we;
  output bram_en;
  input [255:0]bram_rdata;
  output [31:0]bram_addr;
  output bram_clk;
  output bram_rst;
  input axis_clk;
  input axis_aresetn;
  input [255:0]CAP_AXIS_tdata;
  output CAP_AXIS_tready;
  input CAP_AXIS_tvalid;
  output [255:0]PASSTHROUGH_AXIS_tdata;
  input PASSTHROUGH_AXIS_tready;
  output PASSTHROUGH_AXIS_tvalid;
  input trig_cap;
  output [1:0]trig_cap_p_2to1_mon;
endmodule
