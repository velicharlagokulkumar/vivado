//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Sat Sep 20 16:35:45 2025
//Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
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
    adc1_clk_0_clk_n,
    adc1_clk_0_clk_p,
    adc2_clk_0_clk_n,
    adc2_clk_0_clk_p,
    adc3_clk_0_clk_n,
    adc3_clk_0_clk_p,
    dac0_clk_0_clk_n,
    dac0_clk_0_clk_p,
    dac1_clk_0_clk_n,
    dac1_clk_0_clk_p,
    pl_sysref_0_clk_n,
    pl_sysref_0_clk_p,
    sysref_in_0_diff_n,
    sysref_in_0_diff_p,
    vin0_01_0_v_n,
    vin0_01_0_v_p,
    vin0_23_0_v_n,
    vin0_23_0_v_p,
    vin1_01_0_v_n,
    vin1_01_0_v_p,
    vin1_23_0_v_n,
    vin1_23_0_v_p,
    vin2_01_0_v_n,
    vin2_01_0_v_p,
    vin2_23_0_v_n,
    vin2_23_0_v_p,
    vin3_01_0_v_n,
    vin3_01_0_v_p,
    vin3_23_0_v_n,
    vin3_23_0_v_p,
    vout00_0_v_n,
    vout00_0_v_p,
    vout01_0_v_n,
    vout01_0_v_p,
    vout02_0_v_n,
    vout02_0_v_p,
    vout03_0_v_n,
    vout03_0_v_p,
    vout10_0_v_n,
    vout10_0_v_p,
    vout11_0_v_n,
    vout11_0_v_p,
    vout12_0_v_n,
    vout12_0_v_p,
    vout13_0_v_n,
    vout13_0_v_p);
  input CLK_IN_D_0_clk_n;
  input CLK_IN_D_0_clk_p;
  input adc0_clk_0_clk_n;
  input adc0_clk_0_clk_p;
  input adc1_clk_0_clk_n;
  input adc1_clk_0_clk_p;
  input adc2_clk_0_clk_n;
  input adc2_clk_0_clk_p;
  input adc3_clk_0_clk_n;
  input adc3_clk_0_clk_p;
  input dac0_clk_0_clk_n;
  input dac0_clk_0_clk_p;
  input dac1_clk_0_clk_n;
  input dac1_clk_0_clk_p;
  input pl_sysref_0_clk_n;
  input pl_sysref_0_clk_p;
  input sysref_in_0_diff_n;
  input sysref_in_0_diff_p;
  input vin0_01_0_v_n;
  input vin0_01_0_v_p;
  input vin0_23_0_v_n;
  input vin0_23_0_v_p;
  input vin1_01_0_v_n;
  input vin1_01_0_v_p;
  input vin1_23_0_v_n;
  input vin1_23_0_v_p;
  input vin2_01_0_v_n;
  input vin2_01_0_v_p;
  input vin2_23_0_v_n;
  input vin2_23_0_v_p;
  input vin3_01_0_v_n;
  input vin3_01_0_v_p;
  input vin3_23_0_v_n;
  input vin3_23_0_v_p;
  output vout00_0_v_n;
  output vout00_0_v_p;
  output vout01_0_v_n;
  output vout01_0_v_p;
  output vout02_0_v_n;
  output vout02_0_v_p;
  output vout03_0_v_n;
  output vout03_0_v_p;
  output vout10_0_v_n;
  output vout10_0_v_p;
  output vout11_0_v_n;
  output vout11_0_v_p;
  output vout12_0_v_n;
  output vout12_0_v_p;
  output vout13_0_v_n;
  output vout13_0_v_p;

  wire CLK_IN_D_0_clk_n;
  wire CLK_IN_D_0_clk_p;
  wire adc0_clk_0_clk_n;
  wire adc0_clk_0_clk_p;
  wire adc1_clk_0_clk_n;
  wire adc1_clk_0_clk_p;
  wire adc2_clk_0_clk_n;
  wire adc2_clk_0_clk_p;
  wire adc3_clk_0_clk_n;
  wire adc3_clk_0_clk_p;
  wire dac0_clk_0_clk_n;
  wire dac0_clk_0_clk_p;
  wire dac1_clk_0_clk_n;
  wire dac1_clk_0_clk_p;
  wire pl_sysref_0_clk_n;
  wire pl_sysref_0_clk_p;
  wire sysref_in_0_diff_n;
  wire sysref_in_0_diff_p;
  wire vin0_01_0_v_n;
  wire vin0_01_0_v_p;
  wire vin0_23_0_v_n;
  wire vin0_23_0_v_p;
  wire vin1_01_0_v_n;
  wire vin1_01_0_v_p;
  wire vin1_23_0_v_n;
  wire vin1_23_0_v_p;
  wire vin2_01_0_v_n;
  wire vin2_01_0_v_p;
  wire vin2_23_0_v_n;
  wire vin2_23_0_v_p;
  wire vin3_01_0_v_n;
  wire vin3_01_0_v_p;
  wire vin3_23_0_v_n;
  wire vin3_23_0_v_p;
  wire vout00_0_v_n;
  wire vout00_0_v_p;
  wire vout01_0_v_n;
  wire vout01_0_v_p;
  wire vout02_0_v_n;
  wire vout02_0_v_p;
  wire vout03_0_v_n;
  wire vout03_0_v_p;
  wire vout10_0_v_n;
  wire vout10_0_v_p;
  wire vout11_0_v_n;
  wire vout11_0_v_p;
  wire vout12_0_v_n;
  wire vout12_0_v_p;
  wire vout13_0_v_n;
  wire vout13_0_v_p;

  design_1 design_1_i
       (.CLK_IN_D_0_clk_n(CLK_IN_D_0_clk_n),
        .CLK_IN_D_0_clk_p(CLK_IN_D_0_clk_p),
        .adc0_clk_0_clk_n(adc0_clk_0_clk_n),
        .adc0_clk_0_clk_p(adc0_clk_0_clk_p),
        .adc1_clk_0_clk_n(adc1_clk_0_clk_n),
        .adc1_clk_0_clk_p(adc1_clk_0_clk_p),
        .adc2_clk_0_clk_n(adc2_clk_0_clk_n),
        .adc2_clk_0_clk_p(adc2_clk_0_clk_p),
        .adc3_clk_0_clk_n(adc3_clk_0_clk_n),
        .adc3_clk_0_clk_p(adc3_clk_0_clk_p),
        .dac0_clk_0_clk_n(dac0_clk_0_clk_n),
        .dac0_clk_0_clk_p(dac0_clk_0_clk_p),
        .dac1_clk_0_clk_n(dac1_clk_0_clk_n),
        .dac1_clk_0_clk_p(dac1_clk_0_clk_p),
        .pl_sysref_0_clk_n(pl_sysref_0_clk_n),
        .pl_sysref_0_clk_p(pl_sysref_0_clk_p),
        .sysref_in_0_diff_n(sysref_in_0_diff_n),
        .sysref_in_0_diff_p(sysref_in_0_diff_p),
        .vin0_01_0_v_n(vin0_01_0_v_n),
        .vin0_01_0_v_p(vin0_01_0_v_p),
        .vin0_23_0_v_n(vin0_23_0_v_n),
        .vin0_23_0_v_p(vin0_23_0_v_p),
        .vin1_01_0_v_n(vin1_01_0_v_n),
        .vin1_01_0_v_p(vin1_01_0_v_p),
        .vin1_23_0_v_n(vin1_23_0_v_n),
        .vin1_23_0_v_p(vin1_23_0_v_p),
        .vin2_01_0_v_n(vin2_01_0_v_n),
        .vin2_01_0_v_p(vin2_01_0_v_p),
        .vin2_23_0_v_n(vin2_23_0_v_n),
        .vin2_23_0_v_p(vin2_23_0_v_p),
        .vin3_01_0_v_n(vin3_01_0_v_n),
        .vin3_01_0_v_p(vin3_01_0_v_p),
        .vin3_23_0_v_n(vin3_23_0_v_n),
        .vin3_23_0_v_p(vin3_23_0_v_p),
        .vout00_0_v_n(vout00_0_v_n),
        .vout00_0_v_p(vout00_0_v_p),
        .vout01_0_v_n(vout01_0_v_n),
        .vout01_0_v_p(vout01_0_v_p),
        .vout02_0_v_n(vout02_0_v_n),
        .vout02_0_v_p(vout02_0_v_p),
        .vout03_0_v_n(vout03_0_v_n),
        .vout03_0_v_p(vout03_0_v_p),
        .vout10_0_v_n(vout10_0_v_n),
        .vout10_0_v_p(vout10_0_v_p),
        .vout11_0_v_n(vout11_0_v_n),
        .vout11_0_v_p(vout11_0_v_p),
        .vout12_0_v_n(vout12_0_v_n),
        .vout12_0_v_p(vout12_0_v_p),
        .vout13_0_v_n(vout13_0_v_n),
        .vout13_0_v_p(vout13_0_v_p));
endmodule
