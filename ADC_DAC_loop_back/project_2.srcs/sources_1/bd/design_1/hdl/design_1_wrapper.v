//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Sat Jun  1 15:16:00 2024
//Host        : wisig-OptiPlex-3060 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK_IN_D_0_clk_n,
    CLK_IN_D_0_clk_p,
    adc0_clk_0_clk_n,
    adc0_clk_0_clk_p,
    dac1_clk_0_clk_n,
    dac1_clk_0_clk_p,
    vin0_01_0_v_n,
    vin0_01_0_v_p,
    vout13_0_v_n,
    vout13_0_v_p);
  input [0:0]CLK_IN_D_0_clk_n;
  input [0:0]CLK_IN_D_0_clk_p;
  input adc0_clk_0_clk_n;
  input adc0_clk_0_clk_p;
  input dac1_clk_0_clk_n;
  input dac1_clk_0_clk_p;
  input vin0_01_0_v_n;
  input vin0_01_0_v_p;
  output vout13_0_v_n;
  output vout13_0_v_p;

  wire [0:0]CLK_IN_D_0_clk_n;
  wire [0:0]CLK_IN_D_0_clk_p;
  wire adc0_clk_0_clk_n;
  wire adc0_clk_0_clk_p;
  wire dac1_clk_0_clk_n;
  wire dac1_clk_0_clk_p;
  wire vin0_01_0_v_n;
  wire vin0_01_0_v_p;
  wire vout13_0_v_n;
  wire vout13_0_v_p;

  design_1 design_1_i
       (.CLK_IN_D_0_clk_n(CLK_IN_D_0_clk_n),
        .CLK_IN_D_0_clk_p(CLK_IN_D_0_clk_p),
        .adc0_clk_0_clk_n(adc0_clk_0_clk_n),
        .adc0_clk_0_clk_p(adc0_clk_0_clk_p),
        .dac1_clk_0_clk_n(dac1_clk_0_clk_n),
        .dac1_clk_0_clk_p(dac1_clk_0_clk_p),
        .vin0_01_0_v_n(vin0_01_0_v_n),
        .vin0_01_0_v_p(vin0_01_0_v_p),
        .vout13_0_v_n(vout13_0_v_n),
        .vout13_0_v_p(vout13_0_v_p));
endmodule
