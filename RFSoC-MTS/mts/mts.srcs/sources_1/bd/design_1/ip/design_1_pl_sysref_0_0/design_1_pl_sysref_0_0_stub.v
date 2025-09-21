// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Sep 21 13:03:05 2025
// Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_pl_sysref_0_0/design_1_pl_sysref_0_0_stub.v
// Design      : design_1_pl_sysref_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pl_sysref,Vivado 2019.2" *)
module design_1_pl_sysref_0_0(pl_clk, pl_sysref_p, pl_sysref_n, selNeg, 
  user_sysref_adc, user_sysref_dac)
/* synthesis syn_black_box black_box_pad_pin="pl_clk,pl_sysref_p,pl_sysref_n,selNeg,user_sysref_adc,user_sysref_dac" */;
  input pl_clk;
  input pl_sysref_p;
  input pl_sysref_n;
  input selNeg;
  output user_sysref_adc;
  output user_sysref_dac;
endmodule
