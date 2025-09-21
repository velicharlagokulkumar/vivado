// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Sep 21 13:04:28 2025
// Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_ctrl_snapshot_128k_0_3_sim_netlist.v
// Design      : design_1_ctrl_snapshot_128k_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_snapshot_128k
   (trig_cap_p_2to1_mon,
    bram_wdata,
    SR,
    bram_en_reg_0,
    bram_we,
    PASSTHROUGH_AXIS_tdata,
    PASSTHROUGH_AXIS_tvalid,
    bram_addr,
    axis_aresetn,
    CAP_AXIS_tdata,
    axis_clk,
    trig_cap,
    CAP_AXIS_tvalid);
  output [1:0]trig_cap_p_2to1_mon;
  output [255:0]bram_wdata;
  output [0:0]SR;
  output bram_en_reg_0;
  output [0:0]bram_we;
  output [255:0]PASSTHROUGH_AXIS_tdata;
  output PASSTHROUGH_AXIS_tvalid;
  output [11:0]bram_addr;
  input axis_aresetn;
  input [255:0]CAP_AXIS_tdata;
  input axis_clk;
  input trig_cap;
  input CAP_AXIS_tvalid;

  wire [255:0]CAP_AXIS_tdata;
  wire CAP_AXIS_tvalid;
  wire [255:0]PASSTHROUGH_AXIS_tdata;
  wire PASSTHROUGH_AXIS_tvalid;
  wire [0:0]SR;
  wire axis_aresetn;
  wire axis_clk;
  wire [11:0]bram_addr;
  wire \bram_addr[12]_i_2_n_0 ;
  wire \bram_addr[16]_i_1_n_0 ;
  wire \bram_addr[16]_i_2_n_0 ;
  wire \bram_addr_reg[12]_i_1_n_0 ;
  wire \bram_addr_reg[12]_i_1_n_1 ;
  wire \bram_addr_reg[12]_i_1_n_10 ;
  wire \bram_addr_reg[12]_i_1_n_11 ;
  wire \bram_addr_reg[12]_i_1_n_12 ;
  wire \bram_addr_reg[12]_i_1_n_13 ;
  wire \bram_addr_reg[12]_i_1_n_14 ;
  wire \bram_addr_reg[12]_i_1_n_15 ;
  wire \bram_addr_reg[12]_i_1_n_2 ;
  wire \bram_addr_reg[12]_i_1_n_3 ;
  wire \bram_addr_reg[12]_i_1_n_4 ;
  wire \bram_addr_reg[12]_i_1_n_5 ;
  wire \bram_addr_reg[12]_i_1_n_6 ;
  wire \bram_addr_reg[12]_i_1_n_7 ;
  wire \bram_addr_reg[12]_i_1_n_8 ;
  wire \bram_addr_reg[12]_i_1_n_9 ;
  wire \bram_addr_reg[16]_i_3_n_12 ;
  wire \bram_addr_reg[16]_i_3_n_13 ;
  wire \bram_addr_reg[16]_i_3_n_14 ;
  wire \bram_addr_reg[16]_i_3_n_15 ;
  wire \bram_addr_reg[16]_i_3_n_5 ;
  wire \bram_addr_reg[16]_i_3_n_6 ;
  wire \bram_addr_reg[16]_i_3_n_7 ;
  wire bram_en_i_1_n_0;
  wire bram_en_reg_0;
  wire [255:0]bram_wdata;
  wire [0:0]bram_we;
  wire \bram_we[31]_i_1_n_0 ;
  wire \bram_we[31]_i_2_n_0 ;
  wire \bram_we[31]_i_3_n_0 ;
  wire \bram_we[31]_i_4_n_0 ;
  wire \bram_we[31]_i_5_n_0 ;
  wire trig_cap;
  (* async_reg = "true" *) wire [2:0]trig_cap_p;
  wire [7:3]\NLW_bram_addr_reg[16]_i_3_CO_UNCONNECTED ;
  wire [7:4]\NLW_bram_addr_reg[16]_i_3_O_UNCONNECTED ;

  assign trig_cap_p_2to1_mon[1:0] = trig_cap_p[2:1];
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[0] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[0]),
        .Q(PASSTHROUGH_AXIS_tdata[0]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[100] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[100]),
        .Q(PASSTHROUGH_AXIS_tdata[100]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[101] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[101]),
        .Q(PASSTHROUGH_AXIS_tdata[101]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[102] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[102]),
        .Q(PASSTHROUGH_AXIS_tdata[102]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[103] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[103]),
        .Q(PASSTHROUGH_AXIS_tdata[103]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[104] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[104]),
        .Q(PASSTHROUGH_AXIS_tdata[104]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[105] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[105]),
        .Q(PASSTHROUGH_AXIS_tdata[105]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[106] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[106]),
        .Q(PASSTHROUGH_AXIS_tdata[106]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[107] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[107]),
        .Q(PASSTHROUGH_AXIS_tdata[107]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[108] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[108]),
        .Q(PASSTHROUGH_AXIS_tdata[108]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[109] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[109]),
        .Q(PASSTHROUGH_AXIS_tdata[109]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[10] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[10]),
        .Q(PASSTHROUGH_AXIS_tdata[10]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[110] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[110]),
        .Q(PASSTHROUGH_AXIS_tdata[110]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[111] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[111]),
        .Q(PASSTHROUGH_AXIS_tdata[111]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[112] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[112]),
        .Q(PASSTHROUGH_AXIS_tdata[112]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[113] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[113]),
        .Q(PASSTHROUGH_AXIS_tdata[113]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[114] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[114]),
        .Q(PASSTHROUGH_AXIS_tdata[114]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[115] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[115]),
        .Q(PASSTHROUGH_AXIS_tdata[115]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[116] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[116]),
        .Q(PASSTHROUGH_AXIS_tdata[116]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[117] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[117]),
        .Q(PASSTHROUGH_AXIS_tdata[117]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[118] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[118]),
        .Q(PASSTHROUGH_AXIS_tdata[118]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[119] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[119]),
        .Q(PASSTHROUGH_AXIS_tdata[119]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[11] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[11]),
        .Q(PASSTHROUGH_AXIS_tdata[11]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[120] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[120]),
        .Q(PASSTHROUGH_AXIS_tdata[120]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[121] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[121]),
        .Q(PASSTHROUGH_AXIS_tdata[121]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[122] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[122]),
        .Q(PASSTHROUGH_AXIS_tdata[122]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[123] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[123]),
        .Q(PASSTHROUGH_AXIS_tdata[123]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[124] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[124]),
        .Q(PASSTHROUGH_AXIS_tdata[124]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[125] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[125]),
        .Q(PASSTHROUGH_AXIS_tdata[125]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[126] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[126]),
        .Q(PASSTHROUGH_AXIS_tdata[126]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[127] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[127]),
        .Q(PASSTHROUGH_AXIS_tdata[127]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[128] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[128]),
        .Q(PASSTHROUGH_AXIS_tdata[128]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[129] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[129]),
        .Q(PASSTHROUGH_AXIS_tdata[129]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[12] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[12]),
        .Q(PASSTHROUGH_AXIS_tdata[12]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[130] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[130]),
        .Q(PASSTHROUGH_AXIS_tdata[130]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[131] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[131]),
        .Q(PASSTHROUGH_AXIS_tdata[131]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[132] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[132]),
        .Q(PASSTHROUGH_AXIS_tdata[132]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[133] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[133]),
        .Q(PASSTHROUGH_AXIS_tdata[133]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[134] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[134]),
        .Q(PASSTHROUGH_AXIS_tdata[134]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[135] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[135]),
        .Q(PASSTHROUGH_AXIS_tdata[135]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[136] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[136]),
        .Q(PASSTHROUGH_AXIS_tdata[136]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[137] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[137]),
        .Q(PASSTHROUGH_AXIS_tdata[137]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[138] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[138]),
        .Q(PASSTHROUGH_AXIS_tdata[138]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[139] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[139]),
        .Q(PASSTHROUGH_AXIS_tdata[139]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[13] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[13]),
        .Q(PASSTHROUGH_AXIS_tdata[13]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[140] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[140]),
        .Q(PASSTHROUGH_AXIS_tdata[140]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[141] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[141]),
        .Q(PASSTHROUGH_AXIS_tdata[141]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[142] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[142]),
        .Q(PASSTHROUGH_AXIS_tdata[142]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[143] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[143]),
        .Q(PASSTHROUGH_AXIS_tdata[143]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[144] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[144]),
        .Q(PASSTHROUGH_AXIS_tdata[144]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[145] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[145]),
        .Q(PASSTHROUGH_AXIS_tdata[145]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[146] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[146]),
        .Q(PASSTHROUGH_AXIS_tdata[146]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[147] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[147]),
        .Q(PASSTHROUGH_AXIS_tdata[147]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[148] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[148]),
        .Q(PASSTHROUGH_AXIS_tdata[148]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[149] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[149]),
        .Q(PASSTHROUGH_AXIS_tdata[149]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[14] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[14]),
        .Q(PASSTHROUGH_AXIS_tdata[14]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[150] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[150]),
        .Q(PASSTHROUGH_AXIS_tdata[150]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[151] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[151]),
        .Q(PASSTHROUGH_AXIS_tdata[151]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[152] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[152]),
        .Q(PASSTHROUGH_AXIS_tdata[152]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[153] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[153]),
        .Q(PASSTHROUGH_AXIS_tdata[153]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[154] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[154]),
        .Q(PASSTHROUGH_AXIS_tdata[154]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[155] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[155]),
        .Q(PASSTHROUGH_AXIS_tdata[155]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[156] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[156]),
        .Q(PASSTHROUGH_AXIS_tdata[156]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[157] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[157]),
        .Q(PASSTHROUGH_AXIS_tdata[157]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[158] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[158]),
        .Q(PASSTHROUGH_AXIS_tdata[158]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[159] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[159]),
        .Q(PASSTHROUGH_AXIS_tdata[159]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[15] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[15]),
        .Q(PASSTHROUGH_AXIS_tdata[15]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[160] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[160]),
        .Q(PASSTHROUGH_AXIS_tdata[160]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[161] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[161]),
        .Q(PASSTHROUGH_AXIS_tdata[161]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[162] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[162]),
        .Q(PASSTHROUGH_AXIS_tdata[162]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[163] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[163]),
        .Q(PASSTHROUGH_AXIS_tdata[163]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[164] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[164]),
        .Q(PASSTHROUGH_AXIS_tdata[164]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[165] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[165]),
        .Q(PASSTHROUGH_AXIS_tdata[165]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[166] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[166]),
        .Q(PASSTHROUGH_AXIS_tdata[166]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[167] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[167]),
        .Q(PASSTHROUGH_AXIS_tdata[167]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[168] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[168]),
        .Q(PASSTHROUGH_AXIS_tdata[168]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[169] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[169]),
        .Q(PASSTHROUGH_AXIS_tdata[169]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[16] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[16]),
        .Q(PASSTHROUGH_AXIS_tdata[16]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[170] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[170]),
        .Q(PASSTHROUGH_AXIS_tdata[170]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[171] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[171]),
        .Q(PASSTHROUGH_AXIS_tdata[171]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[172] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[172]),
        .Q(PASSTHROUGH_AXIS_tdata[172]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[173] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[173]),
        .Q(PASSTHROUGH_AXIS_tdata[173]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[174] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[174]),
        .Q(PASSTHROUGH_AXIS_tdata[174]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[175] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[175]),
        .Q(PASSTHROUGH_AXIS_tdata[175]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[176] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[176]),
        .Q(PASSTHROUGH_AXIS_tdata[176]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[177] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[177]),
        .Q(PASSTHROUGH_AXIS_tdata[177]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[178] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[178]),
        .Q(PASSTHROUGH_AXIS_tdata[178]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[179] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[179]),
        .Q(PASSTHROUGH_AXIS_tdata[179]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[17] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[17]),
        .Q(PASSTHROUGH_AXIS_tdata[17]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[180] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[180]),
        .Q(PASSTHROUGH_AXIS_tdata[180]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[181] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[181]),
        .Q(PASSTHROUGH_AXIS_tdata[181]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[182] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[182]),
        .Q(PASSTHROUGH_AXIS_tdata[182]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[183] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[183]),
        .Q(PASSTHROUGH_AXIS_tdata[183]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[184] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[184]),
        .Q(PASSTHROUGH_AXIS_tdata[184]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[185] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[185]),
        .Q(PASSTHROUGH_AXIS_tdata[185]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[186] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[186]),
        .Q(PASSTHROUGH_AXIS_tdata[186]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[187] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[187]),
        .Q(PASSTHROUGH_AXIS_tdata[187]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[188] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[188]),
        .Q(PASSTHROUGH_AXIS_tdata[188]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[189] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[189]),
        .Q(PASSTHROUGH_AXIS_tdata[189]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[18] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[18]),
        .Q(PASSTHROUGH_AXIS_tdata[18]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[190] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[190]),
        .Q(PASSTHROUGH_AXIS_tdata[190]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[191] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[191]),
        .Q(PASSTHROUGH_AXIS_tdata[191]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[192] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[192]),
        .Q(PASSTHROUGH_AXIS_tdata[192]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[193] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[193]),
        .Q(PASSTHROUGH_AXIS_tdata[193]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[194] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[194]),
        .Q(PASSTHROUGH_AXIS_tdata[194]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[195] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[195]),
        .Q(PASSTHROUGH_AXIS_tdata[195]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[196] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[196]),
        .Q(PASSTHROUGH_AXIS_tdata[196]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[197] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[197]),
        .Q(PASSTHROUGH_AXIS_tdata[197]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[198] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[198]),
        .Q(PASSTHROUGH_AXIS_tdata[198]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[199] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[199]),
        .Q(PASSTHROUGH_AXIS_tdata[199]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[19] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[19]),
        .Q(PASSTHROUGH_AXIS_tdata[19]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[1] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[1]),
        .Q(PASSTHROUGH_AXIS_tdata[1]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[200] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[200]),
        .Q(PASSTHROUGH_AXIS_tdata[200]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[201] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[201]),
        .Q(PASSTHROUGH_AXIS_tdata[201]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[202] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[202]),
        .Q(PASSTHROUGH_AXIS_tdata[202]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[203] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[203]),
        .Q(PASSTHROUGH_AXIS_tdata[203]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[204] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[204]),
        .Q(PASSTHROUGH_AXIS_tdata[204]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[205] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[205]),
        .Q(PASSTHROUGH_AXIS_tdata[205]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[206] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[206]),
        .Q(PASSTHROUGH_AXIS_tdata[206]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[207] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[207]),
        .Q(PASSTHROUGH_AXIS_tdata[207]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[208] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[208]),
        .Q(PASSTHROUGH_AXIS_tdata[208]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[209] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[209]),
        .Q(PASSTHROUGH_AXIS_tdata[209]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[20] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[20]),
        .Q(PASSTHROUGH_AXIS_tdata[20]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[210] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[210]),
        .Q(PASSTHROUGH_AXIS_tdata[210]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[211] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[211]),
        .Q(PASSTHROUGH_AXIS_tdata[211]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[212] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[212]),
        .Q(PASSTHROUGH_AXIS_tdata[212]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[213] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[213]),
        .Q(PASSTHROUGH_AXIS_tdata[213]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[214] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[214]),
        .Q(PASSTHROUGH_AXIS_tdata[214]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[215] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[215]),
        .Q(PASSTHROUGH_AXIS_tdata[215]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[216] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[216]),
        .Q(PASSTHROUGH_AXIS_tdata[216]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[217] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[217]),
        .Q(PASSTHROUGH_AXIS_tdata[217]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[218] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[218]),
        .Q(PASSTHROUGH_AXIS_tdata[218]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[219] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[219]),
        .Q(PASSTHROUGH_AXIS_tdata[219]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[21] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[21]),
        .Q(PASSTHROUGH_AXIS_tdata[21]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[220] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[220]),
        .Q(PASSTHROUGH_AXIS_tdata[220]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[221] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[221]),
        .Q(PASSTHROUGH_AXIS_tdata[221]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[222] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[222]),
        .Q(PASSTHROUGH_AXIS_tdata[222]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[223] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[223]),
        .Q(PASSTHROUGH_AXIS_tdata[223]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[224] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[224]),
        .Q(PASSTHROUGH_AXIS_tdata[224]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[225] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[225]),
        .Q(PASSTHROUGH_AXIS_tdata[225]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[226] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[226]),
        .Q(PASSTHROUGH_AXIS_tdata[226]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[227] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[227]),
        .Q(PASSTHROUGH_AXIS_tdata[227]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[228] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[228]),
        .Q(PASSTHROUGH_AXIS_tdata[228]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[229] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[229]),
        .Q(PASSTHROUGH_AXIS_tdata[229]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[22] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[22]),
        .Q(PASSTHROUGH_AXIS_tdata[22]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[230] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[230]),
        .Q(PASSTHROUGH_AXIS_tdata[230]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[231] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[231]),
        .Q(PASSTHROUGH_AXIS_tdata[231]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[232] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[232]),
        .Q(PASSTHROUGH_AXIS_tdata[232]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[233] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[233]),
        .Q(PASSTHROUGH_AXIS_tdata[233]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[234] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[234]),
        .Q(PASSTHROUGH_AXIS_tdata[234]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[235] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[235]),
        .Q(PASSTHROUGH_AXIS_tdata[235]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[236] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[236]),
        .Q(PASSTHROUGH_AXIS_tdata[236]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[237] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[237]),
        .Q(PASSTHROUGH_AXIS_tdata[237]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[238] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[238]),
        .Q(PASSTHROUGH_AXIS_tdata[238]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[239] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[239]),
        .Q(PASSTHROUGH_AXIS_tdata[239]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[23] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[23]),
        .Q(PASSTHROUGH_AXIS_tdata[23]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[240] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[240]),
        .Q(PASSTHROUGH_AXIS_tdata[240]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[241] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[241]),
        .Q(PASSTHROUGH_AXIS_tdata[241]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[242] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[242]),
        .Q(PASSTHROUGH_AXIS_tdata[242]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[243] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[243]),
        .Q(PASSTHROUGH_AXIS_tdata[243]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[244] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[244]),
        .Q(PASSTHROUGH_AXIS_tdata[244]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[245] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[245]),
        .Q(PASSTHROUGH_AXIS_tdata[245]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[246] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[246]),
        .Q(PASSTHROUGH_AXIS_tdata[246]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[247] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[247]),
        .Q(PASSTHROUGH_AXIS_tdata[247]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[248] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[248]),
        .Q(PASSTHROUGH_AXIS_tdata[248]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[249] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[249]),
        .Q(PASSTHROUGH_AXIS_tdata[249]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[24] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[24]),
        .Q(PASSTHROUGH_AXIS_tdata[24]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[250] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[250]),
        .Q(PASSTHROUGH_AXIS_tdata[250]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[251] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[251]),
        .Q(PASSTHROUGH_AXIS_tdata[251]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[252] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[252]),
        .Q(PASSTHROUGH_AXIS_tdata[252]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[253] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[253]),
        .Q(PASSTHROUGH_AXIS_tdata[253]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[254] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[254]),
        .Q(PASSTHROUGH_AXIS_tdata[254]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[255] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[255]),
        .Q(PASSTHROUGH_AXIS_tdata[255]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[25] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[25]),
        .Q(PASSTHROUGH_AXIS_tdata[25]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[26] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[26]),
        .Q(PASSTHROUGH_AXIS_tdata[26]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[27] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[27]),
        .Q(PASSTHROUGH_AXIS_tdata[27]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[28] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[28]),
        .Q(PASSTHROUGH_AXIS_tdata[28]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[29] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[29]),
        .Q(PASSTHROUGH_AXIS_tdata[29]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[2] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[2]),
        .Q(PASSTHROUGH_AXIS_tdata[2]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[30] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[30]),
        .Q(PASSTHROUGH_AXIS_tdata[30]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[31] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[31]),
        .Q(PASSTHROUGH_AXIS_tdata[31]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[32] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[32]),
        .Q(PASSTHROUGH_AXIS_tdata[32]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[33] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[33]),
        .Q(PASSTHROUGH_AXIS_tdata[33]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[34] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[34]),
        .Q(PASSTHROUGH_AXIS_tdata[34]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[35] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[35]),
        .Q(PASSTHROUGH_AXIS_tdata[35]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[36] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[36]),
        .Q(PASSTHROUGH_AXIS_tdata[36]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[37] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[37]),
        .Q(PASSTHROUGH_AXIS_tdata[37]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[38] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[38]),
        .Q(PASSTHROUGH_AXIS_tdata[38]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[39] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[39]),
        .Q(PASSTHROUGH_AXIS_tdata[39]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[3] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[3]),
        .Q(PASSTHROUGH_AXIS_tdata[3]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[40] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[40]),
        .Q(PASSTHROUGH_AXIS_tdata[40]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[41] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[41]),
        .Q(PASSTHROUGH_AXIS_tdata[41]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[42] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[42]),
        .Q(PASSTHROUGH_AXIS_tdata[42]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[43] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[43]),
        .Q(PASSTHROUGH_AXIS_tdata[43]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[44] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[44]),
        .Q(PASSTHROUGH_AXIS_tdata[44]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[45] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[45]),
        .Q(PASSTHROUGH_AXIS_tdata[45]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[46] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[46]),
        .Q(PASSTHROUGH_AXIS_tdata[46]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[47] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[47]),
        .Q(PASSTHROUGH_AXIS_tdata[47]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[48] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[48]),
        .Q(PASSTHROUGH_AXIS_tdata[48]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[49] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[49]),
        .Q(PASSTHROUGH_AXIS_tdata[49]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[4] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[4]),
        .Q(PASSTHROUGH_AXIS_tdata[4]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[50] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[50]),
        .Q(PASSTHROUGH_AXIS_tdata[50]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[51] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[51]),
        .Q(PASSTHROUGH_AXIS_tdata[51]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[52] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[52]),
        .Q(PASSTHROUGH_AXIS_tdata[52]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[53] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[53]),
        .Q(PASSTHROUGH_AXIS_tdata[53]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[54] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[54]),
        .Q(PASSTHROUGH_AXIS_tdata[54]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[55] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[55]),
        .Q(PASSTHROUGH_AXIS_tdata[55]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[56] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[56]),
        .Q(PASSTHROUGH_AXIS_tdata[56]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[57] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[57]),
        .Q(PASSTHROUGH_AXIS_tdata[57]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[58] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[58]),
        .Q(PASSTHROUGH_AXIS_tdata[58]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[59] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[59]),
        .Q(PASSTHROUGH_AXIS_tdata[59]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[5] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[5]),
        .Q(PASSTHROUGH_AXIS_tdata[5]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[60] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[60]),
        .Q(PASSTHROUGH_AXIS_tdata[60]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[61] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[61]),
        .Q(PASSTHROUGH_AXIS_tdata[61]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[62] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[62]),
        .Q(PASSTHROUGH_AXIS_tdata[62]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[63] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[63]),
        .Q(PASSTHROUGH_AXIS_tdata[63]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[64] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[64]),
        .Q(PASSTHROUGH_AXIS_tdata[64]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[65] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[65]),
        .Q(PASSTHROUGH_AXIS_tdata[65]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[66] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[66]),
        .Q(PASSTHROUGH_AXIS_tdata[66]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[67] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[67]),
        .Q(PASSTHROUGH_AXIS_tdata[67]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[68] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[68]),
        .Q(PASSTHROUGH_AXIS_tdata[68]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[69] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[69]),
        .Q(PASSTHROUGH_AXIS_tdata[69]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[6] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[6]),
        .Q(PASSTHROUGH_AXIS_tdata[6]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[70] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[70]),
        .Q(PASSTHROUGH_AXIS_tdata[70]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[71] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[71]),
        .Q(PASSTHROUGH_AXIS_tdata[71]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[72] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[72]),
        .Q(PASSTHROUGH_AXIS_tdata[72]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[73] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[73]),
        .Q(PASSTHROUGH_AXIS_tdata[73]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[74] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[74]),
        .Q(PASSTHROUGH_AXIS_tdata[74]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[75] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[75]),
        .Q(PASSTHROUGH_AXIS_tdata[75]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[76] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[76]),
        .Q(PASSTHROUGH_AXIS_tdata[76]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[77] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[77]),
        .Q(PASSTHROUGH_AXIS_tdata[77]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[78] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[78]),
        .Q(PASSTHROUGH_AXIS_tdata[78]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[79] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[79]),
        .Q(PASSTHROUGH_AXIS_tdata[79]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[7] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[7]),
        .Q(PASSTHROUGH_AXIS_tdata[7]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[80] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[80]),
        .Q(PASSTHROUGH_AXIS_tdata[80]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[81] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[81]),
        .Q(PASSTHROUGH_AXIS_tdata[81]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[82] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[82]),
        .Q(PASSTHROUGH_AXIS_tdata[82]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[83] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[83]),
        .Q(PASSTHROUGH_AXIS_tdata[83]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[84] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[84]),
        .Q(PASSTHROUGH_AXIS_tdata[84]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[85] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[85]),
        .Q(PASSTHROUGH_AXIS_tdata[85]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[86] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[86]),
        .Q(PASSTHROUGH_AXIS_tdata[86]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[87] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[87]),
        .Q(PASSTHROUGH_AXIS_tdata[87]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[88] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[88]),
        .Q(PASSTHROUGH_AXIS_tdata[88]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[89] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[89]),
        .Q(PASSTHROUGH_AXIS_tdata[89]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[8] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[8]),
        .Q(PASSTHROUGH_AXIS_tdata[8]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[90] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[90]),
        .Q(PASSTHROUGH_AXIS_tdata[90]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[91] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[91]),
        .Q(PASSTHROUGH_AXIS_tdata[91]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[92] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[92]),
        .Q(PASSTHROUGH_AXIS_tdata[92]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[93] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[93]),
        .Q(PASSTHROUGH_AXIS_tdata[93]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[94] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[94]),
        .Q(PASSTHROUGH_AXIS_tdata[94]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[95] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[95]),
        .Q(PASSTHROUGH_AXIS_tdata[95]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[96] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[96]),
        .Q(PASSTHROUGH_AXIS_tdata[96]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[97] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[97]),
        .Q(PASSTHROUGH_AXIS_tdata[97]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[98] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[98]),
        .Q(PASSTHROUGH_AXIS_tdata[98]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[99] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[99]),
        .Q(PASSTHROUGH_AXIS_tdata[99]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE \PASSTHROUGH_AXIS_tdata_reg[9] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[9]),
        .Q(PASSTHROUGH_AXIS_tdata[9]),
        .R(1'b0));
  FDRE PASSTHROUGH_AXIS_tvalid_reg
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tvalid),
        .Q(PASSTHROUGH_AXIS_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[12]_i_2 
       (.I0(bram_addr[0]),
        .O(\bram_addr[12]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \bram_addr[16]_i_1 
       (.I0(trig_cap_p[2]),
        .I1(trig_cap_p[1]),
        .I2(axis_aresetn),
        .O(\bram_addr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \bram_addr[16]_i_2 
       (.I0(\bram_we[31]_i_4_n_0 ),
        .I1(\bram_we[31]_i_3_n_0 ),
        .I2(\bram_we[31]_i_2_n_0 ),
        .I3(bram_en_reg_0),
        .O(\bram_addr[16]_i_2_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[10] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_10 ),
        .Q(bram_addr[5]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[11] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_9 ),
        .Q(bram_addr[6]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[12] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_8 ),
        .Q(bram_addr[7]),
        .R(\bram_addr[16]_i_1_n_0 ));
  CARRY8 \bram_addr_reg[12]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[12]_i_1_n_0 ,\bram_addr_reg[12]_i_1_n_1 ,\bram_addr_reg[12]_i_1_n_2 ,\bram_addr_reg[12]_i_1_n_3 ,\bram_addr_reg[12]_i_1_n_4 ,\bram_addr_reg[12]_i_1_n_5 ,\bram_addr_reg[12]_i_1_n_6 ,\bram_addr_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\bram_addr_reg[12]_i_1_n_8 ,\bram_addr_reg[12]_i_1_n_9 ,\bram_addr_reg[12]_i_1_n_10 ,\bram_addr_reg[12]_i_1_n_11 ,\bram_addr_reg[12]_i_1_n_12 ,\bram_addr_reg[12]_i_1_n_13 ,\bram_addr_reg[12]_i_1_n_14 ,\bram_addr_reg[12]_i_1_n_15 }),
        .S({bram_addr[7:1],\bram_addr[12]_i_2_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[13] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[16]_i_3_n_15 ),
        .Q(bram_addr[8]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[14] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[16]_i_3_n_14 ),
        .Q(bram_addr[9]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[15] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[16]_i_3_n_13 ),
        .Q(bram_addr[10]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[16] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[16]_i_3_n_12 ),
        .Q(bram_addr[11]),
        .R(\bram_addr[16]_i_1_n_0 ));
  CARRY8 \bram_addr_reg[16]_i_3 
       (.CI(\bram_addr_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bram_addr_reg[16]_i_3_CO_UNCONNECTED [7:3],\bram_addr_reg[16]_i_3_n_5 ,\bram_addr_reg[16]_i_3_n_6 ,\bram_addr_reg[16]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_bram_addr_reg[16]_i_3_O_UNCONNECTED [7:4],\bram_addr_reg[16]_i_3_n_12 ,\bram_addr_reg[16]_i_3_n_13 ,\bram_addr_reg[16]_i_3_n_14 ,\bram_addr_reg[16]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,bram_addr[11:8]}));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[5] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_15 ),
        .Q(bram_addr[0]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[6] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_14 ),
        .Q(bram_addr[1]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[7] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_13 ),
        .Q(bram_addr[2]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[8] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_12 ),
        .Q(bram_addr[3]),
        .R(\bram_addr[16]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \bram_addr_reg[9] 
       (.C(axis_clk),
        .CE(\bram_addr[16]_i_2_n_0 ),
        .D(\bram_addr_reg[12]_i_1_n_11 ),
        .Q(bram_addr[4]),
        .R(\bram_addr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFE00FEFFFE00FE00)) 
    bram_en_i_1
       (.I0(\bram_we[31]_i_2_n_0 ),
        .I1(\bram_we[31]_i_3_n_0 ),
        .I2(\bram_we[31]_i_4_n_0 ),
        .I3(bram_en_reg_0),
        .I4(trig_cap_p[2]),
        .I5(trig_cap_p[1]),
        .O(bram_en_i_1_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *) 
  FDRE bram_en_reg
       (.C(axis_clk),
        .CE(1'b1),
        .D(bram_en_i_1_n_0),
        .Q(bram_en_reg_0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_INST_0
       (.I0(axis_aresetn),
        .O(SR));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[0] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[0]),
        .Q(bram_wdata[0]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[100] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[100]),
        .Q(bram_wdata[100]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[101] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[101]),
        .Q(bram_wdata[101]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[102] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[102]),
        .Q(bram_wdata[102]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[103] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[103]),
        .Q(bram_wdata[103]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[104] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[104]),
        .Q(bram_wdata[104]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[105] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[105]),
        .Q(bram_wdata[105]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[106] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[106]),
        .Q(bram_wdata[106]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[107] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[107]),
        .Q(bram_wdata[107]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[108] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[108]),
        .Q(bram_wdata[108]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[109] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[109]),
        .Q(bram_wdata[109]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[10] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[10]),
        .Q(bram_wdata[10]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[110] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[110]),
        .Q(bram_wdata[110]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[111] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[111]),
        .Q(bram_wdata[111]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[112] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[112]),
        .Q(bram_wdata[112]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[113] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[113]),
        .Q(bram_wdata[113]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[114] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[114]),
        .Q(bram_wdata[114]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[115] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[115]),
        .Q(bram_wdata[115]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[116] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[116]),
        .Q(bram_wdata[116]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[117] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[117]),
        .Q(bram_wdata[117]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[118] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[118]),
        .Q(bram_wdata[118]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[119] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[119]),
        .Q(bram_wdata[119]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[11] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[11]),
        .Q(bram_wdata[11]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[120] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[120]),
        .Q(bram_wdata[120]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[121] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[121]),
        .Q(bram_wdata[121]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[122] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[122]),
        .Q(bram_wdata[122]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[123] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[123]),
        .Q(bram_wdata[123]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[124] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[124]),
        .Q(bram_wdata[124]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[125] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[125]),
        .Q(bram_wdata[125]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[126] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[126]),
        .Q(bram_wdata[126]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[127] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[127]),
        .Q(bram_wdata[127]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[128] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[128]),
        .Q(bram_wdata[128]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[129] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[129]),
        .Q(bram_wdata[129]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[12] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[12]),
        .Q(bram_wdata[12]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[130] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[130]),
        .Q(bram_wdata[130]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[131] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[131]),
        .Q(bram_wdata[131]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[132] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[132]),
        .Q(bram_wdata[132]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[133] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[133]),
        .Q(bram_wdata[133]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[134] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[134]),
        .Q(bram_wdata[134]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[135] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[135]),
        .Q(bram_wdata[135]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[136] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[136]),
        .Q(bram_wdata[136]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[137] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[137]),
        .Q(bram_wdata[137]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[138] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[138]),
        .Q(bram_wdata[138]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[139] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[139]),
        .Q(bram_wdata[139]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[13] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[13]),
        .Q(bram_wdata[13]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[140] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[140]),
        .Q(bram_wdata[140]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[141] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[141]),
        .Q(bram_wdata[141]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[142] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[142]),
        .Q(bram_wdata[142]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[143] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[143]),
        .Q(bram_wdata[143]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[144] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[144]),
        .Q(bram_wdata[144]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[145] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[145]),
        .Q(bram_wdata[145]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[146] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[146]),
        .Q(bram_wdata[146]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[147] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[147]),
        .Q(bram_wdata[147]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[148] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[148]),
        .Q(bram_wdata[148]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[149] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[149]),
        .Q(bram_wdata[149]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[14] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[14]),
        .Q(bram_wdata[14]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[150] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[150]),
        .Q(bram_wdata[150]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[151] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[151]),
        .Q(bram_wdata[151]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[152] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[152]),
        .Q(bram_wdata[152]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[153] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[153]),
        .Q(bram_wdata[153]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[154] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[154]),
        .Q(bram_wdata[154]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[155] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[155]),
        .Q(bram_wdata[155]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[156] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[156]),
        .Q(bram_wdata[156]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[157] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[157]),
        .Q(bram_wdata[157]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[158] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[158]),
        .Q(bram_wdata[158]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[159] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[159]),
        .Q(bram_wdata[159]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[15] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[15]),
        .Q(bram_wdata[15]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[160] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[160]),
        .Q(bram_wdata[160]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[161] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[161]),
        .Q(bram_wdata[161]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[162] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[162]),
        .Q(bram_wdata[162]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[163] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[163]),
        .Q(bram_wdata[163]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[164] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[164]),
        .Q(bram_wdata[164]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[165] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[165]),
        .Q(bram_wdata[165]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[166] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[166]),
        .Q(bram_wdata[166]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[167] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[167]),
        .Q(bram_wdata[167]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[168] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[168]),
        .Q(bram_wdata[168]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[169] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[169]),
        .Q(bram_wdata[169]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[16] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[16]),
        .Q(bram_wdata[16]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[170] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[170]),
        .Q(bram_wdata[170]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[171] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[171]),
        .Q(bram_wdata[171]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[172] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[172]),
        .Q(bram_wdata[172]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[173] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[173]),
        .Q(bram_wdata[173]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[174] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[174]),
        .Q(bram_wdata[174]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[175] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[175]),
        .Q(bram_wdata[175]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[176] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[176]),
        .Q(bram_wdata[176]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[177] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[177]),
        .Q(bram_wdata[177]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[178] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[178]),
        .Q(bram_wdata[178]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[179] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[179]),
        .Q(bram_wdata[179]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[17] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[17]),
        .Q(bram_wdata[17]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[180] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[180]),
        .Q(bram_wdata[180]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[181] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[181]),
        .Q(bram_wdata[181]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[182] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[182]),
        .Q(bram_wdata[182]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[183] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[183]),
        .Q(bram_wdata[183]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[184] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[184]),
        .Q(bram_wdata[184]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[185] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[185]),
        .Q(bram_wdata[185]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[186] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[186]),
        .Q(bram_wdata[186]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[187] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[187]),
        .Q(bram_wdata[187]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[188] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[188]),
        .Q(bram_wdata[188]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[189] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[189]),
        .Q(bram_wdata[189]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[18] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[18]),
        .Q(bram_wdata[18]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[190] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[190]),
        .Q(bram_wdata[190]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[191] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[191]),
        .Q(bram_wdata[191]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[192] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[192]),
        .Q(bram_wdata[192]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[193] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[193]),
        .Q(bram_wdata[193]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[194] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[194]),
        .Q(bram_wdata[194]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[195] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[195]),
        .Q(bram_wdata[195]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[196] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[196]),
        .Q(bram_wdata[196]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[197] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[197]),
        .Q(bram_wdata[197]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[198] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[198]),
        .Q(bram_wdata[198]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[199] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[199]),
        .Q(bram_wdata[199]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[19] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[19]),
        .Q(bram_wdata[19]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[1] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[1]),
        .Q(bram_wdata[1]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[200] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[200]),
        .Q(bram_wdata[200]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[201] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[201]),
        .Q(bram_wdata[201]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[202] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[202]),
        .Q(bram_wdata[202]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[203] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[203]),
        .Q(bram_wdata[203]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[204] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[204]),
        .Q(bram_wdata[204]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[205] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[205]),
        .Q(bram_wdata[205]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[206] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[206]),
        .Q(bram_wdata[206]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[207] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[207]),
        .Q(bram_wdata[207]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[208] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[208]),
        .Q(bram_wdata[208]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[209] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[209]),
        .Q(bram_wdata[209]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[20] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[20]),
        .Q(bram_wdata[20]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[210] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[210]),
        .Q(bram_wdata[210]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[211] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[211]),
        .Q(bram_wdata[211]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[212] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[212]),
        .Q(bram_wdata[212]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[213] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[213]),
        .Q(bram_wdata[213]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[214] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[214]),
        .Q(bram_wdata[214]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[215] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[215]),
        .Q(bram_wdata[215]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[216] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[216]),
        .Q(bram_wdata[216]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[217] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[217]),
        .Q(bram_wdata[217]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[218] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[218]),
        .Q(bram_wdata[218]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[219] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[219]),
        .Q(bram_wdata[219]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[21] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[21]),
        .Q(bram_wdata[21]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[220] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[220]),
        .Q(bram_wdata[220]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[221] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[221]),
        .Q(bram_wdata[221]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[222] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[222]),
        .Q(bram_wdata[222]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[223] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[223]),
        .Q(bram_wdata[223]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[224] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[224]),
        .Q(bram_wdata[224]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[225] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[225]),
        .Q(bram_wdata[225]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[226] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[226]),
        .Q(bram_wdata[226]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[227] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[227]),
        .Q(bram_wdata[227]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[228] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[228]),
        .Q(bram_wdata[228]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[229] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[229]),
        .Q(bram_wdata[229]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[22] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[22]),
        .Q(bram_wdata[22]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[230] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[230]),
        .Q(bram_wdata[230]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[231] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[231]),
        .Q(bram_wdata[231]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[232] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[232]),
        .Q(bram_wdata[232]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[233] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[233]),
        .Q(bram_wdata[233]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[234] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[234]),
        .Q(bram_wdata[234]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[235] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[235]),
        .Q(bram_wdata[235]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[236] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[236]),
        .Q(bram_wdata[236]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[237] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[237]),
        .Q(bram_wdata[237]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[238] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[238]),
        .Q(bram_wdata[238]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[239] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[239]),
        .Q(bram_wdata[239]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[23] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[23]),
        .Q(bram_wdata[23]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[240] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[240]),
        .Q(bram_wdata[240]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[241] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[241]),
        .Q(bram_wdata[241]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[242] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[242]),
        .Q(bram_wdata[242]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[243] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[243]),
        .Q(bram_wdata[243]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[244] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[244]),
        .Q(bram_wdata[244]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[245] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[245]),
        .Q(bram_wdata[245]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[246] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[246]),
        .Q(bram_wdata[246]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[247] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[247]),
        .Q(bram_wdata[247]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[248] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[248]),
        .Q(bram_wdata[248]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[249] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[249]),
        .Q(bram_wdata[249]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[24] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[24]),
        .Q(bram_wdata[24]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[250] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[250]),
        .Q(bram_wdata[250]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[251] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[251]),
        .Q(bram_wdata[251]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[252] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[252]),
        .Q(bram_wdata[252]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[253] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[253]),
        .Q(bram_wdata[253]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[254] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[254]),
        .Q(bram_wdata[254]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[255] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[255]),
        .Q(bram_wdata[255]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[25] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[25]),
        .Q(bram_wdata[25]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[26] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[26]),
        .Q(bram_wdata[26]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[27] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[27]),
        .Q(bram_wdata[27]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[28] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[28]),
        .Q(bram_wdata[28]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[29] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[29]),
        .Q(bram_wdata[29]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[2] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[2]),
        .Q(bram_wdata[2]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[30] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[30]),
        .Q(bram_wdata[30]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[31] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[31]),
        .Q(bram_wdata[31]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[32] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[32]),
        .Q(bram_wdata[32]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[33] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[33]),
        .Q(bram_wdata[33]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[34] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[34]),
        .Q(bram_wdata[34]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[35] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[35]),
        .Q(bram_wdata[35]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[36] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[36]),
        .Q(bram_wdata[36]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[37] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[37]),
        .Q(bram_wdata[37]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[38] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[38]),
        .Q(bram_wdata[38]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[39] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[39]),
        .Q(bram_wdata[39]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[3] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[3]),
        .Q(bram_wdata[3]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[40] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[40]),
        .Q(bram_wdata[40]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[41] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[41]),
        .Q(bram_wdata[41]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[42] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[42]),
        .Q(bram_wdata[42]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[43] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[43]),
        .Q(bram_wdata[43]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[44] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[44]),
        .Q(bram_wdata[44]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[45] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[45]),
        .Q(bram_wdata[45]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[46] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[46]),
        .Q(bram_wdata[46]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[47] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[47]),
        .Q(bram_wdata[47]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[48] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[48]),
        .Q(bram_wdata[48]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[49] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[49]),
        .Q(bram_wdata[49]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[4] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[4]),
        .Q(bram_wdata[4]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[50] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[50]),
        .Q(bram_wdata[50]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[51] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[51]),
        .Q(bram_wdata[51]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[52] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[52]),
        .Q(bram_wdata[52]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[53] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[53]),
        .Q(bram_wdata[53]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[54] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[54]),
        .Q(bram_wdata[54]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[55] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[55]),
        .Q(bram_wdata[55]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[56] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[56]),
        .Q(bram_wdata[56]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[57] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[57]),
        .Q(bram_wdata[57]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[58] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[58]),
        .Q(bram_wdata[58]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[59] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[59]),
        .Q(bram_wdata[59]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[5] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[5]),
        .Q(bram_wdata[5]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[60] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[60]),
        .Q(bram_wdata[60]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[61] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[61]),
        .Q(bram_wdata[61]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[62] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[62]),
        .Q(bram_wdata[62]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[63] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[63]),
        .Q(bram_wdata[63]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[64] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[64]),
        .Q(bram_wdata[64]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[65] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[65]),
        .Q(bram_wdata[65]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[66] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[66]),
        .Q(bram_wdata[66]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[67] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[67]),
        .Q(bram_wdata[67]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[68] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[68]),
        .Q(bram_wdata[68]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[69] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[69]),
        .Q(bram_wdata[69]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[6] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[6]),
        .Q(bram_wdata[6]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[70] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[70]),
        .Q(bram_wdata[70]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[71] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[71]),
        .Q(bram_wdata[71]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[72] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[72]),
        .Q(bram_wdata[72]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[73] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[73]),
        .Q(bram_wdata[73]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[74] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[74]),
        .Q(bram_wdata[74]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[75] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[75]),
        .Q(bram_wdata[75]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[76] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[76]),
        .Q(bram_wdata[76]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[77] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[77]),
        .Q(bram_wdata[77]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[78] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[78]),
        .Q(bram_wdata[78]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[79] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[79]),
        .Q(bram_wdata[79]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[7] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[7]),
        .Q(bram_wdata[7]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[80] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[80]),
        .Q(bram_wdata[80]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[81] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[81]),
        .Q(bram_wdata[81]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[82] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[82]),
        .Q(bram_wdata[82]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[83] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[83]),
        .Q(bram_wdata[83]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[84] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[84]),
        .Q(bram_wdata[84]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[85] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[85]),
        .Q(bram_wdata[85]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[86] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[86]),
        .Q(bram_wdata[86]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[87] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[87]),
        .Q(bram_wdata[87]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[88] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[88]),
        .Q(bram_wdata[88]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[89] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[89]),
        .Q(bram_wdata[89]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[8] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[8]),
        .Q(bram_wdata[8]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[90] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[90]),
        .Q(bram_wdata[90]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[91] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[91]),
        .Q(bram_wdata[91]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[92] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[92]),
        .Q(bram_wdata[92]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[93] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[93]),
        .Q(bram_wdata[93]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[94] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[94]),
        .Q(bram_wdata[94]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[95] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[95]),
        .Q(bram_wdata[95]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[96] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[96]),
        .Q(bram_wdata[96]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[97] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[97]),
        .Q(bram_wdata[97]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[98] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[98]),
        .Q(bram_wdata[98]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[99] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[99]),
        .Q(bram_wdata[99]),
        .R(1'b0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) 
  (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE \bram_wdata_reg[9] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(CAP_AXIS_tdata[9]),
        .Q(bram_wdata[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFE00)) 
    \bram_we[31]_i_1 
       (.I0(\bram_we[31]_i_2_n_0 ),
        .I1(\bram_we[31]_i_3_n_0 ),
        .I2(\bram_we[31]_i_4_n_0 ),
        .I3(bram_en_reg_0),
        .I4(\bram_we[31]_i_5_n_0 ),
        .I5(bram_we),
        .O(\bram_we[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bram_we[31]_i_2 
       (.I0(bram_addr[5]),
        .I1(bram_addr[4]),
        .I2(bram_addr[7]),
        .I3(bram_addr[6]),
        .O(\bram_we[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bram_we[31]_i_3 
       (.I0(bram_addr[9]),
        .I1(bram_addr[8]),
        .I2(bram_addr[11]),
        .I3(bram_addr[10]),
        .O(\bram_we[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \bram_we[31]_i_4 
       (.I0(bram_addr[1]),
        .I1(bram_addr[0]),
        .I2(bram_addr[3]),
        .I3(bram_addr[2]),
        .O(\bram_we[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \bram_we[31]_i_5 
       (.I0(trig_cap_p[1]),
        .I1(trig_cap_p[2]),
        .O(\bram_we[31]_i_5_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *) 
  FDRE \bram_we_reg[31] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\bram_we[31]_i_1_n_0 ),
        .Q(bram_we),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \trig_cap_p_reg[0] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(trig_cap),
        .Q(trig_cap_p[0]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \trig_cap_p_reg[1] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(trig_cap_p[0]),
        .Q(trig_cap_p[1]),
        .R(SR));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE \trig_cap_p_reg[2] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(trig_cap_p[1]),
        .Q(trig_cap_p[2]),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_ctrl_snapshot_128k_0_3,ctrl_snapshot_128k,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "ctrl_snapshot_128k,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (bram_wdata,
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
    trig_cap_p_2to1_mon);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) output [255:0]bram_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *) output [31:0]bram_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *) output bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *) input [255:0]bram_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) output [31:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *) output bram_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1" *) output bram_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_clk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF CAP_AXIS:PASSTHROUGH_AXIS, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *) input axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 CAP_AXIS TDATA" *) input [255:0]CAP_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 CAP_AXIS TREADY" *) output CAP_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 CAP_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CAP_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input CAP_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TDATA" *) output [255:0]PASSTHROUGH_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TREADY" *) input PASSTHROUGH_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PASSTHROUGH_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output PASSTHROUGH_AXIS_tvalid;
  input trig_cap;
  output [1:0]trig_cap_p_2to1_mon;

  wire \<const0> ;
  wire \<const1> ;
  wire [255:0]CAP_AXIS_tdata;
  wire CAP_AXIS_tvalid;
  wire [255:0]PASSTHROUGH_AXIS_tdata;
  wire PASSTHROUGH_AXIS_tvalid;
  wire axis_aresetn;
  wire axis_clk;
  wire [16:5]\^bram_addr ;
  wire bram_en;
  wire bram_rst;
  wire [255:0]bram_wdata;
  wire [30:30]\^bram_we ;
  wire trig_cap;
  wire [1:0]trig_cap_p_2to1_mon;

  assign CAP_AXIS_tready = \<const1> ;
  assign bram_addr[31] = \<const0> ;
  assign bram_addr[30] = \<const0> ;
  assign bram_addr[29] = \<const0> ;
  assign bram_addr[28] = \<const0> ;
  assign bram_addr[27] = \<const0> ;
  assign bram_addr[26] = \<const0> ;
  assign bram_addr[25] = \<const0> ;
  assign bram_addr[24] = \<const0> ;
  assign bram_addr[23] = \<const0> ;
  assign bram_addr[22] = \<const0> ;
  assign bram_addr[21] = \<const0> ;
  assign bram_addr[20] = \<const0> ;
  assign bram_addr[19] = \<const0> ;
  assign bram_addr[18] = \<const0> ;
  assign bram_addr[17] = \<const0> ;
  assign bram_addr[16:5] = \^bram_addr [16:5];
  assign bram_addr[4] = \<const0> ;
  assign bram_addr[3] = \<const0> ;
  assign bram_addr[2] = \<const0> ;
  assign bram_addr[1] = \<const0> ;
  assign bram_addr[0] = \<const0> ;
  assign bram_clk = axis_clk;
  assign bram_we[31] = \^bram_we [30];
  assign bram_we[30] = \^bram_we [30];
  assign bram_we[29] = \^bram_we [30];
  assign bram_we[28] = \^bram_we [30];
  assign bram_we[27] = \^bram_we [30];
  assign bram_we[26] = \^bram_we [30];
  assign bram_we[25] = \^bram_we [30];
  assign bram_we[24] = \^bram_we [30];
  assign bram_we[23] = \^bram_we [30];
  assign bram_we[22] = \^bram_we [30];
  assign bram_we[21] = \^bram_we [30];
  assign bram_we[20] = \^bram_we [30];
  assign bram_we[19] = \^bram_we [30];
  assign bram_we[18] = \^bram_we [30];
  assign bram_we[17] = \^bram_we [30];
  assign bram_we[16] = \^bram_we [30];
  assign bram_we[15] = \^bram_we [30];
  assign bram_we[14] = \^bram_we [30];
  assign bram_we[13] = \^bram_we [30];
  assign bram_we[12] = \^bram_we [30];
  assign bram_we[11] = \^bram_we [30];
  assign bram_we[10] = \^bram_we [30];
  assign bram_we[9] = \^bram_we [30];
  assign bram_we[8] = \^bram_we [30];
  assign bram_we[7] = \^bram_we [30];
  assign bram_we[6] = \^bram_we [30];
  assign bram_we[5] = \^bram_we [30];
  assign bram_we[4] = \^bram_we [30];
  assign bram_we[3] = \^bram_we [30];
  assign bram_we[2] = \^bram_we [30];
  assign bram_we[1] = \^bram_we [30];
  assign bram_we[0] = \^bram_we [30];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ctrl_snapshot_128k inst
       (.CAP_AXIS_tdata(CAP_AXIS_tdata),
        .CAP_AXIS_tvalid(CAP_AXIS_tvalid),
        .PASSTHROUGH_AXIS_tdata(PASSTHROUGH_AXIS_tdata),
        .PASSTHROUGH_AXIS_tvalid(PASSTHROUGH_AXIS_tvalid),
        .SR(bram_rst),
        .axis_aresetn(axis_aresetn),
        .axis_clk(axis_clk),
        .bram_addr(\^bram_addr ),
        .bram_en_reg_0(bram_en),
        .bram_wdata(bram_wdata),
        .bram_we(\^bram_we ),
        .trig_cap(trig_cap),
        .trig_cap_p_2to1_mon(trig_cap_p_2to1_mon));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
