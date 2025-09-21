// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Sep 21 13:03:05 2025
// Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pl_sysref_0_0_sim_netlist.v
// Design      : design_1_pl_sysref_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_pl_sysref_0_0,pl_sysref,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pl_sysref,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (pl_clk,
    pl_sysref_p,
    pl_sysref_n,
    selNeg,
    user_sysref_adc,
    user_sysref_dac);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 384000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0" *) input pl_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pl_sysref CLK_P" *) input pl_sysref_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pl_sysref CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_sysref, CAN_DEBUG false, FREQ_HZ 100000000" *) input pl_sysref_n;
  input selNeg;
  output user_sysref_adc;
  output user_sysref_dac;

  wire pl_clk;
  (* IBUF_LOW_PWR *) wire pl_sysref_n;
  (* IBUF_LOW_PWR *) wire pl_sysref_p;
  wire selNeg;
  wire user_sysref_adc;
  wire user_sysref_dac;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_sysref inst
       (.pl_clk(pl_clk),
        .pl_sysref_n(pl_sysref_n),
        .pl_sysref_p(pl_sysref_p),
        .selNeg(selNeg),
        .user_sysref_adc(user_sysref_adc),
        .user_sysref_dac(user_sysref_dac));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_sysref
   (user_sysref_adc,
    user_sysref_dac,
    pl_sysref_p,
    pl_sysref_n,
    pl_clk,
    selNeg);
  output user_sysref_adc;
  output user_sysref_dac;
  input pl_sysref_p;
  input pl_sysref_n;
  input pl_clk;
  input selNeg;

  (* DONT_TOUCH *) wire ff0;
  wire ff0_i_1_n_0;
  (* DONT_TOUCH *) wire ff1;
  (* DONT_TOUCH *) wire ff2;
  (* DONT_TOUCH *) wire ffAdc;
  (* DONT_TOUCH *) wire ffDac;
  wire pl_clk;
  wire pl_sysref_falling;
  wire pl_sysref_i;
  wire pl_sysref_n;
  wire pl_sysref_p;
  wire pl_sysref_rising;
  wire selNeg;

  assign user_sysref_adc = ffAdc;
  assign user_sysref_dac = ffDac;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_inst
       (.I(pl_sysref_p),
        .IB(pl_sysref_n),
        .O(pl_sysref_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  IDDRE1 #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .IS_CB_INVERTED(1'b0),
    .IS_C_INVERTED(1'b0)) 
    IDDRE1_inst
       (.C(pl_clk),
        .CB(pl_clk),
        .D(pl_sysref_i),
        .Q1(pl_sysref_rising),
        .Q2(pl_sysref_falling),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    ff0_i_1
       (.I0(pl_sysref_falling),
        .I1(selNeg),
        .I2(pl_sysref_rising),
        .O(ff0_i_1_n_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE ff0_reg
       (.C(pl_clk),
        .CE(1'b1),
        .D(ff0_i_1_n_0),
        .Q(ff0),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE ff1_reg
       (.C(pl_clk),
        .CE(1'b1),
        .D(ff0),
        .Q(ff1),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE ff2_reg
       (.C(pl_clk),
        .CE(1'b1),
        .D(ff1),
        .Q(ff2),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE ffAdc_reg
       (.C(pl_clk),
        .CE(1'b1),
        .D(ff2),
        .Q(ffAdc),
        .R(1'b0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  FDRE ffDac_reg
       (.C(pl_clk),
        .CE(1'b1),
        .D(ff2),
        .Q(ffDac),
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
