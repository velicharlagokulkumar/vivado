// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Sun Sep 21 13:03:05 2025
// Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_startup_0_0_sim_netlist.v
// Design      : design_1_startup_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_startup_0_0,startup,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "startup,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CFGMCLK_RAW);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CFGMCLK_RAW CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CFGMCLK_RAW, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_startup_0_0_CFGMCLK_RAW, INSERT_VIP 0" *) output CFGMCLK_RAW;

  wire CFGMCLK_RAW;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_startup inst
       (.CFGMCLK_RAW(CFGMCLK_RAW));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_startup
   (CFGMCLK_RAW);
  output CFGMCLK_RAW;

  wire CFGMCLK_RAW;
  wire NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED;
  wire NLW_STARTUPE3_inst_EOS_UNCONNECTED;
  wire NLW_STARTUPE3_inst_PREQ_UNCONNECTED;
  wire [3:0]NLW_STARTUPE3_inst_DATA_IN_UNCONNECTED;
  wire [3:0]NLW_STARTUPE3_inst_DATA_OUT_UNCONNECTED;
  wire [3:0]NLW_STARTUPE3_inst_DI_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  STARTUPE3 #(
    .PROG_USR("FALSE")) 
    STARTUPE3_inst
       (.CFGCLK(NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED),
        .CFGMCLK(CFGMCLK_RAW),
        .DI(NLW_STARTUPE3_inst_DI_UNCONNECTED[3:0]),
        .DO({1'b0,1'b0,1'b0,1'b0}),
        .DTS({1'b1,1'b1,1'b1,1'b1}),
        .EOS(NLW_STARTUPE3_inst_EOS_UNCONNECTED),
        .FCSBO(1'b0),
        .FCSBTS(1'b1),
        .GSR(1'b0),
        .GTS(1'b0),
        .KEYCLEARB(1'b0),
        .PACK(1'b0),
        .PREQ(NLW_STARTUPE3_inst_PREQ_UNCONNECTED),
        .USRCCLKO(1'b0),
        .USRCCLKTS(1'b0),
        .USRDONEO(1'b0),
        .USRDONETS(1'b0));
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
