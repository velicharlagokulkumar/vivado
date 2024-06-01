// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sat Jun  1 15:33:24 2024
// Host        : wisig-OptiPlex-3060 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/wisig/Music/xilinx/ZCU111_dds_ila_2020p2/vv.xpr/vv/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_vio_0_0/design_1_vio_0_0_stub.v
// Design      : design_1_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2019.2" *)
module design_1_vio_0_0(clk, probe_in0, probe_in1, probe_in2, probe_out0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[0:0],probe_in1[0:0],probe_in2[0:0],probe_out0[0:0]" */;
  input clk;
  input [0:0]probe_in0;
  input [0:0]probe_in1;
  input [0:0]probe_in2;
  output [0:0]probe_out0;
endmodule
