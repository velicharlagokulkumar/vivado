// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Sep 21 13:03:05 2025
// Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_uram_play128k_0_0/design_1_uram_play128k_0_0_sim_netlist.v
// Design      : design_1_uram_play128k_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_uram_play128k_0_0,uram_play128k,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "uram_play128k,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module design_1_uram_play128k_0_0
   (portA_cpu_wdata,
    portA_we,
    portA_en,
    portA_cpu_rdata,
    portAcpu_addr,
    portA_clk,
    portA_rst,
    axis_clk,
    axis_aresetn,
    axis_tdata,
    axis_tready,
    axis_tvalid,
    enable);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DIN" *) output [255:0]portA_cpu_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A WE" *) output [31:0]portA_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *) output portA_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A DOUT" *) input [255:0]portA_cpu_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) output [31:0]portAcpu_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A CLK" *) output portA_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1" *) output portA_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_clk, ASSOCIATED_BUSIF AXIS, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *) input axis_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TDATA" *) output [255:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TREADY" *) input axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output axis_tvalid;
  input enable;

  wire \<const0> ;
  wire axis_aresetn;
  wire axis_clk;
  wire [255:0]axis_tdata;
  wire axis_tvalid;
  wire enable;
  wire [255:0]portA_cpu_rdata;
  wire portA_en;
  wire portA_rst;
  wire [31:5]\^portAcpu_addr ;

  assign portA_clk = axis_clk;
  assign portA_cpu_wdata[255] = \<const0> ;
  assign portA_cpu_wdata[254] = \<const0> ;
  assign portA_cpu_wdata[253] = \<const0> ;
  assign portA_cpu_wdata[252] = \<const0> ;
  assign portA_cpu_wdata[251] = \<const0> ;
  assign portA_cpu_wdata[250] = \<const0> ;
  assign portA_cpu_wdata[249] = \<const0> ;
  assign portA_cpu_wdata[248] = \<const0> ;
  assign portA_cpu_wdata[247] = \<const0> ;
  assign portA_cpu_wdata[246] = \<const0> ;
  assign portA_cpu_wdata[245] = \<const0> ;
  assign portA_cpu_wdata[244] = \<const0> ;
  assign portA_cpu_wdata[243] = \<const0> ;
  assign portA_cpu_wdata[242] = \<const0> ;
  assign portA_cpu_wdata[241] = \<const0> ;
  assign portA_cpu_wdata[240] = \<const0> ;
  assign portA_cpu_wdata[239] = \<const0> ;
  assign portA_cpu_wdata[238] = \<const0> ;
  assign portA_cpu_wdata[237] = \<const0> ;
  assign portA_cpu_wdata[236] = \<const0> ;
  assign portA_cpu_wdata[235] = \<const0> ;
  assign portA_cpu_wdata[234] = \<const0> ;
  assign portA_cpu_wdata[233] = \<const0> ;
  assign portA_cpu_wdata[232] = \<const0> ;
  assign portA_cpu_wdata[231] = \<const0> ;
  assign portA_cpu_wdata[230] = \<const0> ;
  assign portA_cpu_wdata[229] = \<const0> ;
  assign portA_cpu_wdata[228] = \<const0> ;
  assign portA_cpu_wdata[227] = \<const0> ;
  assign portA_cpu_wdata[226] = \<const0> ;
  assign portA_cpu_wdata[225] = \<const0> ;
  assign portA_cpu_wdata[224] = \<const0> ;
  assign portA_cpu_wdata[223] = \<const0> ;
  assign portA_cpu_wdata[222] = \<const0> ;
  assign portA_cpu_wdata[221] = \<const0> ;
  assign portA_cpu_wdata[220] = \<const0> ;
  assign portA_cpu_wdata[219] = \<const0> ;
  assign portA_cpu_wdata[218] = \<const0> ;
  assign portA_cpu_wdata[217] = \<const0> ;
  assign portA_cpu_wdata[216] = \<const0> ;
  assign portA_cpu_wdata[215] = \<const0> ;
  assign portA_cpu_wdata[214] = \<const0> ;
  assign portA_cpu_wdata[213] = \<const0> ;
  assign portA_cpu_wdata[212] = \<const0> ;
  assign portA_cpu_wdata[211] = \<const0> ;
  assign portA_cpu_wdata[210] = \<const0> ;
  assign portA_cpu_wdata[209] = \<const0> ;
  assign portA_cpu_wdata[208] = \<const0> ;
  assign portA_cpu_wdata[207] = \<const0> ;
  assign portA_cpu_wdata[206] = \<const0> ;
  assign portA_cpu_wdata[205] = \<const0> ;
  assign portA_cpu_wdata[204] = \<const0> ;
  assign portA_cpu_wdata[203] = \<const0> ;
  assign portA_cpu_wdata[202] = \<const0> ;
  assign portA_cpu_wdata[201] = \<const0> ;
  assign portA_cpu_wdata[200] = \<const0> ;
  assign portA_cpu_wdata[199] = \<const0> ;
  assign portA_cpu_wdata[198] = \<const0> ;
  assign portA_cpu_wdata[197] = \<const0> ;
  assign portA_cpu_wdata[196] = \<const0> ;
  assign portA_cpu_wdata[195] = \<const0> ;
  assign portA_cpu_wdata[194] = \<const0> ;
  assign portA_cpu_wdata[193] = \<const0> ;
  assign portA_cpu_wdata[192] = \<const0> ;
  assign portA_cpu_wdata[191] = \<const0> ;
  assign portA_cpu_wdata[190] = \<const0> ;
  assign portA_cpu_wdata[189] = \<const0> ;
  assign portA_cpu_wdata[188] = \<const0> ;
  assign portA_cpu_wdata[187] = \<const0> ;
  assign portA_cpu_wdata[186] = \<const0> ;
  assign portA_cpu_wdata[185] = \<const0> ;
  assign portA_cpu_wdata[184] = \<const0> ;
  assign portA_cpu_wdata[183] = \<const0> ;
  assign portA_cpu_wdata[182] = \<const0> ;
  assign portA_cpu_wdata[181] = \<const0> ;
  assign portA_cpu_wdata[180] = \<const0> ;
  assign portA_cpu_wdata[179] = \<const0> ;
  assign portA_cpu_wdata[178] = \<const0> ;
  assign portA_cpu_wdata[177] = \<const0> ;
  assign portA_cpu_wdata[176] = \<const0> ;
  assign portA_cpu_wdata[175] = \<const0> ;
  assign portA_cpu_wdata[174] = \<const0> ;
  assign portA_cpu_wdata[173] = \<const0> ;
  assign portA_cpu_wdata[172] = \<const0> ;
  assign portA_cpu_wdata[171] = \<const0> ;
  assign portA_cpu_wdata[170] = \<const0> ;
  assign portA_cpu_wdata[169] = \<const0> ;
  assign portA_cpu_wdata[168] = \<const0> ;
  assign portA_cpu_wdata[167] = \<const0> ;
  assign portA_cpu_wdata[166] = \<const0> ;
  assign portA_cpu_wdata[165] = \<const0> ;
  assign portA_cpu_wdata[164] = \<const0> ;
  assign portA_cpu_wdata[163] = \<const0> ;
  assign portA_cpu_wdata[162] = \<const0> ;
  assign portA_cpu_wdata[161] = \<const0> ;
  assign portA_cpu_wdata[160] = \<const0> ;
  assign portA_cpu_wdata[159] = \<const0> ;
  assign portA_cpu_wdata[158] = \<const0> ;
  assign portA_cpu_wdata[157] = \<const0> ;
  assign portA_cpu_wdata[156] = \<const0> ;
  assign portA_cpu_wdata[155] = \<const0> ;
  assign portA_cpu_wdata[154] = \<const0> ;
  assign portA_cpu_wdata[153] = \<const0> ;
  assign portA_cpu_wdata[152] = \<const0> ;
  assign portA_cpu_wdata[151] = \<const0> ;
  assign portA_cpu_wdata[150] = \<const0> ;
  assign portA_cpu_wdata[149] = \<const0> ;
  assign portA_cpu_wdata[148] = \<const0> ;
  assign portA_cpu_wdata[147] = \<const0> ;
  assign portA_cpu_wdata[146] = \<const0> ;
  assign portA_cpu_wdata[145] = \<const0> ;
  assign portA_cpu_wdata[144] = \<const0> ;
  assign portA_cpu_wdata[143] = \<const0> ;
  assign portA_cpu_wdata[142] = \<const0> ;
  assign portA_cpu_wdata[141] = \<const0> ;
  assign portA_cpu_wdata[140] = \<const0> ;
  assign portA_cpu_wdata[139] = \<const0> ;
  assign portA_cpu_wdata[138] = \<const0> ;
  assign portA_cpu_wdata[137] = \<const0> ;
  assign portA_cpu_wdata[136] = \<const0> ;
  assign portA_cpu_wdata[135] = \<const0> ;
  assign portA_cpu_wdata[134] = \<const0> ;
  assign portA_cpu_wdata[133] = \<const0> ;
  assign portA_cpu_wdata[132] = \<const0> ;
  assign portA_cpu_wdata[131] = \<const0> ;
  assign portA_cpu_wdata[130] = \<const0> ;
  assign portA_cpu_wdata[129] = \<const0> ;
  assign portA_cpu_wdata[128] = \<const0> ;
  assign portA_cpu_wdata[127] = \<const0> ;
  assign portA_cpu_wdata[126] = \<const0> ;
  assign portA_cpu_wdata[125] = \<const0> ;
  assign portA_cpu_wdata[124] = \<const0> ;
  assign portA_cpu_wdata[123] = \<const0> ;
  assign portA_cpu_wdata[122] = \<const0> ;
  assign portA_cpu_wdata[121] = \<const0> ;
  assign portA_cpu_wdata[120] = \<const0> ;
  assign portA_cpu_wdata[119] = \<const0> ;
  assign portA_cpu_wdata[118] = \<const0> ;
  assign portA_cpu_wdata[117] = \<const0> ;
  assign portA_cpu_wdata[116] = \<const0> ;
  assign portA_cpu_wdata[115] = \<const0> ;
  assign portA_cpu_wdata[114] = \<const0> ;
  assign portA_cpu_wdata[113] = \<const0> ;
  assign portA_cpu_wdata[112] = \<const0> ;
  assign portA_cpu_wdata[111] = \<const0> ;
  assign portA_cpu_wdata[110] = \<const0> ;
  assign portA_cpu_wdata[109] = \<const0> ;
  assign portA_cpu_wdata[108] = \<const0> ;
  assign portA_cpu_wdata[107] = \<const0> ;
  assign portA_cpu_wdata[106] = \<const0> ;
  assign portA_cpu_wdata[105] = \<const0> ;
  assign portA_cpu_wdata[104] = \<const0> ;
  assign portA_cpu_wdata[103] = \<const0> ;
  assign portA_cpu_wdata[102] = \<const0> ;
  assign portA_cpu_wdata[101] = \<const0> ;
  assign portA_cpu_wdata[100] = \<const0> ;
  assign portA_cpu_wdata[99] = \<const0> ;
  assign portA_cpu_wdata[98] = \<const0> ;
  assign portA_cpu_wdata[97] = \<const0> ;
  assign portA_cpu_wdata[96] = \<const0> ;
  assign portA_cpu_wdata[95] = \<const0> ;
  assign portA_cpu_wdata[94] = \<const0> ;
  assign portA_cpu_wdata[93] = \<const0> ;
  assign portA_cpu_wdata[92] = \<const0> ;
  assign portA_cpu_wdata[91] = \<const0> ;
  assign portA_cpu_wdata[90] = \<const0> ;
  assign portA_cpu_wdata[89] = \<const0> ;
  assign portA_cpu_wdata[88] = \<const0> ;
  assign portA_cpu_wdata[87] = \<const0> ;
  assign portA_cpu_wdata[86] = \<const0> ;
  assign portA_cpu_wdata[85] = \<const0> ;
  assign portA_cpu_wdata[84] = \<const0> ;
  assign portA_cpu_wdata[83] = \<const0> ;
  assign portA_cpu_wdata[82] = \<const0> ;
  assign portA_cpu_wdata[81] = \<const0> ;
  assign portA_cpu_wdata[80] = \<const0> ;
  assign portA_cpu_wdata[79] = \<const0> ;
  assign portA_cpu_wdata[78] = \<const0> ;
  assign portA_cpu_wdata[77] = \<const0> ;
  assign portA_cpu_wdata[76] = \<const0> ;
  assign portA_cpu_wdata[75] = \<const0> ;
  assign portA_cpu_wdata[74] = \<const0> ;
  assign portA_cpu_wdata[73] = \<const0> ;
  assign portA_cpu_wdata[72] = \<const0> ;
  assign portA_cpu_wdata[71] = \<const0> ;
  assign portA_cpu_wdata[70] = \<const0> ;
  assign portA_cpu_wdata[69] = \<const0> ;
  assign portA_cpu_wdata[68] = \<const0> ;
  assign portA_cpu_wdata[67] = \<const0> ;
  assign portA_cpu_wdata[66] = \<const0> ;
  assign portA_cpu_wdata[65] = \<const0> ;
  assign portA_cpu_wdata[64] = \<const0> ;
  assign portA_cpu_wdata[63] = \<const0> ;
  assign portA_cpu_wdata[62] = \<const0> ;
  assign portA_cpu_wdata[61] = \<const0> ;
  assign portA_cpu_wdata[60] = \<const0> ;
  assign portA_cpu_wdata[59] = \<const0> ;
  assign portA_cpu_wdata[58] = \<const0> ;
  assign portA_cpu_wdata[57] = \<const0> ;
  assign portA_cpu_wdata[56] = \<const0> ;
  assign portA_cpu_wdata[55] = \<const0> ;
  assign portA_cpu_wdata[54] = \<const0> ;
  assign portA_cpu_wdata[53] = \<const0> ;
  assign portA_cpu_wdata[52] = \<const0> ;
  assign portA_cpu_wdata[51] = \<const0> ;
  assign portA_cpu_wdata[50] = \<const0> ;
  assign portA_cpu_wdata[49] = \<const0> ;
  assign portA_cpu_wdata[48] = \<const0> ;
  assign portA_cpu_wdata[47] = \<const0> ;
  assign portA_cpu_wdata[46] = \<const0> ;
  assign portA_cpu_wdata[45] = \<const0> ;
  assign portA_cpu_wdata[44] = \<const0> ;
  assign portA_cpu_wdata[43] = \<const0> ;
  assign portA_cpu_wdata[42] = \<const0> ;
  assign portA_cpu_wdata[41] = \<const0> ;
  assign portA_cpu_wdata[40] = \<const0> ;
  assign portA_cpu_wdata[39] = \<const0> ;
  assign portA_cpu_wdata[38] = \<const0> ;
  assign portA_cpu_wdata[37] = \<const0> ;
  assign portA_cpu_wdata[36] = \<const0> ;
  assign portA_cpu_wdata[35] = \<const0> ;
  assign portA_cpu_wdata[34] = \<const0> ;
  assign portA_cpu_wdata[33] = \<const0> ;
  assign portA_cpu_wdata[32] = \<const0> ;
  assign portA_cpu_wdata[31] = \<const0> ;
  assign portA_cpu_wdata[30] = \<const0> ;
  assign portA_cpu_wdata[29] = \<const0> ;
  assign portA_cpu_wdata[28] = \<const0> ;
  assign portA_cpu_wdata[27] = \<const0> ;
  assign portA_cpu_wdata[26] = \<const0> ;
  assign portA_cpu_wdata[25] = \<const0> ;
  assign portA_cpu_wdata[24] = \<const0> ;
  assign portA_cpu_wdata[23] = \<const0> ;
  assign portA_cpu_wdata[22] = \<const0> ;
  assign portA_cpu_wdata[21] = \<const0> ;
  assign portA_cpu_wdata[20] = \<const0> ;
  assign portA_cpu_wdata[19] = \<const0> ;
  assign portA_cpu_wdata[18] = \<const0> ;
  assign portA_cpu_wdata[17] = \<const0> ;
  assign portA_cpu_wdata[16] = \<const0> ;
  assign portA_cpu_wdata[15] = \<const0> ;
  assign portA_cpu_wdata[14] = \<const0> ;
  assign portA_cpu_wdata[13] = \<const0> ;
  assign portA_cpu_wdata[12] = \<const0> ;
  assign portA_cpu_wdata[11] = \<const0> ;
  assign portA_cpu_wdata[10] = \<const0> ;
  assign portA_cpu_wdata[9] = \<const0> ;
  assign portA_cpu_wdata[8] = \<const0> ;
  assign portA_cpu_wdata[7] = \<const0> ;
  assign portA_cpu_wdata[6] = \<const0> ;
  assign portA_cpu_wdata[5] = \<const0> ;
  assign portA_cpu_wdata[4] = \<const0> ;
  assign portA_cpu_wdata[3] = \<const0> ;
  assign portA_cpu_wdata[2] = \<const0> ;
  assign portA_cpu_wdata[1] = \<const0> ;
  assign portA_cpu_wdata[0] = \<const0> ;
  assign portA_we[31] = \<const0> ;
  assign portA_we[30] = \<const0> ;
  assign portA_we[29] = \<const0> ;
  assign portA_we[28] = \<const0> ;
  assign portA_we[27] = \<const0> ;
  assign portA_we[26] = \<const0> ;
  assign portA_we[25] = \<const0> ;
  assign portA_we[24] = \<const0> ;
  assign portA_we[23] = \<const0> ;
  assign portA_we[22] = \<const0> ;
  assign portA_we[21] = \<const0> ;
  assign portA_we[20] = \<const0> ;
  assign portA_we[19] = \<const0> ;
  assign portA_we[18] = \<const0> ;
  assign portA_we[17] = \<const0> ;
  assign portA_we[16] = \<const0> ;
  assign portA_we[15] = \<const0> ;
  assign portA_we[14] = \<const0> ;
  assign portA_we[13] = \<const0> ;
  assign portA_we[12] = \<const0> ;
  assign portA_we[11] = \<const0> ;
  assign portA_we[10] = \<const0> ;
  assign portA_we[9] = \<const0> ;
  assign portA_we[8] = \<const0> ;
  assign portA_we[7] = \<const0> ;
  assign portA_we[6] = \<const0> ;
  assign portA_we[5] = \<const0> ;
  assign portA_we[4] = \<const0> ;
  assign portA_we[3] = \<const0> ;
  assign portA_we[2] = \<const0> ;
  assign portA_we[1] = \<const0> ;
  assign portA_we[0] = \<const0> ;
  assign portAcpu_addr[31:5] = \^portAcpu_addr [31:5];
  assign portAcpu_addr[4] = \<const0> ;
  assign portAcpu_addr[3] = \<const0> ;
  assign portAcpu_addr[2] = \<const0> ;
  assign portAcpu_addr[1] = \<const0> ;
  assign portAcpu_addr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_uram_play128k_0_0_uram_play128k inst
       (.axis_aresetn(axis_aresetn),
        .axis_clk(axis_clk),
        .axis_tdata(axis_tdata),
        .axis_tvalid(axis_tvalid),
        .enable(enable),
        .portA_cpu_rdata(portA_cpu_rdata),
        .portA_en(portA_en),
        .portAcpu_addr(\^portAcpu_addr ));
  LUT1 #(
    .INIT(2'h1)) 
    portA_rst_INST_0
       (.I0(axis_aresetn),
        .O(portA_rst));
endmodule

(* ORIG_REF_NAME = "uram_play128k" *) 
module design_1_uram_play128k_0_0_uram_play128k
   (portA_en,
    axis_tvalid,
    portAcpu_addr,
    axis_tdata,
    axis_clk,
    axis_aresetn,
    enable,
    portA_cpu_rdata);
  output portA_en;
  output axis_tvalid;
  output [26:0]portAcpu_addr;
  output [255:0]axis_tdata;
  input axis_clk;
  input axis_aresetn;
  input enable;
  input [255:0]portA_cpu_rdata;

  wire axis_aresetn;
  wire axis_clk;
  wire [255:0]axis_tdata;
  wire axis_tvalid;
  wire enable;
  wire [255:0]portA_cpu_rdata;
  wire portA_en;
  wire [26:0]portAcpu_addr;
  wire \portAcpu_addr[12]_i_2_n_0 ;
  wire \portAcpu_addr[31]_i_1_n_0 ;
  wire \portAcpu_addr_reg[12]_i_1_n_0 ;
  wire \portAcpu_addr_reg[12]_i_1_n_1 ;
  wire \portAcpu_addr_reg[12]_i_1_n_10 ;
  wire \portAcpu_addr_reg[12]_i_1_n_11 ;
  wire \portAcpu_addr_reg[12]_i_1_n_12 ;
  wire \portAcpu_addr_reg[12]_i_1_n_13 ;
  wire \portAcpu_addr_reg[12]_i_1_n_14 ;
  wire \portAcpu_addr_reg[12]_i_1_n_15 ;
  wire \portAcpu_addr_reg[12]_i_1_n_2 ;
  wire \portAcpu_addr_reg[12]_i_1_n_3 ;
  wire \portAcpu_addr_reg[12]_i_1_n_4 ;
  wire \portAcpu_addr_reg[12]_i_1_n_5 ;
  wire \portAcpu_addr_reg[12]_i_1_n_6 ;
  wire \portAcpu_addr_reg[12]_i_1_n_7 ;
  wire \portAcpu_addr_reg[12]_i_1_n_8 ;
  wire \portAcpu_addr_reg[12]_i_1_n_9 ;
  wire \portAcpu_addr_reg[20]_i_1_n_0 ;
  wire \portAcpu_addr_reg[20]_i_1_n_1 ;
  wire \portAcpu_addr_reg[20]_i_1_n_10 ;
  wire \portAcpu_addr_reg[20]_i_1_n_11 ;
  wire \portAcpu_addr_reg[20]_i_1_n_12 ;
  wire \portAcpu_addr_reg[20]_i_1_n_13 ;
  wire \portAcpu_addr_reg[20]_i_1_n_14 ;
  wire \portAcpu_addr_reg[20]_i_1_n_15 ;
  wire \portAcpu_addr_reg[20]_i_1_n_2 ;
  wire \portAcpu_addr_reg[20]_i_1_n_3 ;
  wire \portAcpu_addr_reg[20]_i_1_n_4 ;
  wire \portAcpu_addr_reg[20]_i_1_n_5 ;
  wire \portAcpu_addr_reg[20]_i_1_n_6 ;
  wire \portAcpu_addr_reg[20]_i_1_n_7 ;
  wire \portAcpu_addr_reg[20]_i_1_n_8 ;
  wire \portAcpu_addr_reg[20]_i_1_n_9 ;
  wire \portAcpu_addr_reg[28]_i_1_n_0 ;
  wire \portAcpu_addr_reg[28]_i_1_n_1 ;
  wire \portAcpu_addr_reg[28]_i_1_n_10 ;
  wire \portAcpu_addr_reg[28]_i_1_n_11 ;
  wire \portAcpu_addr_reg[28]_i_1_n_12 ;
  wire \portAcpu_addr_reg[28]_i_1_n_13 ;
  wire \portAcpu_addr_reg[28]_i_1_n_14 ;
  wire \portAcpu_addr_reg[28]_i_1_n_15 ;
  wire \portAcpu_addr_reg[28]_i_1_n_2 ;
  wire \portAcpu_addr_reg[28]_i_1_n_3 ;
  wire \portAcpu_addr_reg[28]_i_1_n_4 ;
  wire \portAcpu_addr_reg[28]_i_1_n_5 ;
  wire \portAcpu_addr_reg[28]_i_1_n_6 ;
  wire \portAcpu_addr_reg[28]_i_1_n_7 ;
  wire \portAcpu_addr_reg[28]_i_1_n_8 ;
  wire \portAcpu_addr_reg[28]_i_1_n_9 ;
  wire \portAcpu_addr_reg[31]_i_2_n_13 ;
  wire \portAcpu_addr_reg[31]_i_2_n_14 ;
  wire \portAcpu_addr_reg[31]_i_2_n_15 ;
  wire \portAcpu_addr_reg[31]_i_2_n_6 ;
  wire \portAcpu_addr_reg[31]_i_2_n_7 ;
  wire reg_axis_tvalid;
  wire [7:2]\NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_portAcpu_addr_reg[31]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h8)) 
    portA_en_i_1
       (.I0(axis_aresetn),
        .I1(enable),
        .O(reg_axis_tvalid));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A EN" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE portA_en_reg
       (.C(axis_clk),
        .CE(1'b1),
        .D(reg_axis_tvalid),
        .Q(portA_en),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \portAcpu_addr[12]_i_2 
       (.I0(portAcpu_addr[0]),
        .O(\portAcpu_addr[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \portAcpu_addr[31]_i_1 
       (.I0(enable),
        .I1(axis_aresetn),
        .O(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[10] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_10 ),
        .Q(portAcpu_addr[5]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[11] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_9 ),
        .Q(portAcpu_addr[6]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[12] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_8 ),
        .Q(portAcpu_addr[7]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  CARRY8 \portAcpu_addr_reg[12]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\portAcpu_addr_reg[12]_i_1_n_0 ,\portAcpu_addr_reg[12]_i_1_n_1 ,\portAcpu_addr_reg[12]_i_1_n_2 ,\portAcpu_addr_reg[12]_i_1_n_3 ,\portAcpu_addr_reg[12]_i_1_n_4 ,\portAcpu_addr_reg[12]_i_1_n_5 ,\portAcpu_addr_reg[12]_i_1_n_6 ,\portAcpu_addr_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\portAcpu_addr_reg[12]_i_1_n_8 ,\portAcpu_addr_reg[12]_i_1_n_9 ,\portAcpu_addr_reg[12]_i_1_n_10 ,\portAcpu_addr_reg[12]_i_1_n_11 ,\portAcpu_addr_reg[12]_i_1_n_12 ,\portAcpu_addr_reg[12]_i_1_n_13 ,\portAcpu_addr_reg[12]_i_1_n_14 ,\portAcpu_addr_reg[12]_i_1_n_15 }),
        .S({portAcpu_addr[7:1],\portAcpu_addr[12]_i_2_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[13] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_15 ),
        .Q(portAcpu_addr[8]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[14] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_14 ),
        .Q(portAcpu_addr[9]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[15] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_13 ),
        .Q(portAcpu_addr[10]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[16] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_12 ),
        .Q(portAcpu_addr[11]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[17] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_11 ),
        .Q(portAcpu_addr[12]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[18] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_10 ),
        .Q(portAcpu_addr[13]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[19] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_9 ),
        .Q(portAcpu_addr[14]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[20] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[20]_i_1_n_8 ),
        .Q(portAcpu_addr[15]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  CARRY8 \portAcpu_addr_reg[20]_i_1 
       (.CI(\portAcpu_addr_reg[12]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\portAcpu_addr_reg[20]_i_1_n_0 ,\portAcpu_addr_reg[20]_i_1_n_1 ,\portAcpu_addr_reg[20]_i_1_n_2 ,\portAcpu_addr_reg[20]_i_1_n_3 ,\portAcpu_addr_reg[20]_i_1_n_4 ,\portAcpu_addr_reg[20]_i_1_n_5 ,\portAcpu_addr_reg[20]_i_1_n_6 ,\portAcpu_addr_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\portAcpu_addr_reg[20]_i_1_n_8 ,\portAcpu_addr_reg[20]_i_1_n_9 ,\portAcpu_addr_reg[20]_i_1_n_10 ,\portAcpu_addr_reg[20]_i_1_n_11 ,\portAcpu_addr_reg[20]_i_1_n_12 ,\portAcpu_addr_reg[20]_i_1_n_13 ,\portAcpu_addr_reg[20]_i_1_n_14 ,\portAcpu_addr_reg[20]_i_1_n_15 }),
        .S(portAcpu_addr[15:8]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[21] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_15 ),
        .Q(portAcpu_addr[16]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[22] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_14 ),
        .Q(portAcpu_addr[17]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[23] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_13 ),
        .Q(portAcpu_addr[18]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[24] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_12 ),
        .Q(portAcpu_addr[19]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[25] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_11 ),
        .Q(portAcpu_addr[20]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[26] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_10 ),
        .Q(portAcpu_addr[21]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[27] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_9 ),
        .Q(portAcpu_addr[22]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[28] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[28]_i_1_n_8 ),
        .Q(portAcpu_addr[23]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  CARRY8 \portAcpu_addr_reg[28]_i_1 
       (.CI(\portAcpu_addr_reg[20]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\portAcpu_addr_reg[28]_i_1_n_0 ,\portAcpu_addr_reg[28]_i_1_n_1 ,\portAcpu_addr_reg[28]_i_1_n_2 ,\portAcpu_addr_reg[28]_i_1_n_3 ,\portAcpu_addr_reg[28]_i_1_n_4 ,\portAcpu_addr_reg[28]_i_1_n_5 ,\portAcpu_addr_reg[28]_i_1_n_6 ,\portAcpu_addr_reg[28]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\portAcpu_addr_reg[28]_i_1_n_8 ,\portAcpu_addr_reg[28]_i_1_n_9 ,\portAcpu_addr_reg[28]_i_1_n_10 ,\portAcpu_addr_reg[28]_i_1_n_11 ,\portAcpu_addr_reg[28]_i_1_n_12 ,\portAcpu_addr_reg[28]_i_1_n_13 ,\portAcpu_addr_reg[28]_i_1_n_14 ,\portAcpu_addr_reg[28]_i_1_n_15 }),
        .S(portAcpu_addr[23:16]));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[29] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[31]_i_2_n_15 ),
        .Q(portAcpu_addr[24]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[30] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[31]_i_2_n_14 ),
        .Q(portAcpu_addr[25]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[31] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[31]_i_2_n_13 ),
        .Q(portAcpu_addr[26]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  CARRY8 \portAcpu_addr_reg[31]_i_2 
       (.CI(\portAcpu_addr_reg[28]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED [7:2],\portAcpu_addr_reg[31]_i_2_n_6 ,\portAcpu_addr_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_portAcpu_addr_reg[31]_i_2_O_UNCONNECTED [7:3],\portAcpu_addr_reg[31]_i_2_n_13 ,\portAcpu_addr_reg[31]_i_2_n_14 ,\portAcpu_addr_reg[31]_i_2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,portAcpu_addr[26:24]}));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[5] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_15 ),
        .Q(portAcpu_addr[0]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[6] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_14 ),
        .Q(portAcpu_addr[1]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[7] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_13 ),
        .Q(portAcpu_addr[2]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[8] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_12 ),
        .Q(portAcpu_addr[3]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_A ADDR" *) 
  FDRE \portAcpu_addr_reg[9] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(\portAcpu_addr_reg[12]_i_1_n_11 ),
        .Q(portAcpu_addr[4]),
        .R(\portAcpu_addr[31]_i_1_n_0 ));
  FDRE \reg_axis_tdata_reg[0] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[0]),
        .Q(axis_tdata[0]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[100] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[100]),
        .Q(axis_tdata[100]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[101] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[101]),
        .Q(axis_tdata[101]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[102] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[102]),
        .Q(axis_tdata[102]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[103] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[103]),
        .Q(axis_tdata[103]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[104] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[104]),
        .Q(axis_tdata[104]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[105] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[105]),
        .Q(axis_tdata[105]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[106] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[106]),
        .Q(axis_tdata[106]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[107] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[107]),
        .Q(axis_tdata[107]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[108] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[108]),
        .Q(axis_tdata[108]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[109] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[109]),
        .Q(axis_tdata[109]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[10] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[10]),
        .Q(axis_tdata[10]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[110] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[110]),
        .Q(axis_tdata[110]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[111] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[111]),
        .Q(axis_tdata[111]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[112] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[112]),
        .Q(axis_tdata[112]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[113] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[113]),
        .Q(axis_tdata[113]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[114] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[114]),
        .Q(axis_tdata[114]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[115] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[115]),
        .Q(axis_tdata[115]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[116] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[116]),
        .Q(axis_tdata[116]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[117] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[117]),
        .Q(axis_tdata[117]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[118] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[118]),
        .Q(axis_tdata[118]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[119] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[119]),
        .Q(axis_tdata[119]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[11] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[11]),
        .Q(axis_tdata[11]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[120] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[120]),
        .Q(axis_tdata[120]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[121] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[121]),
        .Q(axis_tdata[121]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[122] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[122]),
        .Q(axis_tdata[122]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[123] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[123]),
        .Q(axis_tdata[123]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[124] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[124]),
        .Q(axis_tdata[124]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[125] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[125]),
        .Q(axis_tdata[125]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[126] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[126]),
        .Q(axis_tdata[126]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[127] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[127]),
        .Q(axis_tdata[127]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[128] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[128]),
        .Q(axis_tdata[128]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[129] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[129]),
        .Q(axis_tdata[129]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[12] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[12]),
        .Q(axis_tdata[12]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[130] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[130]),
        .Q(axis_tdata[130]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[131] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[131]),
        .Q(axis_tdata[131]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[132] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[132]),
        .Q(axis_tdata[132]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[133] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[133]),
        .Q(axis_tdata[133]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[134] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[134]),
        .Q(axis_tdata[134]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[135] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[135]),
        .Q(axis_tdata[135]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[136] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[136]),
        .Q(axis_tdata[136]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[137] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[137]),
        .Q(axis_tdata[137]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[138] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[138]),
        .Q(axis_tdata[138]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[139] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[139]),
        .Q(axis_tdata[139]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[13] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[13]),
        .Q(axis_tdata[13]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[140] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[140]),
        .Q(axis_tdata[140]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[141] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[141]),
        .Q(axis_tdata[141]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[142] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[142]),
        .Q(axis_tdata[142]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[143] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[143]),
        .Q(axis_tdata[143]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[144] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[144]),
        .Q(axis_tdata[144]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[145] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[145]),
        .Q(axis_tdata[145]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[146] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[146]),
        .Q(axis_tdata[146]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[147] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[147]),
        .Q(axis_tdata[147]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[148] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[148]),
        .Q(axis_tdata[148]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[149] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[149]),
        .Q(axis_tdata[149]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[14] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[14]),
        .Q(axis_tdata[14]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[150] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[150]),
        .Q(axis_tdata[150]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[151] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[151]),
        .Q(axis_tdata[151]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[152] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[152]),
        .Q(axis_tdata[152]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[153] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[153]),
        .Q(axis_tdata[153]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[154] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[154]),
        .Q(axis_tdata[154]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[155] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[155]),
        .Q(axis_tdata[155]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[156] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[156]),
        .Q(axis_tdata[156]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[157] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[157]),
        .Q(axis_tdata[157]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[158] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[158]),
        .Q(axis_tdata[158]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[159] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[159]),
        .Q(axis_tdata[159]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[15] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[15]),
        .Q(axis_tdata[15]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[160] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[160]),
        .Q(axis_tdata[160]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[161] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[161]),
        .Q(axis_tdata[161]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[162] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[162]),
        .Q(axis_tdata[162]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[163] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[163]),
        .Q(axis_tdata[163]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[164] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[164]),
        .Q(axis_tdata[164]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[165] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[165]),
        .Q(axis_tdata[165]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[166] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[166]),
        .Q(axis_tdata[166]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[167] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[167]),
        .Q(axis_tdata[167]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[168] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[168]),
        .Q(axis_tdata[168]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[169] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[169]),
        .Q(axis_tdata[169]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[16] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[16]),
        .Q(axis_tdata[16]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[170] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[170]),
        .Q(axis_tdata[170]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[171] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[171]),
        .Q(axis_tdata[171]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[172] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[172]),
        .Q(axis_tdata[172]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[173] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[173]),
        .Q(axis_tdata[173]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[174] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[174]),
        .Q(axis_tdata[174]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[175] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[175]),
        .Q(axis_tdata[175]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[176] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[176]),
        .Q(axis_tdata[176]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[177] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[177]),
        .Q(axis_tdata[177]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[178] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[178]),
        .Q(axis_tdata[178]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[179] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[179]),
        .Q(axis_tdata[179]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[17] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[17]),
        .Q(axis_tdata[17]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[180] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[180]),
        .Q(axis_tdata[180]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[181] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[181]),
        .Q(axis_tdata[181]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[182] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[182]),
        .Q(axis_tdata[182]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[183] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[183]),
        .Q(axis_tdata[183]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[184] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[184]),
        .Q(axis_tdata[184]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[185] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[185]),
        .Q(axis_tdata[185]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[186] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[186]),
        .Q(axis_tdata[186]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[187] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[187]),
        .Q(axis_tdata[187]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[188] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[188]),
        .Q(axis_tdata[188]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[189] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[189]),
        .Q(axis_tdata[189]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[18] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[18]),
        .Q(axis_tdata[18]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[190] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[190]),
        .Q(axis_tdata[190]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[191] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[191]),
        .Q(axis_tdata[191]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[192] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[192]),
        .Q(axis_tdata[192]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[193] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[193]),
        .Q(axis_tdata[193]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[194] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[194]),
        .Q(axis_tdata[194]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[195] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[195]),
        .Q(axis_tdata[195]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[196] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[196]),
        .Q(axis_tdata[196]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[197] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[197]),
        .Q(axis_tdata[197]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[198] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[198]),
        .Q(axis_tdata[198]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[199] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[199]),
        .Q(axis_tdata[199]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[19] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[19]),
        .Q(axis_tdata[19]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[1] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[1]),
        .Q(axis_tdata[1]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[200] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[200]),
        .Q(axis_tdata[200]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[201] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[201]),
        .Q(axis_tdata[201]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[202] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[202]),
        .Q(axis_tdata[202]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[203] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[203]),
        .Q(axis_tdata[203]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[204] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[204]),
        .Q(axis_tdata[204]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[205] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[205]),
        .Q(axis_tdata[205]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[206] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[206]),
        .Q(axis_tdata[206]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[207] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[207]),
        .Q(axis_tdata[207]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[208] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[208]),
        .Q(axis_tdata[208]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[209] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[209]),
        .Q(axis_tdata[209]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[20] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[20]),
        .Q(axis_tdata[20]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[210] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[210]),
        .Q(axis_tdata[210]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[211] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[211]),
        .Q(axis_tdata[211]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[212] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[212]),
        .Q(axis_tdata[212]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[213] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[213]),
        .Q(axis_tdata[213]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[214] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[214]),
        .Q(axis_tdata[214]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[215] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[215]),
        .Q(axis_tdata[215]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[216] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[216]),
        .Q(axis_tdata[216]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[217] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[217]),
        .Q(axis_tdata[217]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[218] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[218]),
        .Q(axis_tdata[218]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[219] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[219]),
        .Q(axis_tdata[219]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[21] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[21]),
        .Q(axis_tdata[21]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[220] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[220]),
        .Q(axis_tdata[220]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[221] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[221]),
        .Q(axis_tdata[221]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[222] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[222]),
        .Q(axis_tdata[222]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[223] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[223]),
        .Q(axis_tdata[223]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[224] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[224]),
        .Q(axis_tdata[224]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[225] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[225]),
        .Q(axis_tdata[225]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[226] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[226]),
        .Q(axis_tdata[226]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[227] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[227]),
        .Q(axis_tdata[227]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[228] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[228]),
        .Q(axis_tdata[228]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[229] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[229]),
        .Q(axis_tdata[229]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[22] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[22]),
        .Q(axis_tdata[22]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[230] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[230]),
        .Q(axis_tdata[230]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[231] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[231]),
        .Q(axis_tdata[231]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[232] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[232]),
        .Q(axis_tdata[232]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[233] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[233]),
        .Q(axis_tdata[233]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[234] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[234]),
        .Q(axis_tdata[234]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[235] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[235]),
        .Q(axis_tdata[235]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[236] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[236]),
        .Q(axis_tdata[236]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[237] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[237]),
        .Q(axis_tdata[237]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[238] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[238]),
        .Q(axis_tdata[238]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[239] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[239]),
        .Q(axis_tdata[239]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[23] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[23]),
        .Q(axis_tdata[23]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[240] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[240]),
        .Q(axis_tdata[240]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[241] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[241]),
        .Q(axis_tdata[241]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[242] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[242]),
        .Q(axis_tdata[242]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[243] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[243]),
        .Q(axis_tdata[243]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[244] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[244]),
        .Q(axis_tdata[244]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[245] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[245]),
        .Q(axis_tdata[245]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[246] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[246]),
        .Q(axis_tdata[246]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[247] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[247]),
        .Q(axis_tdata[247]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[248] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[248]),
        .Q(axis_tdata[248]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[249] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[249]),
        .Q(axis_tdata[249]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[24] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[24]),
        .Q(axis_tdata[24]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[250] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[250]),
        .Q(axis_tdata[250]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[251] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[251]),
        .Q(axis_tdata[251]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[252] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[252]),
        .Q(axis_tdata[252]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[253] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[253]),
        .Q(axis_tdata[253]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[254] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[254]),
        .Q(axis_tdata[254]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[255] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[255]),
        .Q(axis_tdata[255]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[25] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[25]),
        .Q(axis_tdata[25]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[26] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[26]),
        .Q(axis_tdata[26]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[27] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[27]),
        .Q(axis_tdata[27]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[28] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[28]),
        .Q(axis_tdata[28]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[29] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[29]),
        .Q(axis_tdata[29]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[2] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[2]),
        .Q(axis_tdata[2]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[30] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[30]),
        .Q(axis_tdata[30]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[31] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[31]),
        .Q(axis_tdata[31]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[32] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[32]),
        .Q(axis_tdata[32]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[33] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[33]),
        .Q(axis_tdata[33]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[34] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[34]),
        .Q(axis_tdata[34]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[35] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[35]),
        .Q(axis_tdata[35]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[36] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[36]),
        .Q(axis_tdata[36]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[37] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[37]),
        .Q(axis_tdata[37]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[38] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[38]),
        .Q(axis_tdata[38]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[39] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[39]),
        .Q(axis_tdata[39]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[3] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[3]),
        .Q(axis_tdata[3]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[40] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[40]),
        .Q(axis_tdata[40]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[41] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[41]),
        .Q(axis_tdata[41]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[42] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[42]),
        .Q(axis_tdata[42]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[43] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[43]),
        .Q(axis_tdata[43]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[44] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[44]),
        .Q(axis_tdata[44]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[45] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[45]),
        .Q(axis_tdata[45]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[46] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[46]),
        .Q(axis_tdata[46]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[47] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[47]),
        .Q(axis_tdata[47]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[48] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[48]),
        .Q(axis_tdata[48]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[49] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[49]),
        .Q(axis_tdata[49]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[4] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[4]),
        .Q(axis_tdata[4]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[50] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[50]),
        .Q(axis_tdata[50]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[51] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[51]),
        .Q(axis_tdata[51]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[52] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[52]),
        .Q(axis_tdata[52]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[53] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[53]),
        .Q(axis_tdata[53]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[54] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[54]),
        .Q(axis_tdata[54]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[55] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[55]),
        .Q(axis_tdata[55]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[56] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[56]),
        .Q(axis_tdata[56]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[57] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[57]),
        .Q(axis_tdata[57]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[58] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[58]),
        .Q(axis_tdata[58]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[59] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[59]),
        .Q(axis_tdata[59]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[5] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[5]),
        .Q(axis_tdata[5]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[60] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[60]),
        .Q(axis_tdata[60]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[61] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[61]),
        .Q(axis_tdata[61]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[62] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[62]),
        .Q(axis_tdata[62]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[63] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[63]),
        .Q(axis_tdata[63]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[64] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[64]),
        .Q(axis_tdata[64]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[65] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[65]),
        .Q(axis_tdata[65]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[66] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[66]),
        .Q(axis_tdata[66]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[67] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[67]),
        .Q(axis_tdata[67]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[68] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[68]),
        .Q(axis_tdata[68]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[69] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[69]),
        .Q(axis_tdata[69]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[6] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[6]),
        .Q(axis_tdata[6]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[70] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[70]),
        .Q(axis_tdata[70]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[71] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[71]),
        .Q(axis_tdata[71]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[72] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[72]),
        .Q(axis_tdata[72]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[73] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[73]),
        .Q(axis_tdata[73]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[74] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[74]),
        .Q(axis_tdata[74]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[75] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[75]),
        .Q(axis_tdata[75]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[76] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[76]),
        .Q(axis_tdata[76]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[77] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[77]),
        .Q(axis_tdata[77]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[78] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[78]),
        .Q(axis_tdata[78]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[79] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[79]),
        .Q(axis_tdata[79]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[7] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[7]),
        .Q(axis_tdata[7]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[80] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[80]),
        .Q(axis_tdata[80]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[81] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[81]),
        .Q(axis_tdata[81]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[82] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[82]),
        .Q(axis_tdata[82]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[83] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[83]),
        .Q(axis_tdata[83]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[84] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[84]),
        .Q(axis_tdata[84]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[85] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[85]),
        .Q(axis_tdata[85]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[86] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[86]),
        .Q(axis_tdata[86]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[87] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[87]),
        .Q(axis_tdata[87]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[88] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[88]),
        .Q(axis_tdata[88]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[89] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[89]),
        .Q(axis_tdata[89]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[8] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[8]),
        .Q(axis_tdata[8]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[90] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[90]),
        .Q(axis_tdata[90]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[91] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[91]),
        .Q(axis_tdata[91]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[92] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[92]),
        .Q(axis_tdata[92]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[93] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[93]),
        .Q(axis_tdata[93]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[94] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[94]),
        .Q(axis_tdata[94]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[95] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[95]),
        .Q(axis_tdata[95]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[96] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[96]),
        .Q(axis_tdata[96]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[97] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[97]),
        .Q(axis_tdata[97]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[98] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[98]),
        .Q(axis_tdata[98]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[99] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[99]),
        .Q(axis_tdata[99]),
        .R(1'b0));
  FDRE \reg_axis_tdata_reg[9] 
       (.C(axis_clk),
        .CE(1'b1),
        .D(portA_cpu_rdata[9]),
        .Q(axis_tdata[9]),
        .R(1'b0));
  (* equivalent_register_removal = "no" *) 
  FDRE reg_axis_tvalid_reg
       (.C(axis_clk),
        .CE(1'b1),
        .D(reg_axis_tvalid),
        .Q(axis_tvalid),
        .R(1'b0));
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
