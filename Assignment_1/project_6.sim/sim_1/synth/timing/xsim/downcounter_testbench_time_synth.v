// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Nov 25 14:30:09 2022
// Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/velic/project_6/project_6.sim/sim_1/synth/timing/xsim/downcounter_testbench_time_synth.v
// Design      : down_counter
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* COUNT_IN = "127" *) 
(* NotValidForBitStream *)
module down_counter
   (clk,
    latch,
    dec,
    divide_by_two,
    counter,
    zero_flag);
  input clk;
  input latch;
  input dec;
  input divide_by_two;
  output [7:0]counter;
  output zero_flag;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [7:0]counter;
  wire [6:0]counter_OBUF;
  wire \counter_down[1]__0_i_1_n_0 ;
  wire \counter_down[2]__0_i_1_n_0 ;
  wire \counter_down[3]__0_i_1_n_0 ;
  wire \counter_down[4]__0_i_1_n_0 ;
  wire \counter_down[5]__0_i_1_n_0 ;
  wire \counter_down[6]__0_i_1_n_0 ;
  wire \counter_down[6]__0_i_2_n_0 ;
  wire dec;
  wire dec_IBUF;
  wire divide_by_two;
  wire divide_by_two_IBUF;
  wire zero_flag;
  wire zero_flag_OBUF;
  wire zero_flag_i_1_n_0;

initial begin
 $sdf_annotate("downcounter_testbench_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF #(
    .CCIO_EN("TRUE")) 
    clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \counter_OBUF[0]_inst 
       (.I(counter_OBUF[0]),
        .O(counter[0]));
  OBUF \counter_OBUF[1]_inst 
       (.I(counter_OBUF[1]),
        .O(counter[1]));
  OBUF \counter_OBUF[2]_inst 
       (.I(counter_OBUF[2]),
        .O(counter[2]));
  OBUF \counter_OBUF[3]_inst 
       (.I(counter_OBUF[3]),
        .O(counter[3]));
  OBUF \counter_OBUF[4]_inst 
       (.I(counter_OBUF[4]),
        .O(counter[4]));
  OBUF \counter_OBUF[5]_inst 
       (.I(counter_OBUF[5]),
        .O(counter[5]));
  OBUF \counter_OBUF[6]_inst 
       (.I(counter_OBUF[6]),
        .O(counter[6]));
  OBUF \counter_OBUF[7]_inst 
       (.I(1'b0),
        .O(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter_down[1]__0_i_1 
       (.I0(counter_OBUF[1]),
        .I1(counter_OBUF[0]),
        .O(\counter_down[1]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \counter_down[2]__0_i_1 
       (.I0(counter_OBUF[2]),
        .I1(counter_OBUF[0]),
        .I2(counter_OBUF[1]),
        .O(\counter_down[2]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter_down[3]__0_i_1 
       (.I0(counter_OBUF[3]),
        .I1(counter_OBUF[1]),
        .I2(counter_OBUF[0]),
        .I3(counter_OBUF[2]),
        .O(\counter_down[3]__0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \counter_down[4]__0_i_1 
       (.I0(counter_OBUF[4]),
        .I1(counter_OBUF[2]),
        .I2(counter_OBUF[0]),
        .I3(counter_OBUF[1]),
        .I4(counter_OBUF[3]),
        .O(\counter_down[4]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \counter_down[5]__0_i_1 
       (.I0(counter_OBUF[5]),
        .I1(counter_OBUF[3]),
        .I2(counter_OBUF[1]),
        .I3(counter_OBUF[0]),
        .I4(counter_OBUF[2]),
        .I5(counter_OBUF[4]),
        .O(\counter_down[5]__0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \counter_down[6]__0_i_1 
       (.I0(\counter_down[6]__0_i_2_n_0 ),
        .I1(counter_OBUF[6]),
        .O(\counter_down[6]__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter_down[6]__0_i_2 
       (.I0(counter_OBUF[4]),
        .I1(counter_OBUF[2]),
        .I2(counter_OBUF[0]),
        .I3(counter_OBUF[1]),
        .I4(counter_OBUF[3]),
        .I5(counter_OBUF[5]),
        .O(\counter_down[6]__0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(divide_by_two_IBUF),
        .D(counter_OBUF[1]),
        .Q(counter_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[1]__0 
       (.C(clk_IBUF_BUFG),
        .CE(dec_IBUF),
        .D(\counter_down[1]__0_i_1_n_0 ),
        .Q(counter_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[2]__0 
       (.C(clk_IBUF_BUFG),
        .CE(dec_IBUF),
        .D(\counter_down[2]__0_i_1_n_0 ),
        .Q(counter_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[3]__0 
       (.C(clk_IBUF_BUFG),
        .CE(dec_IBUF),
        .D(\counter_down[3]__0_i_1_n_0 ),
        .Q(counter_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[4]__0 
       (.C(clk_IBUF_BUFG),
        .CE(dec_IBUF),
        .D(\counter_down[4]__0_i_1_n_0 ),
        .Q(counter_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[5]__0 
       (.C(clk_IBUF_BUFG),
        .CE(dec_IBUF),
        .D(\counter_down[5]__0_i_1_n_0 ),
        .Q(counter_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \counter_down_reg[6]__0 
       (.C(clk_IBUF_BUFG),
        .CE(dec_IBUF),
        .D(\counter_down[6]__0_i_1_n_0 ),
        .Q(counter_OBUF[6]),
        .R(1'b0));
  IBUF #(
    .CCIO_EN("TRUE")) 
    dec_IBUF_inst
       (.I(dec),
        .O(dec_IBUF));
  IBUF #(
    .CCIO_EN("TRUE")) 
    divide_by_two_IBUF_inst
       (.I(divide_by_two),
        .O(divide_by_two_IBUF));
  OBUF zero_flag_OBUF_inst
       (.I(zero_flag_OBUF),
        .O(zero_flag));
  LUT2 #(
    .INIT(4'h1)) 
    zero_flag_i_1
       (.I0(\counter_down[6]__0_i_2_n_0 ),
        .I1(counter_OBUF[6]),
        .O(zero_flag_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    zero_flag_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(zero_flag_i_1_n_0),
        .Q(zero_flag_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
