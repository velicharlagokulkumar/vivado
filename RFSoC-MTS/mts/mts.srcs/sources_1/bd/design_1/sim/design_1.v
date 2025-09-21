//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
//Date        : Sat Sep 20 16:35:45 2025
//Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adc_hier_0_imp_AY0SMI
   (CAP_AXIS_tdata,
    CAP_AXIS_tready,
    CAP_AXIS_tvalid,
    S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  output [255:0]CAP_AXIS_tdata;
  output CAP_AXIS_tready;
  output CAP_AXIS_tvalid;
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign CAP_AXIS_tdata[255:0] = axis_clock_converter_0_M_AXIS_TDATA;
  assign CAP_AXIS_tready = axis_clock_converter_0_M_AXIS_TREADY;
  assign CAP_AXIS_tvalid = axis_clock_converter_0_M_AXIS_TVALID;
  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_0 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_0 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_0_1 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_0 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_1_imp_DBTL0P
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_2 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_1 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_1 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_1 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_2 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_2_imp_2N2E0C
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_3 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_2 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_2 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_2 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_3 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_3_imp_8LMKHB
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_4 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_3 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_3 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_3 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_4 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_4_imp_Y0SGRQ
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_5 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_4 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_4 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_4 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_5 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_5_imp_UHPL0L
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_6 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_5 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_5 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_5 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_6 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_6_imp_NF4674
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_7 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_6 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_6 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_6 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_7 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module adc_hier_7_imp_ILZSBN
   (S_AXIS_tdata,
    S_AXIS_tready,
    S_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    adc_clk,
    aresetn,
    clk_div2,
    trig_cap);
  input [127:0]S_AXIS_tdata;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  input adc_clk;
  input aresetn;
  input clk_div2;
  input trig_cap;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_gpio_io_o;
  wire [255:0]axis_clock_converter_0_M_AXIS_TDATA;
  wire axis_clock_converter_0_M_AXIS_TREADY;
  wire axis_clock_converter_0_M_AXIS_TVALID;
  wire [255:0]axis_dwidth_converter_1_M_AXIS_TDATA;
  wire axis_dwidth_converter_1_M_AXIS_TREADY;
  wire axis_dwidth_converter_1_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_ADDR;
  wire ctrl_snapshot_128k_0_BRAM_A_CLK;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DIN;
  wire [255:0]ctrl_snapshot_128k_0_BRAM_A_DOUT;
  wire ctrl_snapshot_128k_0_BRAM_A_EN;
  wire ctrl_snapshot_128k_0_BRAM_A_RST;
  wire [31:0]ctrl_snapshot_128k_0_BRAM_A_WE;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [39:0]ps8_0_axi_periph_M02_AXI_ARADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_ARBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_ARCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_ARLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARPROT;
  wire ps8_0_axi_periph_M02_AXI_ARREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_ARSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_ARVALID;
  wire [39:0]ps8_0_axi_periph_M02_AXI_AWADDR;
  wire [1:0]ps8_0_axi_periph_M02_AXI_AWBURST;
  wire [3:0]ps8_0_axi_periph_M02_AXI_AWCACHE;
  wire [7:0]ps8_0_axi_periph_M02_AXI_AWLEN;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWLOCK;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWPROT;
  wire ps8_0_axi_periph_M02_AXI_AWREADY;
  wire [2:0]ps8_0_axi_periph_M02_AXI_AWSIZE;
  wire [0:0]ps8_0_axi_periph_M02_AXI_AWVALID;
  wire [0:0]ps8_0_axi_periph_M02_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_BRESP;
  wire ps8_0_axi_periph_M02_AXI_BVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_RDATA;
  wire ps8_0_axi_periph_M02_AXI_RLAST;
  wire [0:0]ps8_0_axi_periph_M02_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M02_AXI_RRESP;
  wire ps8_0_axi_periph_M02_AXI_RVALID;
  wire [255:0]ps8_0_axi_periph_M02_AXI_WDATA;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WLAST;
  wire ps8_0_axi_periph_M02_AXI_WREADY;
  wire [31:0]ps8_0_axi_periph_M02_AXI_WSTRB;
  wire [0:0]ps8_0_axi_periph_M02_AXI_WVALID;
  wire [127:0]usp_rf_data_converter_0_m00_axis_TDATA;
  wire usp_rf_data_converter_0_m00_axis_TREADY;
  wire usp_rf_data_converter_0_m00_axis_TVALID;

  assign DAC_AXIS_PL_CLK = adc_clk;
  assign S_AXIS_tready = usp_rf_data_converter_0_m00_axis_TREADY;
  assign S_AXI_arready[0] = ps8_0_axi_periph_M02_AXI_ARREADY;
  assign S_AXI_awready[0] = ps8_0_axi_periph_M02_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = ps8_0_axi_periph_M02_AXI_BRESP;
  assign S_AXI_bvalid[0] = ps8_0_axi_periph_M02_AXI_BVALID;
  assign S_AXI_rdata[255:0] = ps8_0_axi_periph_M02_AXI_RDATA;
  assign S_AXI_rlast[0] = ps8_0_axi_periph_M02_AXI_RLAST;
  assign S_AXI_rresp[1:0] = ps8_0_axi_periph_M02_AXI_RRESP;
  assign S_AXI_rvalid[0] = ps8_0_axi_periph_M02_AXI_RVALID;
  assign S_AXI_wready[0] = ps8_0_axi_periph_M02_AXI_WREADY;
  assign axi_gpio_0_gpio_io_o = trig_cap;
  assign clk_wiz_axis_clk_out2 = clk_div2;
  assign proc_sys_reset_1_peripheral_aresetn = aresetn;
  assign ps8_0_axi_periph_M02_AXI_ARADDR = S_AXI_araddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_ARBURST = S_AXI_arburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_ARLEN = S_AXI_arlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_ARLOCK = S_AXI_arlock[0];
  assign ps8_0_axi_periph_M02_AXI_ARPROT = S_AXI_arprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_ARVALID = S_AXI_arvalid[0];
  assign ps8_0_axi_periph_M02_AXI_AWADDR = S_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_M02_AXI_AWBURST = S_AXI_awburst[1:0];
  assign ps8_0_axi_periph_M02_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign ps8_0_axi_periph_M02_AXI_AWLEN = S_AXI_awlen[7:0];
  assign ps8_0_axi_periph_M02_AXI_AWLOCK = S_AXI_awlock[0];
  assign ps8_0_axi_periph_M02_AXI_AWPROT = S_AXI_awprot[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign ps8_0_axi_periph_M02_AXI_AWVALID = S_AXI_awvalid[0];
  assign ps8_0_axi_periph_M02_AXI_BREADY = S_AXI_bready[0];
  assign ps8_0_axi_periph_M02_AXI_RREADY = S_AXI_rready[0];
  assign ps8_0_axi_periph_M02_AXI_WDATA = S_AXI_wdata[255:0];
  assign ps8_0_axi_periph_M02_AXI_WLAST = S_AXI_wlast[0];
  assign ps8_0_axi_periph_M02_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign ps8_0_axi_periph_M02_AXI_WVALID = S_AXI_wvalid[0];
  assign usp_rf_data_converter_0_m00_axis_TDATA = S_AXIS_tdata[127:0];
  assign usp_rf_data_converter_0_m00_axis_TVALID = S_AXIS_tvalid;
  design_1_axi_bram_ctrl_0_8 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(ps8_0_axi_periph_M02_AXI_ARADDR[16:0]),
        .s_axi_arburst(ps8_0_axi_periph_M02_AXI_ARBURST),
        .s_axi_arcache(ps8_0_axi_periph_M02_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(ps8_0_axi_periph_M02_AXI_ARLEN),
        .s_axi_arlock(ps8_0_axi_periph_M02_AXI_ARLOCK),
        .s_axi_arprot(ps8_0_axi_periph_M02_AXI_ARPROT),
        .s_axi_arready(ps8_0_axi_periph_M02_AXI_ARREADY),
        .s_axi_arsize(ps8_0_axi_periph_M02_AXI_ARSIZE),
        .s_axi_arvalid(ps8_0_axi_periph_M02_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M02_AXI_AWADDR[16:0]),
        .s_axi_awburst(ps8_0_axi_periph_M02_AXI_AWBURST),
        .s_axi_awcache(ps8_0_axi_periph_M02_AXI_AWCACHE),
        .s_axi_awlen(ps8_0_axi_periph_M02_AXI_AWLEN),
        .s_axi_awlock(ps8_0_axi_periph_M02_AXI_AWLOCK),
        .s_axi_awprot(ps8_0_axi_periph_M02_AXI_AWPROT),
        .s_axi_awready(ps8_0_axi_periph_M02_AXI_AWREADY),
        .s_axi_awsize(ps8_0_axi_periph_M02_AXI_AWSIZE),
        .s_axi_awvalid(ps8_0_axi_periph_M02_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M02_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M02_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M02_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M02_AXI_RDATA),
        .s_axi_rlast(ps8_0_axi_periph_M02_AXI_RLAST),
        .s_axi_rready(ps8_0_axi_periph_M02_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M02_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M02_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M02_AXI_WDATA),
        .s_axi_wlast(ps8_0_axi_periph_M02_AXI_WLAST),
        .s_axi_wready(ps8_0_axi_periph_M02_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M02_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M02_AXI_WVALID));
  design_1_axis_clock_converter_0_7 axis_clock_converter_0
       (.m_axis_aclk(clk_wiz_axis_clk_out2),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .s_axis_aclk(DAC_AXIS_PL_CLK),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID));
  design_1_axis_dwidth_converter_1_7 axis_dwidth_converter_1
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_1_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_1_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_1_M_AXIS_TVALID),
        .s_axis_tdata(usp_rf_data_converter_0_m00_axis_TDATA),
        .s_axis_tready(usp_rf_data_converter_0_m00_axis_TREADY),
        .s_axis_tvalid(usp_rf_data_converter_0_m00_axis_TVALID));
  design_1_blk_mem_gen_1_7 blk_mem_gen_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .addrb(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(ctrl_snapshot_128k_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(ctrl_snapshot_128k_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(ctrl_snapshot_128k_0_BRAM_A_WE));
  design_1_ctrl_snapshot_128k_0_8 ctrl_snapshot_128k_0
       (.CAP_AXIS_tdata(axis_clock_converter_0_M_AXIS_TDATA),
        .CAP_AXIS_tready(axis_clock_converter_0_M_AXIS_TREADY),
        .CAP_AXIS_tvalid(axis_clock_converter_0_M_AXIS_TVALID),
        .PASSTHROUGH_AXIS_tready(1'b1),
        .axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .bram_addr(ctrl_snapshot_128k_0_BRAM_A_ADDR),
        .bram_clk(ctrl_snapshot_128k_0_BRAM_A_CLK),
        .bram_en(ctrl_snapshot_128k_0_BRAM_A_EN),
        .bram_rdata(ctrl_snapshot_128k_0_BRAM_A_DOUT),
        .bram_rst(ctrl_snapshot_128k_0_BRAM_A_RST),
        .bram_wdata(ctrl_snapshot_128k_0_BRAM_A_DIN),
        .bram_we(ctrl_snapshot_128k_0_BRAM_A_WE),
        .trig_cap(axi_gpio_0_gpio_io_o));
endmodule

module dac_hier_imp_73Y8GY
   (M_AXIS_tdata,
    M_AXIS_tvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    aclk,
    axis_clk,
    axis_tdata,
    axis_tready,
    axis_tvalid,
    enable,
    s_axi_aresetn);
  output [127:0]M_AXIS_tdata;
  output M_AXIS_tvalid;
  input [16:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [16:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;
  input aclk;
  input axis_clk;
  output [255:0]axis_tdata;
  output axis_tready;
  output axis_tvalid;
  input enable;
  input s_axi_aresetn;

  wire DAC_AXIS_PL_CLK;
  wire [16:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [255:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [255:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire axi_gpio_1_gpio_io_o;
  wire [16:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [16:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [255:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [255:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [31:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [127:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire clk_wiz_axis_clk_out2;
  wire [127:0]dac_axis_in_TDATA;
  wire dac_axis_in_TVALID;
  wire [255:0]dac_dwidth_in_TDATA;
  wire dac_dwidth_in_TREADY;
  wire dac_dwidth_in_TVALID;
  wire [255:0]dac_play_out_TDATA;
  wire dac_play_out_TREADY;
  wire dac_play_out_TVALID;
  wire proc_sys_reset_1_peripheral_aresetn;
  wire [31:0]uram_play_0_BRAM_A_ADDR;
  wire uram_play_0_BRAM_A_CLK;
  wire [255:0]uram_play_0_BRAM_A_DIN;
  wire [255:0]uram_play_0_BRAM_A_DOUT;
  wire uram_play_0_BRAM_A_EN;
  wire uram_play_0_BRAM_A_RST;
  wire [31:0]uram_play_0_BRAM_A_WE;

  assign DAC_AXIS_PL_CLK = aclk;
  assign M_AXIS_tdata[127:0] = dac_axis_in_TDATA;
  assign M_AXIS_tvalid = dac_axis_in_TVALID;
  assign S_AXI_arready = axi_interconnect_0_M00_AXI_ARREADY;
  assign S_AXI_awready = axi_interconnect_0_M00_AXI_AWREADY;
  assign S_AXI_bresp[1:0] = axi_interconnect_0_M00_AXI_BRESP;
  assign S_AXI_bvalid = axi_interconnect_0_M00_AXI_BVALID;
  assign S_AXI_rdata[255:0] = axi_interconnect_0_M00_AXI_RDATA;
  assign S_AXI_rlast = axi_interconnect_0_M00_AXI_RLAST;
  assign S_AXI_rresp[1:0] = axi_interconnect_0_M00_AXI_RRESP;
  assign S_AXI_rvalid = axi_interconnect_0_M00_AXI_RVALID;
  assign S_AXI_wready = axi_interconnect_0_M00_AXI_WREADY;
  assign axi_gpio_1_gpio_io_o = enable;
  assign axi_interconnect_0_M00_AXI_ARADDR = S_AXI_araddr[16:0];
  assign axi_interconnect_0_M00_AXI_ARBURST = S_AXI_arburst[1:0];
  assign axi_interconnect_0_M00_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign axi_interconnect_0_M00_AXI_ARLEN = S_AXI_arlen[7:0];
  assign axi_interconnect_0_M00_AXI_ARLOCK = S_AXI_arlock[0];
  assign axi_interconnect_0_M00_AXI_ARPROT = S_AXI_arprot[2:0];
  assign axi_interconnect_0_M00_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign axi_interconnect_0_M00_AXI_ARVALID = S_AXI_arvalid;
  assign axi_interconnect_0_M00_AXI_AWADDR = S_AXI_awaddr[16:0];
  assign axi_interconnect_0_M00_AXI_AWBURST = S_AXI_awburst[1:0];
  assign axi_interconnect_0_M00_AXI_AWCACHE = S_AXI_awcache[3:0];
  assign axi_interconnect_0_M00_AXI_AWLEN = S_AXI_awlen[7:0];
  assign axi_interconnect_0_M00_AXI_AWLOCK = S_AXI_awlock[0];
  assign axi_interconnect_0_M00_AXI_AWPROT = S_AXI_awprot[2:0];
  assign axi_interconnect_0_M00_AXI_AWSIZE = S_AXI_awsize[2:0];
  assign axi_interconnect_0_M00_AXI_AWVALID = S_AXI_awvalid;
  assign axi_interconnect_0_M00_AXI_BREADY = S_AXI_bready;
  assign axi_interconnect_0_M00_AXI_RREADY = S_AXI_rready;
  assign axi_interconnect_0_M00_AXI_WDATA = S_AXI_wdata[255:0];
  assign axi_interconnect_0_M00_AXI_WLAST = S_AXI_wlast;
  assign axi_interconnect_0_M00_AXI_WSTRB = S_AXI_wstrb[31:0];
  assign axi_interconnect_0_M00_AXI_WVALID = S_AXI_wvalid;
  assign axis_tdata[255:0] = dac_play_out_TDATA;
  assign axis_tready = dac_play_out_TREADY;
  assign axis_tvalid = dac_play_out_TVALID;
  assign clk_wiz_axis_clk_out2 = axis_clk;
  assign proc_sys_reset_1_peripheral_aresetn = s_axi_aresetn;
  design_1_axi_bram_ctrl_1_0 axi_bram_ctrl_dac
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .s_axi_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  design_1_axis_clock_converter_0_8 axis_clock_converter_0
       (.m_axis_aclk(DAC_AXIS_PL_CLK),
        .m_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(dac_dwidth_in_TDATA),
        .m_axis_tready(dac_dwidth_in_TREADY),
        .m_axis_tvalid(dac_dwidth_in_TVALID),
        .s_axis_aclk(clk_wiz_axis_clk_out2),
        .s_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axis_tdata(dac_play_out_TDATA),
        .s_axis_tready(dac_play_out_TREADY),
        .s_axis_tvalid(dac_play_out_TVALID));
  design_1_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(dac_dwidth_in_TDATA),
        .s_axis_tready(dac_dwidth_in_TREADY),
        .s_axis_tvalid(dac_dwidth_in_TVALID));
  design_1_axis_register_slice_0_0 axis_register_slice_0
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata(dac_axis_in_TDATA),
        .m_axis_tready(1'b1),
        .m_axis_tvalid(dac_axis_in_TVALID),
        .s_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .s_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .s_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .addrb(uram_play_0_BRAM_A_ADDR),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .clkb(uram_play_0_BRAM_A_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .dinb(uram_play_0_BRAM_A_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .doutb(uram_play_0_BRAM_A_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .enb(uram_play_0_BRAM_A_EN),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .rstb(uram_play_0_BRAM_A_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .web(uram_play_0_BRAM_A_WE));
  design_1_uram_play128k_0_0 uram_play128k_0
       (.axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .axis_clk(clk_wiz_axis_clk_out2),
        .axis_tdata(dac_play_out_TDATA),
        .axis_tready(dac_play_out_TREADY),
        .axis_tvalid(dac_play_out_TVALID),
        .enable(axi_gpio_1_gpio_io_o),
        .portA_clk(uram_play_0_BRAM_A_CLK),
        .portA_cpu_rdata(uram_play_0_BRAM_A_DOUT),
        .portA_cpu_wdata(uram_play_0_BRAM_A_DIN),
        .portA_en(uram_play_0_BRAM_A_EN),
        .portA_rst(uram_play_0_BRAM_A_RST),
        .portA_we(uram_play_0_BRAM_A_WE),
        .portAcpu_addr(uram_play_0_BRAM_A_ADDR));
endmodule

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=99,numReposBlks=74,numNonXlnxBlks=0,numHierBlks=25,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=2,da_clkrst_cnt=3,da_zynq_ultra_ps_e_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN_D_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN_D_0, CAN_DEBUG false, FREQ_HZ 384000000" *) input CLK_IN_D_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN_D_0 CLK_P" *) input CLK_IN_D_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc0_clk_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc0_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input adc0_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc0_clk_0 CLK_P" *) input adc0_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc1_clk_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc1_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input adc1_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc1_clk_0 CLK_P" *) input adc1_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc2_clk_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc2_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input adc2_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc2_clk_0 CLK_P" *) input adc2_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc3_clk_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc3_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input adc3_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc3_clk_0 CLK_P" *) input adc3_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac0_clk_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac0_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input dac0_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac0_clk_0 CLK_P" *) input dac0_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac1_clk_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac1_clk_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input dac1_clk_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac1_clk_0 CLK_P" *) input dac1_clk_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pl_sysref_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_sysref_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input pl_sysref_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 pl_sysref_0 CLK_P" *) input pl_sysref_0_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in_0 diff_n" *) input sysref_in_0_diff_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in_0 diff_p" *) input sysref_in_0_diff_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_01_0 V_N" *) input vin0_01_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_01_0 V_P" *) input vin0_01_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_23_0 V_N" *) input vin0_23_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_23_0 V_P" *) input vin0_23_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin1_01_0 V_N" *) input vin1_01_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin1_01_0 V_P" *) input vin1_01_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin1_23_0 V_N" *) input vin1_23_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin1_23_0 V_P" *) input vin1_23_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_01_0 V_N" *) input vin2_01_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_01_0 V_P" *) input vin2_01_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_23_0 V_N" *) input vin2_23_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin2_23_0 V_P" *) input vin2_23_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin3_01_0 V_N" *) input vin3_01_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin3_01_0 V_P" *) input vin3_01_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin3_23_0 V_N" *) input vin3_23_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin3_23_0 V_P" *) input vin3_23_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00_0 V_N" *) output vout00_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00_0 V_P" *) output vout00_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout01_0 V_N" *) output vout01_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout01_0 V_P" *) output vout01_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout02_0 V_N" *) output vout02_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout02_0 V_P" *) output vout02_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout03_0 V_N" *) output vout03_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout03_0 V_P" *) output vout03_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout10_0 V_N" *) output vout10_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout10_0 V_P" *) output vout10_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout11_0 V_N" *) output vout11_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout11_0 V_P" *) output vout11_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout12_0 V_N" *) output vout12_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout12_0 V_P" *) output vout12_0_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout13_0 V_N" *) output vout13_0_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout13_0 V_P" *) output vout13_0_v_p;

  wire [0:0]ARESETN_1;
  wire [0:0]ARESETN_2;
  wire CLK_IN_D_0_1_CLK_N;
  wire CLK_IN_D_0_1_CLK_P;
  wire DAC_AXIS_PL_CLK;
  wire [127:0]S_AXIS_1_TDATA;
  wire S_AXIS_1_TREADY;
  wire S_AXIS_1_TVALID;
  wire [127:0]S_AXIS_2_TDATA;
  wire S_AXIS_2_TREADY;
  wire S_AXIS_2_TVALID;
  wire [127:0]S_AXIS_3_TDATA;
  wire S_AXIS_3_TREADY;
  wire S_AXIS_3_TVALID;
  wire [127:0]S_AXIS_4_TDATA;
  wire S_AXIS_4_TREADY;
  wire S_AXIS_4_TVALID;
  wire [127:0]S_AXIS_5_TDATA;
  wire S_AXIS_5_TREADY;
  wire S_AXIS_5_TVALID;
  wire [127:0]S_AXIS_6_TDATA;
  wire S_AXIS_6_TREADY;
  wire S_AXIS_6_TVALID;
  wire [39:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [7:0]S_AXI_1_ARLEN;
  wire [0:0]S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire [0:0]S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire [0:0]S_AXI_1_ARVALID;
  wire [39:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [7:0]S_AXI_1_AWLEN;
  wire [0:0]S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire [0:0]S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire [0:0]S_AXI_1_BVALID;
  wire [255:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RLAST;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire [0:0]S_AXI_1_RVALID;
  wire [255:0]S_AXI_1_WDATA;
  wire [0:0]S_AXI_1_WLAST;
  wire [0:0]S_AXI_1_WREADY;
  wire [31:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire [39:0]S_AXI_2_ARADDR;
  wire [1:0]S_AXI_2_ARBURST;
  wire [3:0]S_AXI_2_ARCACHE;
  wire [7:0]S_AXI_2_ARLEN;
  wire [0:0]S_AXI_2_ARLOCK;
  wire [2:0]S_AXI_2_ARPROT;
  wire [0:0]S_AXI_2_ARREADY;
  wire [2:0]S_AXI_2_ARSIZE;
  wire [0:0]S_AXI_2_ARVALID;
  wire [39:0]S_AXI_2_AWADDR;
  wire [1:0]S_AXI_2_AWBURST;
  wire [3:0]S_AXI_2_AWCACHE;
  wire [7:0]S_AXI_2_AWLEN;
  wire [0:0]S_AXI_2_AWLOCK;
  wire [2:0]S_AXI_2_AWPROT;
  wire [0:0]S_AXI_2_AWREADY;
  wire [2:0]S_AXI_2_AWSIZE;
  wire [0:0]S_AXI_2_AWVALID;
  wire [0:0]S_AXI_2_BREADY;
  wire [1:0]S_AXI_2_BRESP;
  wire [0:0]S_AXI_2_BVALID;
  wire [255:0]S_AXI_2_RDATA;
  wire [0:0]S_AXI_2_RLAST;
  wire [0:0]S_AXI_2_RREADY;
  wire [1:0]S_AXI_2_RRESP;
  wire [0:0]S_AXI_2_RVALID;
  wire [255:0]S_AXI_2_WDATA;
  wire [0:0]S_AXI_2_WLAST;
  wire [0:0]S_AXI_2_WREADY;
  wire [31:0]S_AXI_2_WSTRB;
  wire [0:0]S_AXI_2_WVALID;
  wire [39:0]S_AXI_3_ARADDR;
  wire [1:0]S_AXI_3_ARBURST;
  wire [3:0]S_AXI_3_ARCACHE;
  wire [7:0]S_AXI_3_ARLEN;
  wire [0:0]S_AXI_3_ARLOCK;
  wire [2:0]S_AXI_3_ARPROT;
  wire [0:0]S_AXI_3_ARREADY;
  wire [2:0]S_AXI_3_ARSIZE;
  wire [0:0]S_AXI_3_ARVALID;
  wire [39:0]S_AXI_3_AWADDR;
  wire [1:0]S_AXI_3_AWBURST;
  wire [3:0]S_AXI_3_AWCACHE;
  wire [7:0]S_AXI_3_AWLEN;
  wire [0:0]S_AXI_3_AWLOCK;
  wire [2:0]S_AXI_3_AWPROT;
  wire [0:0]S_AXI_3_AWREADY;
  wire [2:0]S_AXI_3_AWSIZE;
  wire [0:0]S_AXI_3_AWVALID;
  wire [0:0]S_AXI_3_BREADY;
  wire [1:0]S_AXI_3_BRESP;
  wire [0:0]S_AXI_3_BVALID;
  wire [255:0]S_AXI_3_RDATA;
  wire [0:0]S_AXI_3_RLAST;
  wire [0:0]S_AXI_3_RREADY;
  wire [1:0]S_AXI_3_RRESP;
  wire [0:0]S_AXI_3_RVALID;
  wire [255:0]S_AXI_3_WDATA;
  wire [0:0]S_AXI_3_WLAST;
  wire [0:0]S_AXI_3_WREADY;
  wire [31:0]S_AXI_3_WSTRB;
  wire [0:0]S_AXI_3_WVALID;
  wire [39:0]S_AXI_4_ARADDR;
  wire [1:0]S_AXI_4_ARBURST;
  wire [3:0]S_AXI_4_ARCACHE;
  wire [7:0]S_AXI_4_ARLEN;
  wire [0:0]S_AXI_4_ARLOCK;
  wire [2:0]S_AXI_4_ARPROT;
  wire [0:0]S_AXI_4_ARREADY;
  wire [2:0]S_AXI_4_ARSIZE;
  wire [0:0]S_AXI_4_ARVALID;
  wire [39:0]S_AXI_4_AWADDR;
  wire [1:0]S_AXI_4_AWBURST;
  wire [3:0]S_AXI_4_AWCACHE;
  wire [7:0]S_AXI_4_AWLEN;
  wire [0:0]S_AXI_4_AWLOCK;
  wire [2:0]S_AXI_4_AWPROT;
  wire [0:0]S_AXI_4_AWREADY;
  wire [2:0]S_AXI_4_AWSIZE;
  wire [0:0]S_AXI_4_AWVALID;
  wire [0:0]S_AXI_4_BREADY;
  wire [1:0]S_AXI_4_BRESP;
  wire [0:0]S_AXI_4_BVALID;
  wire [255:0]S_AXI_4_RDATA;
  wire [0:0]S_AXI_4_RLAST;
  wire [0:0]S_AXI_4_RREADY;
  wire [1:0]S_AXI_4_RRESP;
  wire [0:0]S_AXI_4_RVALID;
  wire [255:0]S_AXI_4_WDATA;
  wire [0:0]S_AXI_4_WLAST;
  wire [0:0]S_AXI_4_WREADY;
  wire [31:0]S_AXI_4_WSTRB;
  wire [0:0]S_AXI_4_WVALID;
  wire [39:0]S_AXI_5_ARADDR;
  wire [1:0]S_AXI_5_ARBURST;
  wire [3:0]S_AXI_5_ARCACHE;
  wire [7:0]S_AXI_5_ARLEN;
  wire [0:0]S_AXI_5_ARLOCK;
  wire [2:0]S_AXI_5_ARPROT;
  wire [0:0]S_AXI_5_ARREADY;
  wire [2:0]S_AXI_5_ARSIZE;
  wire [0:0]S_AXI_5_ARVALID;
  wire [39:0]S_AXI_5_AWADDR;
  wire [1:0]S_AXI_5_AWBURST;
  wire [3:0]S_AXI_5_AWCACHE;
  wire [7:0]S_AXI_5_AWLEN;
  wire [0:0]S_AXI_5_AWLOCK;
  wire [2:0]S_AXI_5_AWPROT;
  wire [0:0]S_AXI_5_AWREADY;
  wire [2:0]S_AXI_5_AWSIZE;
  wire [0:0]S_AXI_5_AWVALID;
  wire [0:0]S_AXI_5_BREADY;
  wire [1:0]S_AXI_5_BRESP;
  wire [0:0]S_AXI_5_BVALID;
  wire [255:0]S_AXI_5_RDATA;
  wire [0:0]S_AXI_5_RLAST;
  wire [0:0]S_AXI_5_RREADY;
  wire [1:0]S_AXI_5_RRESP;
  wire [0:0]S_AXI_5_RVALID;
  wire [255:0]S_AXI_5_WDATA;
  wire [0:0]S_AXI_5_WLAST;
  wire [0:0]S_AXI_5_WREADY;
  wire [31:0]S_AXI_5_WSTRB;
  wire [0:0]S_AXI_5_WVALID;
  wire [39:0]S_AXI_6_ARADDR;
  wire [1:0]S_AXI_6_ARBURST;
  wire [3:0]S_AXI_6_ARCACHE;
  wire [7:0]S_AXI_6_ARLEN;
  wire [0:0]S_AXI_6_ARLOCK;
  wire [2:0]S_AXI_6_ARPROT;
  wire [0:0]S_AXI_6_ARREADY;
  wire [2:0]S_AXI_6_ARSIZE;
  wire [0:0]S_AXI_6_ARVALID;
  wire [39:0]S_AXI_6_AWADDR;
  wire [1:0]S_AXI_6_AWBURST;
  wire [3:0]S_AXI_6_AWCACHE;
  wire [7:0]S_AXI_6_AWLEN;
  wire [0:0]S_AXI_6_AWLOCK;
  wire [2:0]S_AXI_6_AWPROT;
  wire [0:0]S_AXI_6_AWREADY;
  wire [2:0]S_AXI_6_AWSIZE;
  wire [0:0]S_AXI_6_AWVALID;
  wire [0:0]S_AXI_6_BREADY;
  wire [1:0]S_AXI_6_BRESP;
  wire [0:0]S_AXI_6_BVALID;
  wire [255:0]S_AXI_6_RDATA;
  wire [0:0]S_AXI_6_RLAST;
  wire [0:0]S_AXI_6_RREADY;
  wire [1:0]S_AXI_6_RRESP;
  wire [0:0]S_AXI_6_RVALID;
  wire [255:0]S_AXI_6_WDATA;
  wire [0:0]S_AXI_6_WLAST;
  wire [0:0]S_AXI_6_WREADY;
  wire [31:0]S_AXI_6_WSTRB;
  wire [0:0]S_AXI_6_WVALID;
  wire [39:0]S_AXI_7_ARADDR;
  wire [1:0]S_AXI_7_ARBURST;
  wire [3:0]S_AXI_7_ARCACHE;
  wire [7:0]S_AXI_7_ARLEN;
  wire [0:0]S_AXI_7_ARLOCK;
  wire [2:0]S_AXI_7_ARPROT;
  wire [0:0]S_AXI_7_ARREADY;
  wire [2:0]S_AXI_7_ARSIZE;
  wire [0:0]S_AXI_7_ARVALID;
  wire [39:0]S_AXI_7_AWADDR;
  wire [1:0]S_AXI_7_AWBURST;
  wire [3:0]S_AXI_7_AWCACHE;
  wire [7:0]S_AXI_7_AWLEN;
  wire [0:0]S_AXI_7_AWLOCK;
  wire [2:0]S_AXI_7_AWPROT;
  wire [0:0]S_AXI_7_AWREADY;
  wire [2:0]S_AXI_7_AWSIZE;
  wire [0:0]S_AXI_7_AWVALID;
  wire [0:0]S_AXI_7_BREADY;
  wire [1:0]S_AXI_7_BRESP;
  wire [0:0]S_AXI_7_BVALID;
  wire [255:0]S_AXI_7_RDATA;
  wire [0:0]S_AXI_7_RLAST;
  wire [0:0]S_AXI_7_RREADY;
  wire [1:0]S_AXI_7_RRESP;
  wire [0:0]S_AXI_7_RVALID;
  wire [255:0]S_AXI_7_WDATA;
  wire [0:0]S_AXI_7_WLAST;
  wire [0:0]S_AXI_7_WREADY;
  wire [31:0]S_AXI_7_WSTRB;
  wire [0:0]S_AXI_7_WVALID;
  wire [39:0]S_AXI_8_ARADDR;
  wire [1:0]S_AXI_8_ARBURST;
  wire [3:0]S_AXI_8_ARCACHE;
  wire [7:0]S_AXI_8_ARLEN;
  wire [0:0]S_AXI_8_ARLOCK;
  wire [2:0]S_AXI_8_ARPROT;
  wire [0:0]S_AXI_8_ARREADY;
  wire [2:0]S_AXI_8_ARSIZE;
  wire [0:0]S_AXI_8_ARVALID;
  wire [39:0]S_AXI_8_AWADDR;
  wire [1:0]S_AXI_8_AWBURST;
  wire [3:0]S_AXI_8_AWCACHE;
  wire [7:0]S_AXI_8_AWLEN;
  wire [0:0]S_AXI_8_AWLOCK;
  wire [2:0]S_AXI_8_AWPROT;
  wire [0:0]S_AXI_8_AWREADY;
  wire [2:0]S_AXI_8_AWSIZE;
  wire [0:0]S_AXI_8_AWVALID;
  wire [0:0]S_AXI_8_BREADY;
  wire [1:0]S_AXI_8_BRESP;
  wire [0:0]S_AXI_8_BVALID;
  wire [255:0]S_AXI_8_RDATA;
  wire [0:0]S_AXI_8_RLAST;
  wire [0:0]S_AXI_8_RREADY;
  wire [1:0]S_AXI_8_RRESP;
  wire [0:0]S_AXI_8_RVALID;
  wire [255:0]S_AXI_8_WDATA;
  wire [0:0]S_AXI_8_WLAST;
  wire [0:0]S_AXI_8_WREADY;
  wire [31:0]S_AXI_8_WSTRB;
  wire [0:0]S_AXI_8_WVALID;
  wire adc0_clk_0_1_CLK_N;
  wire adc0_clk_0_1_CLK_P;
  wire adc1_clk_0_1_CLK_N;
  wire adc1_clk_0_1_CLK_P;
  wire adc2_clk_0_1_CLK_N;
  wire adc2_clk_0_1_CLK_P;
  wire adc3_clk_0_1_CLK_N;
  wire adc3_clk_0_1_CLK_P;
  wire [127:0]adc_axis_out_TDATA;
  wire adc_axis_out_TREADY;
  wire adc_axis_out_TVALID;
  (* CONN_BUS_INFO = "adc_cap_in xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [255:0]adc_cap_in_TDATA;
  (* CONN_BUS_INFO = "adc_cap_in xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire adc_cap_in_TREADY;
  (* CONN_BUS_INFO = "adc_cap_in xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire adc_cap_in_TVALID;
  wire [0:0]axi_gpio_1_gpio_io_o;
  wire [5:0]axi_gpio_dac_gpio2_io_o;
  wire [16:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_ARCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_ARLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_ARPROT;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_ARSIZE;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [16:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI_AWCACHE;
  wire [7:0]axi_interconnect_0_M00_AXI_AWLEN;
  wire [0:0]axi_interconnect_0_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI_AWPROT;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI_AWSIZE;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [255:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RLAST;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [255:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WLAST;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [31:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [8:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [8:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [39:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [39:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [127:0]axis_broadcaster_0_M00_AXIS_TDATA;
  wire [0:0]axis_broadcaster_0_M00_AXIS_TVALID;
  wire [255:128]axis_broadcaster_0_M01_AXIS_TDATA;
  wire [1:1]axis_broadcaster_0_M01_AXIS_TVALID;
  wire [383:256]axis_broadcaster_0_M02_AXIS_TDATA;
  wire [2:2]axis_broadcaster_0_M02_AXIS_TVALID;
  wire [511:384]axis_broadcaster_0_M03_AXIS_TDATA;
  wire [3:3]axis_broadcaster_0_M03_AXIS_TVALID;
  wire [639:512]axis_broadcaster_0_M04_AXIS_TDATA;
  wire [4:4]axis_broadcaster_0_M04_AXIS_TVALID;
  wire [767:640]axis_broadcaster_0_M05_AXIS_TDATA;
  wire [5:5]axis_broadcaster_0_M05_AXIS_TVALID;
  wire [895:768]axis_broadcaster_0_M06_AXIS_TDATA;
  wire [6:6]axis_broadcaster_0_M06_AXIS_TVALID;
  wire [1023:896]axis_broadcaster_0_M07_AXIS_TDATA;
  wire [7:7]axis_broadcaster_0_M07_AXIS_TVALID;
  wire clk_wiz_0_locked;
  wire clk_wiz_axis_clk_out2;
  wire dac0_clk_0_1_CLK_N;
  wire dac0_clk_0_1_CLK_P;
  wire dac1_clk_0_1_CLK_N;
  wire dac1_clk_0_1_CLK_P;
  wire [127:0]dac_axis_in_TDATA;
  wire dac_axis_in_TVALID;
  (* CONN_BUS_INFO = "dac_play_out xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [255:0]dac_play_out_TDATA;
  (* CONN_BUS_INFO = "dac_play_out xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire dac_play_out_TREADY;
  (* CONN_BUS_INFO = "dac_play_out xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire dac_play_out_TVALID;
  wire pl_sysref_0_1_CLK_N;
  wire pl_sysref_0_1_CLK_P;
  wire pl_sysref_0_user_sysref_adc;
  wire pl_sysref_0_user_sysref_dac;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [17:0]ps8_0_axi_periph_M00_AXI_ARADDR;
  wire ps8_0_axi_periph_M00_AXI_ARREADY;
  wire ps8_0_axi_periph_M00_AXI_ARVALID;
  wire [17:0]ps8_0_axi_periph_M00_AXI_AWADDR;
  wire ps8_0_axi_periph_M00_AXI_AWREADY;
  wire ps8_0_axi_periph_M00_AXI_AWVALID;
  wire ps8_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_BRESP;
  wire ps8_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_RDATA;
  wire ps8_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]ps8_0_axi_periph_M00_AXI_RRESP;
  wire ps8_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]ps8_0_axi_periph_M00_AXI_WDATA;
  wire ps8_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]ps8_0_axi_periph_M00_AXI_WSTRB;
  wire ps8_0_axi_periph_M00_AXI_WVALID;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire startup_0_CFGMCLK_RAW;
  wire sysref_in_0_1_diff_n;
  wire sysref_in_0_1_diff_p;
  wire [0:0]trig_cap;
  wire [127:0]usp_rf_data_converter_0_m20_axis_TDATA;
  wire usp_rf_data_converter_0_m20_axis_TREADY;
  wire usp_rf_data_converter_0_m20_axis_TVALID;
  wire usp_rf_data_converter_0_vout00_V_N;
  wire usp_rf_data_converter_0_vout00_V_P;
  wire usp_rf_data_converter_0_vout01_V_N;
  wire usp_rf_data_converter_0_vout01_V_P;
  wire usp_rf_data_converter_0_vout02_V_N;
  wire usp_rf_data_converter_0_vout02_V_P;
  wire usp_rf_data_converter_0_vout03_V_N;
  wire usp_rf_data_converter_0_vout03_V_P;
  wire usp_rf_data_converter_0_vout10_V_N;
  wire usp_rf_data_converter_0_vout10_V_P;
  wire usp_rf_data_converter_0_vout11_V_N;
  wire usp_rf_data_converter_0_vout11_V_P;
  wire usp_rf_data_converter_0_vout12_V_N;
  wire usp_rf_data_converter_0_vout12_V_P;
  wire usp_rf_data_converter_0_vout13_V_N;
  wire usp_rf_data_converter_0_vout13_V_P;
  wire vin0_01_0_1_V_N;
  wire vin0_01_0_1_V_P;
  wire vin0_23_0_1_V_N;
  wire vin0_23_0_1_V_P;
  wire vin1_01_0_1_V_N;
  wire vin1_01_0_1_V_P;
  wire vin1_23_0_1_V_N;
  wire vin1_23_0_1_V_P;
  wire vin2_01_0_1_V_N;
  wire vin2_01_0_1_V_P;
  wire vin2_23_0_1_V_N;
  wire vin2_23_0_1_V_P;
  wire vin3_01_0_1_V_N;
  wire vin3_01_0_1_V_P;
  wire vin3_23_0_1_V_N;
  wire vin3_23_0_1_V_P;
  wire [0:0]xlslice_0_Dout;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
  wire [31:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID;
  wire [39:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID;
  wire [7:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT;
  wire [3:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY;
  wire [2:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY;
  wire [1:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID;
  wire [127:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY;
  wire [15:0]zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB;
  wire zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign CLK_IN_D_0_1_CLK_N = CLK_IN_D_0_clk_n;
  assign CLK_IN_D_0_1_CLK_P = CLK_IN_D_0_clk_p;
  assign adc0_clk_0_1_CLK_N = adc0_clk_0_clk_n;
  assign adc0_clk_0_1_CLK_P = adc0_clk_0_clk_p;
  assign adc1_clk_0_1_CLK_N = adc1_clk_0_clk_n;
  assign adc1_clk_0_1_CLK_P = adc1_clk_0_clk_p;
  assign adc2_clk_0_1_CLK_N = adc2_clk_0_clk_n;
  assign adc2_clk_0_1_CLK_P = adc2_clk_0_clk_p;
  assign adc3_clk_0_1_CLK_N = adc3_clk_0_clk_n;
  assign adc3_clk_0_1_CLK_P = adc3_clk_0_clk_p;
  assign dac0_clk_0_1_CLK_N = dac0_clk_0_clk_n;
  assign dac0_clk_0_1_CLK_P = dac0_clk_0_clk_p;
  assign dac1_clk_0_1_CLK_N = dac1_clk_0_clk_n;
  assign dac1_clk_0_1_CLK_P = dac1_clk_0_clk_p;
  assign pl_sysref_0_1_CLK_N = pl_sysref_0_clk_n;
  assign pl_sysref_0_1_CLK_P = pl_sysref_0_clk_p;
  assign sysref_in_0_1_diff_n = sysref_in_0_diff_n;
  assign sysref_in_0_1_diff_p = sysref_in_0_diff_p;
  assign vin0_01_0_1_V_N = vin0_01_0_v_n;
  assign vin0_01_0_1_V_P = vin0_01_0_v_p;
  assign vin0_23_0_1_V_N = vin0_23_0_v_n;
  assign vin0_23_0_1_V_P = vin0_23_0_v_p;
  assign vin1_01_0_1_V_N = vin1_01_0_v_n;
  assign vin1_01_0_1_V_P = vin1_01_0_v_p;
  assign vin1_23_0_1_V_N = vin1_23_0_v_n;
  assign vin1_23_0_1_V_P = vin1_23_0_v_p;
  assign vin2_01_0_1_V_N = vin2_01_0_v_n;
  assign vin2_01_0_1_V_P = vin2_01_0_v_p;
  assign vin2_23_0_1_V_N = vin2_23_0_v_n;
  assign vin2_23_0_1_V_P = vin2_23_0_v_p;
  assign vin3_01_0_1_V_N = vin3_01_0_v_n;
  assign vin3_01_0_1_V_P = vin3_01_0_v_p;
  assign vin3_23_0_1_V_N = vin3_23_0_v_n;
  assign vin3_23_0_1_V_P = vin3_23_0_v_p;
  assign vout00_0_v_n = usp_rf_data_converter_0_vout00_V_N;
  assign vout00_0_v_p = usp_rf_data_converter_0_vout00_V_P;
  assign vout01_0_v_n = usp_rf_data_converter_0_vout01_V_N;
  assign vout01_0_v_p = usp_rf_data_converter_0_vout01_V_P;
  assign vout02_0_v_n = usp_rf_data_converter_0_vout02_V_N;
  assign vout02_0_v_p = usp_rf_data_converter_0_vout02_V_P;
  assign vout03_0_v_n = usp_rf_data_converter_0_vout03_V_N;
  assign vout03_0_v_p = usp_rf_data_converter_0_vout03_V_P;
  assign vout10_0_v_n = usp_rf_data_converter_0_vout10_V_N;
  assign vout10_0_v_p = usp_rf_data_converter_0_vout10_V_P;
  assign vout11_0_v_n = usp_rf_data_converter_0_vout11_V_N;
  assign vout11_0_v_p = usp_rf_data_converter_0_vout11_V_P;
  assign vout12_0_v_n = usp_rf_data_converter_0_vout12_V_N;
  assign vout12_0_v_p = usp_rf_data_converter_0_vout12_V_P;
  assign vout13_0_v_n = usp_rf_data_converter_0_vout13_V_N;
  assign vout13_0_v_p = usp_rf_data_converter_0_vout13_V_P;
  adc_hier_0_imp_AY0SMI adc_hier_0
       (.CAP_AXIS_tdata(adc_cap_in_TDATA),
        .CAP_AXIS_tready(adc_cap_in_TREADY),
        .CAP_AXIS_tvalid(adc_cap_in_TVALID),
        .S_AXIS_tdata(adc_axis_out_TDATA),
        .S_AXIS_tready(adc_axis_out_TREADY),
        .S_AXIS_tvalid(adc_axis_out_TVALID),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arburst(S_AXI_1_ARBURST),
        .S_AXI_arcache(S_AXI_1_ARCACHE),
        .S_AXI_arlen(S_AXI_1_ARLEN),
        .S_AXI_arlock(S_AXI_1_ARLOCK),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arsize(S_AXI_1_ARSIZE),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awburst(S_AXI_1_AWBURST),
        .S_AXI_awcache(S_AXI_1_AWCACHE),
        .S_AXI_awlen(S_AXI_1_AWLEN),
        .S_AXI_awlock(S_AXI_1_AWLOCK),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awsize(S_AXI_1_AWSIZE),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rlast(S_AXI_1_RLAST),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wlast(S_AXI_1_WLAST),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_1_imp_DBTL0P adc_hier_1
       (.S_AXIS_tdata(S_AXIS_1_TDATA),
        .S_AXIS_tready(S_AXIS_1_TREADY),
        .S_AXIS_tvalid(S_AXIS_1_TVALID),
        .S_AXI_araddr(S_AXI_2_ARADDR),
        .S_AXI_arburst(S_AXI_2_ARBURST),
        .S_AXI_arcache(S_AXI_2_ARCACHE),
        .S_AXI_arlen(S_AXI_2_ARLEN),
        .S_AXI_arlock(S_AXI_2_ARLOCK),
        .S_AXI_arprot(S_AXI_2_ARPROT),
        .S_AXI_arready(S_AXI_2_ARREADY),
        .S_AXI_arsize(S_AXI_2_ARSIZE),
        .S_AXI_arvalid(S_AXI_2_ARVALID),
        .S_AXI_awaddr(S_AXI_2_AWADDR),
        .S_AXI_awburst(S_AXI_2_AWBURST),
        .S_AXI_awcache(S_AXI_2_AWCACHE),
        .S_AXI_awlen(S_AXI_2_AWLEN),
        .S_AXI_awlock(S_AXI_2_AWLOCK),
        .S_AXI_awprot(S_AXI_2_AWPROT),
        .S_AXI_awready(S_AXI_2_AWREADY),
        .S_AXI_awsize(S_AXI_2_AWSIZE),
        .S_AXI_awvalid(S_AXI_2_AWVALID),
        .S_AXI_bready(S_AXI_2_BREADY),
        .S_AXI_bresp(S_AXI_2_BRESP),
        .S_AXI_bvalid(S_AXI_2_BVALID),
        .S_AXI_rdata(S_AXI_2_RDATA),
        .S_AXI_rlast(S_AXI_2_RLAST),
        .S_AXI_rready(S_AXI_2_RREADY),
        .S_AXI_rresp(S_AXI_2_RRESP),
        .S_AXI_rvalid(S_AXI_2_RVALID),
        .S_AXI_wdata(S_AXI_2_WDATA),
        .S_AXI_wlast(S_AXI_2_WLAST),
        .S_AXI_wready(S_AXI_2_WREADY),
        .S_AXI_wstrb(S_AXI_2_WSTRB),
        .S_AXI_wvalid(S_AXI_2_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_2_imp_2N2E0C adc_hier_2
       (.S_AXIS_tdata(S_AXIS_2_TDATA),
        .S_AXIS_tready(S_AXIS_2_TREADY),
        .S_AXIS_tvalid(S_AXIS_2_TVALID),
        .S_AXI_araddr(S_AXI_3_ARADDR),
        .S_AXI_arburst(S_AXI_3_ARBURST),
        .S_AXI_arcache(S_AXI_3_ARCACHE),
        .S_AXI_arlen(S_AXI_3_ARLEN),
        .S_AXI_arlock(S_AXI_3_ARLOCK),
        .S_AXI_arprot(S_AXI_3_ARPROT),
        .S_AXI_arready(S_AXI_3_ARREADY),
        .S_AXI_arsize(S_AXI_3_ARSIZE),
        .S_AXI_arvalid(S_AXI_3_ARVALID),
        .S_AXI_awaddr(S_AXI_3_AWADDR),
        .S_AXI_awburst(S_AXI_3_AWBURST),
        .S_AXI_awcache(S_AXI_3_AWCACHE),
        .S_AXI_awlen(S_AXI_3_AWLEN),
        .S_AXI_awlock(S_AXI_3_AWLOCK),
        .S_AXI_awprot(S_AXI_3_AWPROT),
        .S_AXI_awready(S_AXI_3_AWREADY),
        .S_AXI_awsize(S_AXI_3_AWSIZE),
        .S_AXI_awvalid(S_AXI_3_AWVALID),
        .S_AXI_bready(S_AXI_3_BREADY),
        .S_AXI_bresp(S_AXI_3_BRESP),
        .S_AXI_bvalid(S_AXI_3_BVALID),
        .S_AXI_rdata(S_AXI_3_RDATA),
        .S_AXI_rlast(S_AXI_3_RLAST),
        .S_AXI_rready(S_AXI_3_RREADY),
        .S_AXI_rresp(S_AXI_3_RRESP),
        .S_AXI_rvalid(S_AXI_3_RVALID),
        .S_AXI_wdata(S_AXI_3_WDATA),
        .S_AXI_wlast(S_AXI_3_WLAST),
        .S_AXI_wready(S_AXI_3_WREADY),
        .S_AXI_wstrb(S_AXI_3_WSTRB),
        .S_AXI_wvalid(S_AXI_3_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_3_imp_8LMKHB adc_hier_3
       (.S_AXIS_tdata(S_AXIS_3_TDATA),
        .S_AXIS_tready(S_AXIS_3_TREADY),
        .S_AXIS_tvalid(S_AXIS_3_TVALID),
        .S_AXI_araddr(S_AXI_4_ARADDR),
        .S_AXI_arburst(S_AXI_4_ARBURST),
        .S_AXI_arcache(S_AXI_4_ARCACHE),
        .S_AXI_arlen(S_AXI_4_ARLEN),
        .S_AXI_arlock(S_AXI_4_ARLOCK),
        .S_AXI_arprot(S_AXI_4_ARPROT),
        .S_AXI_arready(S_AXI_4_ARREADY),
        .S_AXI_arsize(S_AXI_4_ARSIZE),
        .S_AXI_arvalid(S_AXI_4_ARVALID),
        .S_AXI_awaddr(S_AXI_4_AWADDR),
        .S_AXI_awburst(S_AXI_4_AWBURST),
        .S_AXI_awcache(S_AXI_4_AWCACHE),
        .S_AXI_awlen(S_AXI_4_AWLEN),
        .S_AXI_awlock(S_AXI_4_AWLOCK),
        .S_AXI_awprot(S_AXI_4_AWPROT),
        .S_AXI_awready(S_AXI_4_AWREADY),
        .S_AXI_awsize(S_AXI_4_AWSIZE),
        .S_AXI_awvalid(S_AXI_4_AWVALID),
        .S_AXI_bready(S_AXI_4_BREADY),
        .S_AXI_bresp(S_AXI_4_BRESP),
        .S_AXI_bvalid(S_AXI_4_BVALID),
        .S_AXI_rdata(S_AXI_4_RDATA),
        .S_AXI_rlast(S_AXI_4_RLAST),
        .S_AXI_rready(S_AXI_4_RREADY),
        .S_AXI_rresp(S_AXI_4_RRESP),
        .S_AXI_rvalid(S_AXI_4_RVALID),
        .S_AXI_wdata(S_AXI_4_WDATA),
        .S_AXI_wlast(S_AXI_4_WLAST),
        .S_AXI_wready(S_AXI_4_WREADY),
        .S_AXI_wstrb(S_AXI_4_WSTRB),
        .S_AXI_wvalid(S_AXI_4_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_4_imp_Y0SGRQ adc_hier_4
       (.S_AXIS_tdata(usp_rf_data_converter_0_m20_axis_TDATA),
        .S_AXIS_tready(usp_rf_data_converter_0_m20_axis_TREADY),
        .S_AXIS_tvalid(usp_rf_data_converter_0_m20_axis_TVALID),
        .S_AXI_araddr(S_AXI_5_ARADDR),
        .S_AXI_arburst(S_AXI_5_ARBURST),
        .S_AXI_arcache(S_AXI_5_ARCACHE),
        .S_AXI_arlen(S_AXI_5_ARLEN),
        .S_AXI_arlock(S_AXI_5_ARLOCK),
        .S_AXI_arprot(S_AXI_5_ARPROT),
        .S_AXI_arready(S_AXI_5_ARREADY),
        .S_AXI_arsize(S_AXI_5_ARSIZE),
        .S_AXI_arvalid(S_AXI_5_ARVALID),
        .S_AXI_awaddr(S_AXI_5_AWADDR),
        .S_AXI_awburst(S_AXI_5_AWBURST),
        .S_AXI_awcache(S_AXI_5_AWCACHE),
        .S_AXI_awlen(S_AXI_5_AWLEN),
        .S_AXI_awlock(S_AXI_5_AWLOCK),
        .S_AXI_awprot(S_AXI_5_AWPROT),
        .S_AXI_awready(S_AXI_5_AWREADY),
        .S_AXI_awsize(S_AXI_5_AWSIZE),
        .S_AXI_awvalid(S_AXI_5_AWVALID),
        .S_AXI_bready(S_AXI_5_BREADY),
        .S_AXI_bresp(S_AXI_5_BRESP),
        .S_AXI_bvalid(S_AXI_5_BVALID),
        .S_AXI_rdata(S_AXI_5_RDATA),
        .S_AXI_rlast(S_AXI_5_RLAST),
        .S_AXI_rready(S_AXI_5_RREADY),
        .S_AXI_rresp(S_AXI_5_RRESP),
        .S_AXI_rvalid(S_AXI_5_RVALID),
        .S_AXI_wdata(S_AXI_5_WDATA),
        .S_AXI_wlast(S_AXI_5_WLAST),
        .S_AXI_wready(S_AXI_5_WREADY),
        .S_AXI_wstrb(S_AXI_5_WSTRB),
        .S_AXI_wvalid(S_AXI_5_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_5_imp_UHPL0L adc_hier_5
       (.S_AXIS_tdata(S_AXIS_4_TDATA),
        .S_AXIS_tready(S_AXIS_4_TREADY),
        .S_AXIS_tvalid(S_AXIS_4_TVALID),
        .S_AXI_araddr(S_AXI_6_ARADDR),
        .S_AXI_arburst(S_AXI_6_ARBURST),
        .S_AXI_arcache(S_AXI_6_ARCACHE),
        .S_AXI_arlen(S_AXI_6_ARLEN),
        .S_AXI_arlock(S_AXI_6_ARLOCK),
        .S_AXI_arprot(S_AXI_6_ARPROT),
        .S_AXI_arready(S_AXI_6_ARREADY),
        .S_AXI_arsize(S_AXI_6_ARSIZE),
        .S_AXI_arvalid(S_AXI_6_ARVALID),
        .S_AXI_awaddr(S_AXI_6_AWADDR),
        .S_AXI_awburst(S_AXI_6_AWBURST),
        .S_AXI_awcache(S_AXI_6_AWCACHE),
        .S_AXI_awlen(S_AXI_6_AWLEN),
        .S_AXI_awlock(S_AXI_6_AWLOCK),
        .S_AXI_awprot(S_AXI_6_AWPROT),
        .S_AXI_awready(S_AXI_6_AWREADY),
        .S_AXI_awsize(S_AXI_6_AWSIZE),
        .S_AXI_awvalid(S_AXI_6_AWVALID),
        .S_AXI_bready(S_AXI_6_BREADY),
        .S_AXI_bresp(S_AXI_6_BRESP),
        .S_AXI_bvalid(S_AXI_6_BVALID),
        .S_AXI_rdata(S_AXI_6_RDATA),
        .S_AXI_rlast(S_AXI_6_RLAST),
        .S_AXI_rready(S_AXI_6_RREADY),
        .S_AXI_rresp(S_AXI_6_RRESP),
        .S_AXI_rvalid(S_AXI_6_RVALID),
        .S_AXI_wdata(S_AXI_6_WDATA),
        .S_AXI_wlast(S_AXI_6_WLAST),
        .S_AXI_wready(S_AXI_6_WREADY),
        .S_AXI_wstrb(S_AXI_6_WSTRB),
        .S_AXI_wvalid(S_AXI_6_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_6_imp_NF4674 adc_hier_6
       (.S_AXIS_tdata(S_AXIS_5_TDATA),
        .S_AXIS_tready(S_AXIS_5_TREADY),
        .S_AXIS_tvalid(S_AXIS_5_TVALID),
        .S_AXI_araddr(S_AXI_7_ARADDR),
        .S_AXI_arburst(S_AXI_7_ARBURST),
        .S_AXI_arcache(S_AXI_7_ARCACHE),
        .S_AXI_arlen(S_AXI_7_ARLEN),
        .S_AXI_arlock(S_AXI_7_ARLOCK),
        .S_AXI_arprot(S_AXI_7_ARPROT),
        .S_AXI_arready(S_AXI_7_ARREADY),
        .S_AXI_arsize(S_AXI_7_ARSIZE),
        .S_AXI_arvalid(S_AXI_7_ARVALID),
        .S_AXI_awaddr(S_AXI_7_AWADDR),
        .S_AXI_awburst(S_AXI_7_AWBURST),
        .S_AXI_awcache(S_AXI_7_AWCACHE),
        .S_AXI_awlen(S_AXI_7_AWLEN),
        .S_AXI_awlock(S_AXI_7_AWLOCK),
        .S_AXI_awprot(S_AXI_7_AWPROT),
        .S_AXI_awready(S_AXI_7_AWREADY),
        .S_AXI_awsize(S_AXI_7_AWSIZE),
        .S_AXI_awvalid(S_AXI_7_AWVALID),
        .S_AXI_bready(S_AXI_7_BREADY),
        .S_AXI_bresp(S_AXI_7_BRESP),
        .S_AXI_bvalid(S_AXI_7_BVALID),
        .S_AXI_rdata(S_AXI_7_RDATA),
        .S_AXI_rlast(S_AXI_7_RLAST),
        .S_AXI_rready(S_AXI_7_RREADY),
        .S_AXI_rresp(S_AXI_7_RRESP),
        .S_AXI_rvalid(S_AXI_7_RVALID),
        .S_AXI_wdata(S_AXI_7_WDATA),
        .S_AXI_wlast(S_AXI_7_WLAST),
        .S_AXI_wready(S_AXI_7_WREADY),
        .S_AXI_wstrb(S_AXI_7_WSTRB),
        .S_AXI_wvalid(S_AXI_7_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  adc_hier_7_imp_ILZSBN adc_hier_7
       (.S_AXIS_tdata(S_AXIS_6_TDATA),
        .S_AXIS_tready(S_AXIS_6_TREADY),
        .S_AXIS_tvalid(S_AXIS_6_TVALID),
        .S_AXI_araddr(S_AXI_8_ARADDR),
        .S_AXI_arburst(S_AXI_8_ARBURST),
        .S_AXI_arcache(S_AXI_8_ARCACHE),
        .S_AXI_arlen(S_AXI_8_ARLEN),
        .S_AXI_arlock(S_AXI_8_ARLOCK),
        .S_AXI_arprot(S_AXI_8_ARPROT),
        .S_AXI_arready(S_AXI_8_ARREADY),
        .S_AXI_arsize(S_AXI_8_ARSIZE),
        .S_AXI_arvalid(S_AXI_8_ARVALID),
        .S_AXI_awaddr(S_AXI_8_AWADDR),
        .S_AXI_awburst(S_AXI_8_AWBURST),
        .S_AXI_awcache(S_AXI_8_AWCACHE),
        .S_AXI_awlen(S_AXI_8_AWLEN),
        .S_AXI_awlock(S_AXI_8_AWLOCK),
        .S_AXI_awprot(S_AXI_8_AWPROT),
        .S_AXI_awready(S_AXI_8_AWREADY),
        .S_AXI_awsize(S_AXI_8_AWSIZE),
        .S_AXI_awvalid(S_AXI_8_AWVALID),
        .S_AXI_bready(S_AXI_8_BREADY),
        .S_AXI_bresp(S_AXI_8_BRESP),
        .S_AXI_bvalid(S_AXI_8_BVALID),
        .S_AXI_rdata(S_AXI_8_RDATA),
        .S_AXI_rlast(S_AXI_8_RLAST),
        .S_AXI_rready(S_AXI_8_RREADY),
        .S_AXI_rresp(S_AXI_8_RRESP),
        .S_AXI_rvalid(S_AXI_8_RVALID),
        .S_AXI_wdata(S_AXI_8_WDATA),
        .S_AXI_wlast(S_AXI_8_WLAST),
        .S_AXI_wready(S_AXI_8_WREADY),
        .S_AXI_wstrb(S_AXI_8_WSTRB),
        .S_AXI_wvalid(S_AXI_8_WVALID),
        .adc_clk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .clk_div2(clk_wiz_axis_clk_out2),
        .trig_cap(trig_cap));
  design_1_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i(1'b0),
        .gpio_io_o(trig_cap),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID));
  design_1_axi_gpio_1_0 axi_gpio_dac
       (.gpio2_io_o(axi_gpio_dac_gpio2_io_o),
        .gpio_io_o(axi_gpio_1_gpio_io_o),
        .s_axi_aclk(clk_wiz_axis_clk_out2),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  design_1_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clk_wiz_axis_clk_out2),
        .ARESETN(ARESETN_1),
        .M00_ACLK(clk_wiz_axis_clk_out2),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_axis_clk_out2),
        .M01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_axis_clk_out2),
        .M02_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_axis_clk_out2),
        .M03_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M03_AXI_araddr(S_AXI_1_ARADDR),
        .M03_AXI_arburst(S_AXI_1_ARBURST),
        .M03_AXI_arcache(S_AXI_1_ARCACHE),
        .M03_AXI_arlen(S_AXI_1_ARLEN),
        .M03_AXI_arlock(S_AXI_1_ARLOCK),
        .M03_AXI_arprot(S_AXI_1_ARPROT),
        .M03_AXI_arready(S_AXI_1_ARREADY),
        .M03_AXI_arsize(S_AXI_1_ARSIZE),
        .M03_AXI_arvalid(S_AXI_1_ARVALID),
        .M03_AXI_awaddr(S_AXI_1_AWADDR),
        .M03_AXI_awburst(S_AXI_1_AWBURST),
        .M03_AXI_awcache(S_AXI_1_AWCACHE),
        .M03_AXI_awlen(S_AXI_1_AWLEN),
        .M03_AXI_awlock(S_AXI_1_AWLOCK),
        .M03_AXI_awprot(S_AXI_1_AWPROT),
        .M03_AXI_awready(S_AXI_1_AWREADY),
        .M03_AXI_awsize(S_AXI_1_AWSIZE),
        .M03_AXI_awvalid(S_AXI_1_AWVALID),
        .M03_AXI_bready(S_AXI_1_BREADY),
        .M03_AXI_bresp(S_AXI_1_BRESP),
        .M03_AXI_bvalid(S_AXI_1_BVALID),
        .M03_AXI_rdata(S_AXI_1_RDATA),
        .M03_AXI_rlast(S_AXI_1_RLAST),
        .M03_AXI_rready(S_AXI_1_RREADY),
        .M03_AXI_rresp(S_AXI_1_RRESP),
        .M03_AXI_rvalid(S_AXI_1_RVALID),
        .M03_AXI_wdata(S_AXI_1_WDATA),
        .M03_AXI_wlast(S_AXI_1_WLAST),
        .M03_AXI_wready(S_AXI_1_WREADY),
        .M03_AXI_wstrb(S_AXI_1_WSTRB),
        .M03_AXI_wvalid(S_AXI_1_WVALID),
        .M04_ACLK(clk_wiz_axis_clk_out2),
        .M04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M04_AXI_araddr(S_AXI_2_ARADDR),
        .M04_AXI_arburst(S_AXI_2_ARBURST),
        .M04_AXI_arcache(S_AXI_2_ARCACHE),
        .M04_AXI_arlen(S_AXI_2_ARLEN),
        .M04_AXI_arlock(S_AXI_2_ARLOCK),
        .M04_AXI_arprot(S_AXI_2_ARPROT),
        .M04_AXI_arready(S_AXI_2_ARREADY),
        .M04_AXI_arsize(S_AXI_2_ARSIZE),
        .M04_AXI_arvalid(S_AXI_2_ARVALID),
        .M04_AXI_awaddr(S_AXI_2_AWADDR),
        .M04_AXI_awburst(S_AXI_2_AWBURST),
        .M04_AXI_awcache(S_AXI_2_AWCACHE),
        .M04_AXI_awlen(S_AXI_2_AWLEN),
        .M04_AXI_awlock(S_AXI_2_AWLOCK),
        .M04_AXI_awprot(S_AXI_2_AWPROT),
        .M04_AXI_awready(S_AXI_2_AWREADY),
        .M04_AXI_awsize(S_AXI_2_AWSIZE),
        .M04_AXI_awvalid(S_AXI_2_AWVALID),
        .M04_AXI_bready(S_AXI_2_BREADY),
        .M04_AXI_bresp(S_AXI_2_BRESP),
        .M04_AXI_bvalid(S_AXI_2_BVALID),
        .M04_AXI_rdata(S_AXI_2_RDATA),
        .M04_AXI_rlast(S_AXI_2_RLAST),
        .M04_AXI_rready(S_AXI_2_RREADY),
        .M04_AXI_rresp(S_AXI_2_RRESP),
        .M04_AXI_rvalid(S_AXI_2_RVALID),
        .M04_AXI_wdata(S_AXI_2_WDATA),
        .M04_AXI_wlast(S_AXI_2_WLAST),
        .M04_AXI_wready(S_AXI_2_WREADY),
        .M04_AXI_wstrb(S_AXI_2_WSTRB),
        .M04_AXI_wvalid(S_AXI_2_WVALID),
        .M05_ACLK(clk_wiz_axis_clk_out2),
        .M05_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M05_AXI_araddr(S_AXI_3_ARADDR),
        .M05_AXI_arburst(S_AXI_3_ARBURST),
        .M05_AXI_arcache(S_AXI_3_ARCACHE),
        .M05_AXI_arlen(S_AXI_3_ARLEN),
        .M05_AXI_arlock(S_AXI_3_ARLOCK),
        .M05_AXI_arprot(S_AXI_3_ARPROT),
        .M05_AXI_arready(S_AXI_3_ARREADY),
        .M05_AXI_arsize(S_AXI_3_ARSIZE),
        .M05_AXI_arvalid(S_AXI_3_ARVALID),
        .M05_AXI_awaddr(S_AXI_3_AWADDR),
        .M05_AXI_awburst(S_AXI_3_AWBURST),
        .M05_AXI_awcache(S_AXI_3_AWCACHE),
        .M05_AXI_awlen(S_AXI_3_AWLEN),
        .M05_AXI_awlock(S_AXI_3_AWLOCK),
        .M05_AXI_awprot(S_AXI_3_AWPROT),
        .M05_AXI_awready(S_AXI_3_AWREADY),
        .M05_AXI_awsize(S_AXI_3_AWSIZE),
        .M05_AXI_awvalid(S_AXI_3_AWVALID),
        .M05_AXI_bready(S_AXI_3_BREADY),
        .M05_AXI_bresp(S_AXI_3_BRESP),
        .M05_AXI_bvalid(S_AXI_3_BVALID),
        .M05_AXI_rdata(S_AXI_3_RDATA),
        .M05_AXI_rlast(S_AXI_3_RLAST),
        .M05_AXI_rready(S_AXI_3_RREADY),
        .M05_AXI_rresp(S_AXI_3_RRESP),
        .M05_AXI_rvalid(S_AXI_3_RVALID),
        .M05_AXI_wdata(S_AXI_3_WDATA),
        .M05_AXI_wlast(S_AXI_3_WLAST),
        .M05_AXI_wready(S_AXI_3_WREADY),
        .M05_AXI_wstrb(S_AXI_3_WSTRB),
        .M05_AXI_wvalid(S_AXI_3_WVALID),
        .M06_ACLK(clk_wiz_axis_clk_out2),
        .M06_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M06_AXI_araddr(S_AXI_4_ARADDR),
        .M06_AXI_arburst(S_AXI_4_ARBURST),
        .M06_AXI_arcache(S_AXI_4_ARCACHE),
        .M06_AXI_arlen(S_AXI_4_ARLEN),
        .M06_AXI_arlock(S_AXI_4_ARLOCK),
        .M06_AXI_arprot(S_AXI_4_ARPROT),
        .M06_AXI_arready(S_AXI_4_ARREADY),
        .M06_AXI_arsize(S_AXI_4_ARSIZE),
        .M06_AXI_arvalid(S_AXI_4_ARVALID),
        .M06_AXI_awaddr(S_AXI_4_AWADDR),
        .M06_AXI_awburst(S_AXI_4_AWBURST),
        .M06_AXI_awcache(S_AXI_4_AWCACHE),
        .M06_AXI_awlen(S_AXI_4_AWLEN),
        .M06_AXI_awlock(S_AXI_4_AWLOCK),
        .M06_AXI_awprot(S_AXI_4_AWPROT),
        .M06_AXI_awready(S_AXI_4_AWREADY),
        .M06_AXI_awsize(S_AXI_4_AWSIZE),
        .M06_AXI_awvalid(S_AXI_4_AWVALID),
        .M06_AXI_bready(S_AXI_4_BREADY),
        .M06_AXI_bresp(S_AXI_4_BRESP),
        .M06_AXI_bvalid(S_AXI_4_BVALID),
        .M06_AXI_rdata(S_AXI_4_RDATA),
        .M06_AXI_rlast(S_AXI_4_RLAST),
        .M06_AXI_rready(S_AXI_4_RREADY),
        .M06_AXI_rresp(S_AXI_4_RRESP),
        .M06_AXI_rvalid(S_AXI_4_RVALID),
        .M06_AXI_wdata(S_AXI_4_WDATA),
        .M06_AXI_wlast(S_AXI_4_WLAST),
        .M06_AXI_wready(S_AXI_4_WREADY),
        .M06_AXI_wstrb(S_AXI_4_WSTRB),
        .M06_AXI_wvalid(S_AXI_4_WVALID),
        .M07_ACLK(clk_wiz_axis_clk_out2),
        .M07_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M07_AXI_araddr(S_AXI_5_ARADDR),
        .M07_AXI_arburst(S_AXI_5_ARBURST),
        .M07_AXI_arcache(S_AXI_5_ARCACHE),
        .M07_AXI_arlen(S_AXI_5_ARLEN),
        .M07_AXI_arlock(S_AXI_5_ARLOCK),
        .M07_AXI_arprot(S_AXI_5_ARPROT),
        .M07_AXI_arready(S_AXI_5_ARREADY),
        .M07_AXI_arsize(S_AXI_5_ARSIZE),
        .M07_AXI_arvalid(S_AXI_5_ARVALID),
        .M07_AXI_awaddr(S_AXI_5_AWADDR),
        .M07_AXI_awburst(S_AXI_5_AWBURST),
        .M07_AXI_awcache(S_AXI_5_AWCACHE),
        .M07_AXI_awlen(S_AXI_5_AWLEN),
        .M07_AXI_awlock(S_AXI_5_AWLOCK),
        .M07_AXI_awprot(S_AXI_5_AWPROT),
        .M07_AXI_awready(S_AXI_5_AWREADY),
        .M07_AXI_awsize(S_AXI_5_AWSIZE),
        .M07_AXI_awvalid(S_AXI_5_AWVALID),
        .M07_AXI_bready(S_AXI_5_BREADY),
        .M07_AXI_bresp(S_AXI_5_BRESP),
        .M07_AXI_bvalid(S_AXI_5_BVALID),
        .M07_AXI_rdata(S_AXI_5_RDATA),
        .M07_AXI_rlast(S_AXI_5_RLAST),
        .M07_AXI_rready(S_AXI_5_RREADY),
        .M07_AXI_rresp(S_AXI_5_RRESP),
        .M07_AXI_rvalid(S_AXI_5_RVALID),
        .M07_AXI_wdata(S_AXI_5_WDATA),
        .M07_AXI_wlast(S_AXI_5_WLAST),
        .M07_AXI_wready(S_AXI_5_WREADY),
        .M07_AXI_wstrb(S_AXI_5_WSTRB),
        .M07_AXI_wvalid(S_AXI_5_WVALID),
        .M08_ACLK(clk_wiz_axis_clk_out2),
        .M08_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M08_AXI_araddr(S_AXI_6_ARADDR),
        .M08_AXI_arburst(S_AXI_6_ARBURST),
        .M08_AXI_arcache(S_AXI_6_ARCACHE),
        .M08_AXI_arlen(S_AXI_6_ARLEN),
        .M08_AXI_arlock(S_AXI_6_ARLOCK),
        .M08_AXI_arprot(S_AXI_6_ARPROT),
        .M08_AXI_arready(S_AXI_6_ARREADY),
        .M08_AXI_arsize(S_AXI_6_ARSIZE),
        .M08_AXI_arvalid(S_AXI_6_ARVALID),
        .M08_AXI_awaddr(S_AXI_6_AWADDR),
        .M08_AXI_awburst(S_AXI_6_AWBURST),
        .M08_AXI_awcache(S_AXI_6_AWCACHE),
        .M08_AXI_awlen(S_AXI_6_AWLEN),
        .M08_AXI_awlock(S_AXI_6_AWLOCK),
        .M08_AXI_awprot(S_AXI_6_AWPROT),
        .M08_AXI_awready(S_AXI_6_AWREADY),
        .M08_AXI_awsize(S_AXI_6_AWSIZE),
        .M08_AXI_awvalid(S_AXI_6_AWVALID),
        .M08_AXI_bready(S_AXI_6_BREADY),
        .M08_AXI_bresp(S_AXI_6_BRESP),
        .M08_AXI_bvalid(S_AXI_6_BVALID),
        .M08_AXI_rdata(S_AXI_6_RDATA),
        .M08_AXI_rlast(S_AXI_6_RLAST),
        .M08_AXI_rready(S_AXI_6_RREADY),
        .M08_AXI_rresp(S_AXI_6_RRESP),
        .M08_AXI_rvalid(S_AXI_6_RVALID),
        .M08_AXI_wdata(S_AXI_6_WDATA),
        .M08_AXI_wlast(S_AXI_6_WLAST),
        .M08_AXI_wready(S_AXI_6_WREADY),
        .M08_AXI_wstrb(S_AXI_6_WSTRB),
        .M08_AXI_wvalid(S_AXI_6_WVALID),
        .M09_ACLK(clk_wiz_axis_clk_out2),
        .M09_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M09_AXI_araddr(S_AXI_7_ARADDR),
        .M09_AXI_arburst(S_AXI_7_ARBURST),
        .M09_AXI_arcache(S_AXI_7_ARCACHE),
        .M09_AXI_arlen(S_AXI_7_ARLEN),
        .M09_AXI_arlock(S_AXI_7_ARLOCK),
        .M09_AXI_arprot(S_AXI_7_ARPROT),
        .M09_AXI_arready(S_AXI_7_ARREADY),
        .M09_AXI_arsize(S_AXI_7_ARSIZE),
        .M09_AXI_arvalid(S_AXI_7_ARVALID),
        .M09_AXI_awaddr(S_AXI_7_AWADDR),
        .M09_AXI_awburst(S_AXI_7_AWBURST),
        .M09_AXI_awcache(S_AXI_7_AWCACHE),
        .M09_AXI_awlen(S_AXI_7_AWLEN),
        .M09_AXI_awlock(S_AXI_7_AWLOCK),
        .M09_AXI_awprot(S_AXI_7_AWPROT),
        .M09_AXI_awready(S_AXI_7_AWREADY),
        .M09_AXI_awsize(S_AXI_7_AWSIZE),
        .M09_AXI_awvalid(S_AXI_7_AWVALID),
        .M09_AXI_bready(S_AXI_7_BREADY),
        .M09_AXI_bresp(S_AXI_7_BRESP),
        .M09_AXI_bvalid(S_AXI_7_BVALID),
        .M09_AXI_rdata(S_AXI_7_RDATA),
        .M09_AXI_rlast(S_AXI_7_RLAST),
        .M09_AXI_rready(S_AXI_7_RREADY),
        .M09_AXI_rresp(S_AXI_7_RRESP),
        .M09_AXI_rvalid(S_AXI_7_RVALID),
        .M09_AXI_wdata(S_AXI_7_WDATA),
        .M09_AXI_wlast(S_AXI_7_WLAST),
        .M09_AXI_wready(S_AXI_7_WREADY),
        .M09_AXI_wstrb(S_AXI_7_WSTRB),
        .M09_AXI_wvalid(S_AXI_7_WVALID),
        .M10_ACLK(clk_wiz_axis_clk_out2),
        .M10_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M10_AXI_araddr(S_AXI_8_ARADDR),
        .M10_AXI_arburst(S_AXI_8_ARBURST),
        .M10_AXI_arcache(S_AXI_8_ARCACHE),
        .M10_AXI_arlen(S_AXI_8_ARLEN),
        .M10_AXI_arlock(S_AXI_8_ARLOCK),
        .M10_AXI_arprot(S_AXI_8_ARPROT),
        .M10_AXI_arready(S_AXI_8_ARREADY),
        .M10_AXI_arsize(S_AXI_8_ARSIZE),
        .M10_AXI_arvalid(S_AXI_8_ARVALID),
        .M10_AXI_awaddr(S_AXI_8_AWADDR),
        .M10_AXI_awburst(S_AXI_8_AWBURST),
        .M10_AXI_awcache(S_AXI_8_AWCACHE),
        .M10_AXI_awlen(S_AXI_8_AWLEN),
        .M10_AXI_awlock(S_AXI_8_AWLOCK),
        .M10_AXI_awprot(S_AXI_8_AWPROT),
        .M10_AXI_awready(S_AXI_8_AWREADY),
        .M10_AXI_awsize(S_AXI_8_AWSIZE),
        .M10_AXI_awvalid(S_AXI_8_AWVALID),
        .M10_AXI_bready(S_AXI_8_BREADY),
        .M10_AXI_bresp(S_AXI_8_BRESP),
        .M10_AXI_bvalid(S_AXI_8_BVALID),
        .M10_AXI_rdata(S_AXI_8_RDATA),
        .M10_AXI_rlast(S_AXI_8_RLAST),
        .M10_AXI_rready(S_AXI_8_RREADY),
        .M10_AXI_rresp(S_AXI_8_RRESP),
        .M10_AXI_rvalid(S_AXI_8_RVALID),
        .M10_AXI_wdata(S_AXI_8_WDATA),
        .M10_AXI_wlast(S_AXI_8_WLAST),
        .M10_AXI_wready(S_AXI_8_WREADY),
        .M10_AXI_wstrb(S_AXI_8_WSTRB),
        .M10_AXI_wvalid(S_AXI_8_WVALID),
        .S00_ACLK(clk_wiz_axis_clk_out2),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID));
  design_1_axis_broadcaster_0_0 axis_broadcaster_0
       (.aclk(DAC_AXIS_PL_CLK),
        .aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m_axis_tdata({axis_broadcaster_0_M07_AXIS_TDATA,axis_broadcaster_0_M06_AXIS_TDATA,axis_broadcaster_0_M05_AXIS_TDATA,axis_broadcaster_0_M04_AXIS_TDATA,axis_broadcaster_0_M03_AXIS_TDATA,axis_broadcaster_0_M02_AXIS_TDATA,axis_broadcaster_0_M01_AXIS_TDATA,axis_broadcaster_0_M00_AXIS_TDATA}),
        .m_axis_tvalid({axis_broadcaster_0_M07_AXIS_TVALID,axis_broadcaster_0_M06_AXIS_TVALID,axis_broadcaster_0_M05_AXIS_TVALID,axis_broadcaster_0_M04_AXIS_TVALID,axis_broadcaster_0_M03_AXIS_TVALID,axis_broadcaster_0_M02_AXIS_TVALID,axis_broadcaster_0_M01_AXIS_TVALID,axis_broadcaster_0_M00_AXIS_TVALID}),
        .s_axis_tdata(dac_axis_in_TDATA),
        .s_axis_tvalid(dac_axis_in_TVALID));
  design_1_clk_wiz_0_1 clk_wiz_0
       (.clk_in1_n(CLK_IN_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN_D_0_1_CLK_P),
        .clk_out1(DAC_AXIS_PL_CLK),
        .clk_out2(clk_wiz_axis_clk_out2),
        .locked(clk_wiz_0_locked));
  dac_hier_imp_73Y8GY dac_hier
       (.M_AXIS_tdata(dac_axis_in_TDATA),
        .M_AXIS_tvalid(dac_axis_in_TVALID),
        .S_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_M00_AXI_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_M00_AXI_ARCACHE),
        .S_AXI_arlen(axi_interconnect_0_M00_AXI_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_M00_AXI_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_M00_AXI_ARPROT),
        .S_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_M00_AXI_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_M00_AXI_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_M00_AXI_AWCACHE),
        .S_AXI_awlen(axi_interconnect_0_M00_AXI_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_M00_AXI_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_M00_AXI_AWPROT),
        .S_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_M00_AXI_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .S_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .S_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .S_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .S_AXI_rlast(axi_interconnect_0_M00_AXI_RLAST),
        .S_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .S_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .S_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .S_AXI_wlast(axi_interconnect_0_M00_AXI_WLAST),
        .S_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .aclk(DAC_AXIS_PL_CLK),
        .axis_clk(clk_wiz_axis_clk_out2),
        .axis_tdata(dac_play_out_TDATA),
        .axis_tready(dac_play_out_TREADY),
        .axis_tvalid(dac_play_out_TVALID),
        .enable(axi_gpio_1_gpio_io_o),
        .s_axi_aresetn(proc_sys_reset_1_peripheral_aresetn));
  hier_rsts_imp_U2ZZF6 hier_rsts
       (.dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(ARESETN_1),
        .interconnect_aresetn1(ARESETN_2),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .peripheral_aresetn2(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_axis_clk_out2),
        .slowest_sync_clk2(zynq_ultra_ps_e_0_pl_clk0));
  design_1_pl_sysref_0_0 pl_sysref_0
       (.pl_clk(DAC_AXIS_PL_CLK),
        .pl_sysref_n(pl_sysref_0_1_CLK_N),
        .pl_sysref_p(pl_sysref_0_1_CLK_P),
        .selNeg(xlslice_0_Dout),
        .user_sysref_adc(pl_sysref_0_user_sysref_adc),
        .user_sysref_dac(pl_sysref_0_user_sysref_dac));
  design_1_ps8_0_axi_periph_0 ps8_0_axi_periph
       (.ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .ARESETN(ARESETN_2),
        .M00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .M00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .M00_AXI_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(zynq_ultra_ps_e_0_pl_clk0),
        .S00_ARESETN(rst_ps8_0_99M_peripheral_aresetn),
        .S00_AXI_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .S00_AXI_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .S00_AXI_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .S00_AXI_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .S00_AXI_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .S00_AXI_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .S00_AXI_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .S00_AXI_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .S00_AXI_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .S00_AXI_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .S00_AXI_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .S00_AXI_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .S00_AXI_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .S00_AXI_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .S00_AXI_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .S00_AXI_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .S00_AXI_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .S00_AXI_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .S00_AXI_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .S00_AXI_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .S00_AXI_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .S00_AXI_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .S00_AXI_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .S00_AXI_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .S00_AXI_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .S00_AXI_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .S00_AXI_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .S00_AXI_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .S00_AXI_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .S00_AXI_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .S00_AXI_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .S00_AXI_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .S00_AXI_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .S00_AXI_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .S00_AXI_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .S00_AXI_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .S00_AXI_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .S00_AXI_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .S00_AXI_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID));
  design_1_startup_0_0 startup_0
       (.CFGMCLK_RAW(startup_0_CFGMCLK_RAW));
  design_1_system_ila_2_0 system_ila_3
       (.SLOT_0_AXIS_tdata(adc_cap_in_TDATA),
        .SLOT_0_AXIS_tlast(1'b0),
        .SLOT_0_AXIS_tready(adc_cap_in_TREADY),
        .SLOT_0_AXIS_tvalid(adc_cap_in_TVALID),
        .clk(clk_wiz_axis_clk_out2),
        .probe0(trig_cap),
        .resetn(proc_sys_reset_1_peripheral_aresetn));
  design_1_system_ila_1_2 system_ila_4
       (.SLOT_0_AXIS_tdata(dac_play_out_TDATA),
        .SLOT_0_AXIS_tlast(1'b0),
        .SLOT_0_AXIS_tready(dac_play_out_TREADY),
        .SLOT_0_AXIS_tvalid(dac_play_out_TVALID),
        .clk(clk_wiz_axis_clk_out2),
        .resetn(proc_sys_reset_1_peripheral_aresetn));
  design_1_usp_rf_data_converter_0_0 usp_rf_data_converter_0
       (.adc0_clk_n(adc0_clk_0_1_CLK_N),
        .adc0_clk_p(adc0_clk_0_1_CLK_P),
        .adc1_clk_n(adc1_clk_0_1_CLK_N),
        .adc1_clk_p(adc1_clk_0_1_CLK_P),
        .adc2_clk_n(adc2_clk_0_1_CLK_N),
        .adc2_clk_p(adc2_clk_0_1_CLK_P),
        .adc3_clk_n(adc3_clk_0_1_CLK_N),
        .adc3_clk_p(adc3_clk_0_1_CLK_P),
        .dac0_clk_n(dac0_clk_0_1_CLK_N),
        .dac0_clk_p(dac0_clk_0_1_CLK_P),
        .dac1_clk_n(dac1_clk_0_1_CLK_N),
        .dac1_clk_p(dac1_clk_0_1_CLK_P),
        .m00_axis_tdata(adc_axis_out_TDATA),
        .m00_axis_tready(adc_axis_out_TREADY),
        .m00_axis_tvalid(adc_axis_out_TVALID),
        .m02_axis_tdata(S_AXIS_1_TDATA),
        .m02_axis_tready(S_AXIS_1_TREADY),
        .m02_axis_tvalid(S_AXIS_1_TVALID),
        .m0_axis_aclk(DAC_AXIS_PL_CLK),
        .m0_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m10_axis_tdata(S_AXIS_2_TDATA),
        .m10_axis_tready(S_AXIS_2_TREADY),
        .m10_axis_tvalid(S_AXIS_2_TVALID),
        .m12_axis_tdata(S_AXIS_3_TDATA),
        .m12_axis_tready(S_AXIS_3_TREADY),
        .m12_axis_tvalid(S_AXIS_3_TVALID),
        .m1_axis_aclk(DAC_AXIS_PL_CLK),
        .m1_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m20_axis_tdata(usp_rf_data_converter_0_m20_axis_TDATA),
        .m20_axis_tready(usp_rf_data_converter_0_m20_axis_TREADY),
        .m20_axis_tvalid(usp_rf_data_converter_0_m20_axis_TVALID),
        .m22_axis_tdata(S_AXIS_4_TDATA),
        .m22_axis_tready(S_AXIS_4_TREADY),
        .m22_axis_tvalid(S_AXIS_4_TVALID),
        .m2_axis_aclk(DAC_AXIS_PL_CLK),
        .m2_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .m30_axis_tdata(S_AXIS_5_TDATA),
        .m30_axis_tready(S_AXIS_5_TREADY),
        .m30_axis_tvalid(S_AXIS_5_TVALID),
        .m32_axis_tdata(S_AXIS_6_TDATA),
        .m32_axis_tready(S_AXIS_6_TREADY),
        .m32_axis_tvalid(S_AXIS_6_TVALID),
        .m3_axis_aclk(DAC_AXIS_PL_CLK),
        .m3_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s00_axis_tdata(axis_broadcaster_0_M00_AXIS_TDATA),
        .s00_axis_tvalid(axis_broadcaster_0_M00_AXIS_TVALID),
        .s01_axis_tdata(axis_broadcaster_0_M01_AXIS_TDATA),
        .s01_axis_tvalid(axis_broadcaster_0_M01_AXIS_TVALID),
        .s02_axis_tdata(axis_broadcaster_0_M02_AXIS_TDATA),
        .s02_axis_tvalid(axis_broadcaster_0_M02_AXIS_TVALID),
        .s03_axis_tdata(axis_broadcaster_0_M03_AXIS_TDATA),
        .s03_axis_tvalid(axis_broadcaster_0_M03_AXIS_TVALID),
        .s0_axis_aclk(DAC_AXIS_PL_CLK),
        .s0_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s10_axis_tdata(axis_broadcaster_0_M04_AXIS_TDATA),
        .s10_axis_tvalid(axis_broadcaster_0_M04_AXIS_TVALID),
        .s11_axis_tdata(axis_broadcaster_0_M05_AXIS_TDATA),
        .s11_axis_tvalid(axis_broadcaster_0_M05_AXIS_TVALID),
        .s12_axis_tdata(axis_broadcaster_0_M06_AXIS_TDATA),
        .s12_axis_tvalid(axis_broadcaster_0_M06_AXIS_TVALID),
        .s13_axis_tdata(axis_broadcaster_0_M07_AXIS_TDATA),
        .s13_axis_tvalid(axis_broadcaster_0_M07_AXIS_TVALID),
        .s1_axis_aclk(DAC_AXIS_PL_CLK),
        .s1_axis_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .s_axi_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .s_axi_araddr(ps8_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .s_axi_arready(ps8_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(ps8_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(ps8_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_awready(ps8_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(ps8_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(ps8_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(ps8_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(ps8_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(ps8_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(ps8_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(ps8_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(ps8_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(ps8_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(ps8_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(ps8_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(ps8_0_axi_periph_M00_AXI_WVALID),
        .sysref_in_n(sysref_in_0_1_diff_n),
        .sysref_in_p(sysref_in_0_1_diff_p),
        .user_sysref_adc(pl_sysref_0_user_sysref_adc),
        .user_sysref_dac(pl_sysref_0_user_sysref_dac),
        .vin0_01_n(vin0_01_0_1_V_N),
        .vin0_01_p(vin0_01_0_1_V_P),
        .vin0_23_n(vin0_23_0_1_V_N),
        .vin0_23_p(vin0_23_0_1_V_P),
        .vin1_01_n(vin1_01_0_1_V_N),
        .vin1_01_p(vin1_01_0_1_V_P),
        .vin1_23_n(vin1_23_0_1_V_N),
        .vin1_23_p(vin1_23_0_1_V_P),
        .vin2_01_n(vin2_01_0_1_V_N),
        .vin2_01_p(vin2_01_0_1_V_P),
        .vin2_23_n(vin2_23_0_1_V_N),
        .vin2_23_p(vin2_23_0_1_V_P),
        .vin3_01_n(vin3_01_0_1_V_N),
        .vin3_01_p(vin3_01_0_1_V_P),
        .vin3_23_n(vin3_23_0_1_V_N),
        .vin3_23_p(vin3_23_0_1_V_P),
        .vout00_n(usp_rf_data_converter_0_vout00_V_N),
        .vout00_p(usp_rf_data_converter_0_vout00_V_P),
        .vout01_n(usp_rf_data_converter_0_vout01_V_N),
        .vout01_p(usp_rf_data_converter_0_vout01_V_P),
        .vout02_n(usp_rf_data_converter_0_vout02_V_N),
        .vout02_p(usp_rf_data_converter_0_vout02_V_P),
        .vout03_n(usp_rf_data_converter_0_vout03_V_N),
        .vout03_p(usp_rf_data_converter_0_vout03_V_P),
        .vout10_n(usp_rf_data_converter_0_vout10_V_N),
        .vout10_p(usp_rf_data_converter_0_vout10_V_P),
        .vout11_n(usp_rf_data_converter_0_vout11_V_N),
        .vout11_p(usp_rf_data_converter_0_vout11_V_P),
        .vout12_n(usp_rf_data_converter_0_vout12_V_N),
        .vout12_p(usp_rf_data_converter_0_vout12_V_P),
        .vout13_n(usp_rf_data_converter_0_vout13_V_N),
        .vout13_p(usp_rf_data_converter_0_vout13_V_P));
  design_1_vio_0_0 vio_0
       (.clk(startup_0_CFGMCLK_RAW),
        .probe_in0(zynq_ultra_ps_e_0_pl_resetn0),
        .probe_in1(zynq_ultra_ps_e_0_pl_clk0),
        .probe_in2(rst_ps8_0_99M_peripheral_aresetn),
        .probe_in3(DAC_AXIS_PL_CLK),
        .probe_in4(ARESETN_1));
  design_1_xlslice_0_0 xlslice_0
       (.Din(axi_gpio_dac_gpio2_io_o),
        .Dout(xlslice_0_Dout));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.emio_uart1_rxd(1'b0),
        .maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
        .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
        .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
        .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
        .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
        .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
        .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
        .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
        .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
        .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
        .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
        .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
        .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
        .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
        .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
        .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
        .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
        .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
        .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
        .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
        .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
        .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
        .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
        .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
        .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
        .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
        .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
        .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
        .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
        .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
        .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
        .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
        .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
        .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
        .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
        .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
        .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
        .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
        .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
        .maxigp1_araddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARADDR),
        .maxigp1_arburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARBURST),
        .maxigp1_arcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARCACHE),
        .maxigp1_arid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARID),
        .maxigp1_arlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLEN),
        .maxigp1_arlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARLOCK),
        .maxigp1_arprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARPROT),
        .maxigp1_arqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARQOS),
        .maxigp1_arready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARREADY),
        .maxigp1_arsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARSIZE),
        .maxigp1_aruser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARUSER),
        .maxigp1_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_ARVALID),
        .maxigp1_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWADDR),
        .maxigp1_awburst(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWBURST),
        .maxigp1_awcache(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWCACHE),
        .maxigp1_awid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWID),
        .maxigp1_awlen(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLEN),
        .maxigp1_awlock(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWLOCK),
        .maxigp1_awprot(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWPROT),
        .maxigp1_awqos(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWQOS),
        .maxigp1_awready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWREADY),
        .maxigp1_awsize(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWSIZE),
        .maxigp1_awuser(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWUSER),
        .maxigp1_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_AWVALID),
        .maxigp1_bid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BID),
        .maxigp1_bready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BREADY),
        .maxigp1_bresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BRESP),
        .maxigp1_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_BVALID),
        .maxigp1_rdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RDATA),
        .maxigp1_rid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RID),
        .maxigp1_rlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RLAST),
        .maxigp1_rready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RREADY),
        .maxigp1_rresp(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RRESP),
        .maxigp1_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_RVALID),
        .maxigp1_wdata(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WDATA),
        .maxigp1_wlast(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WLAST),
        .maxigp1_wready(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WREADY),
        .maxigp1_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WSTRB),
        .maxigp1_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM1_FPD_WVALID),
        .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .maxihpm1_fpd_aclk(clk_wiz_axis_clk_out2),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_ps_irq0(1'b0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule

module design_1_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awburst,
    M03_AXI_awcache,
    M03_AXI_awlen,
    M03_AXI_awlock,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awsize,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wlast,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arburst,
    M04_AXI_arcache,
    M04_AXI_arlen,
    M04_AXI_arlock,
    M04_AXI_arprot,
    M04_AXI_arready,
    M04_AXI_arsize,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awburst,
    M04_AXI_awcache,
    M04_AXI_awlen,
    M04_AXI_awlock,
    M04_AXI_awprot,
    M04_AXI_awready,
    M04_AXI_awsize,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rlast,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wlast,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arburst,
    M05_AXI_arcache,
    M05_AXI_arlen,
    M05_AXI_arlock,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arsize,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awburst,
    M05_AXI_awcache,
    M05_AXI_awlen,
    M05_AXI_awlock,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awsize,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rlast,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wlast,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    M06_ACLK,
    M06_ARESETN,
    M06_AXI_araddr,
    M06_AXI_arburst,
    M06_AXI_arcache,
    M06_AXI_arlen,
    M06_AXI_arlock,
    M06_AXI_arprot,
    M06_AXI_arready,
    M06_AXI_arsize,
    M06_AXI_arvalid,
    M06_AXI_awaddr,
    M06_AXI_awburst,
    M06_AXI_awcache,
    M06_AXI_awlen,
    M06_AXI_awlock,
    M06_AXI_awprot,
    M06_AXI_awready,
    M06_AXI_awsize,
    M06_AXI_awvalid,
    M06_AXI_bready,
    M06_AXI_bresp,
    M06_AXI_bvalid,
    M06_AXI_rdata,
    M06_AXI_rlast,
    M06_AXI_rready,
    M06_AXI_rresp,
    M06_AXI_rvalid,
    M06_AXI_wdata,
    M06_AXI_wlast,
    M06_AXI_wready,
    M06_AXI_wstrb,
    M06_AXI_wvalid,
    M07_ACLK,
    M07_ARESETN,
    M07_AXI_araddr,
    M07_AXI_arburst,
    M07_AXI_arcache,
    M07_AXI_arlen,
    M07_AXI_arlock,
    M07_AXI_arprot,
    M07_AXI_arready,
    M07_AXI_arsize,
    M07_AXI_arvalid,
    M07_AXI_awaddr,
    M07_AXI_awburst,
    M07_AXI_awcache,
    M07_AXI_awlen,
    M07_AXI_awlock,
    M07_AXI_awprot,
    M07_AXI_awready,
    M07_AXI_awsize,
    M07_AXI_awvalid,
    M07_AXI_bready,
    M07_AXI_bresp,
    M07_AXI_bvalid,
    M07_AXI_rdata,
    M07_AXI_rlast,
    M07_AXI_rready,
    M07_AXI_rresp,
    M07_AXI_rvalid,
    M07_AXI_wdata,
    M07_AXI_wlast,
    M07_AXI_wready,
    M07_AXI_wstrb,
    M07_AXI_wvalid,
    M08_ACLK,
    M08_ARESETN,
    M08_AXI_araddr,
    M08_AXI_arburst,
    M08_AXI_arcache,
    M08_AXI_arlen,
    M08_AXI_arlock,
    M08_AXI_arprot,
    M08_AXI_arready,
    M08_AXI_arsize,
    M08_AXI_arvalid,
    M08_AXI_awaddr,
    M08_AXI_awburst,
    M08_AXI_awcache,
    M08_AXI_awlen,
    M08_AXI_awlock,
    M08_AXI_awprot,
    M08_AXI_awready,
    M08_AXI_awsize,
    M08_AXI_awvalid,
    M08_AXI_bready,
    M08_AXI_bresp,
    M08_AXI_bvalid,
    M08_AXI_rdata,
    M08_AXI_rlast,
    M08_AXI_rready,
    M08_AXI_rresp,
    M08_AXI_rvalid,
    M08_AXI_wdata,
    M08_AXI_wlast,
    M08_AXI_wready,
    M08_AXI_wstrb,
    M08_AXI_wvalid,
    M09_ACLK,
    M09_ARESETN,
    M09_AXI_araddr,
    M09_AXI_arburst,
    M09_AXI_arcache,
    M09_AXI_arlen,
    M09_AXI_arlock,
    M09_AXI_arprot,
    M09_AXI_arready,
    M09_AXI_arsize,
    M09_AXI_arvalid,
    M09_AXI_awaddr,
    M09_AXI_awburst,
    M09_AXI_awcache,
    M09_AXI_awlen,
    M09_AXI_awlock,
    M09_AXI_awprot,
    M09_AXI_awready,
    M09_AXI_awsize,
    M09_AXI_awvalid,
    M09_AXI_bready,
    M09_AXI_bresp,
    M09_AXI_bvalid,
    M09_AXI_rdata,
    M09_AXI_rlast,
    M09_AXI_rready,
    M09_AXI_rresp,
    M09_AXI_rvalid,
    M09_AXI_wdata,
    M09_AXI_wlast,
    M09_AXI_wready,
    M09_AXI_wstrb,
    M09_AXI_wvalid,
    M10_ACLK,
    M10_ARESETN,
    M10_AXI_araddr,
    M10_AXI_arburst,
    M10_AXI_arcache,
    M10_AXI_arlen,
    M10_AXI_arlock,
    M10_AXI_arprot,
    M10_AXI_arready,
    M10_AXI_arsize,
    M10_AXI_arvalid,
    M10_AXI_awaddr,
    M10_AXI_awburst,
    M10_AXI_awcache,
    M10_AXI_awlen,
    M10_AXI_awlock,
    M10_AXI_awprot,
    M10_AXI_awready,
    M10_AXI_awsize,
    M10_AXI_awvalid,
    M10_AXI_bready,
    M10_AXI_bresp,
    M10_AXI_bvalid,
    M10_AXI_rdata,
    M10_AXI_rlast,
    M10_AXI_rready,
    M10_AXI_rresp,
    M10_AXI_rvalid,
    M10_AXI_wdata,
    M10_AXI_wlast,
    M10_AXI_wready,
    M10_AXI_wstrb,
    M10_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [16:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [7:0]M00_AXI_arlen;
  output [0:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [16:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [7:0]M00_AXI_awlen;
  output [0:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [255:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [255:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [31:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [8:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [8:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [39:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [39:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [39:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [2:0]M03_AXI_arsize;
  output [0:0]M03_AXI_arvalid;
  output [39:0]M03_AXI_awaddr;
  output [1:0]M03_AXI_awburst;
  output [3:0]M03_AXI_awcache;
  output [7:0]M03_AXI_awlen;
  output [0:0]M03_AXI_awlock;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [2:0]M03_AXI_awsize;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [255:0]M03_AXI_rdata;
  input [0:0]M03_AXI_rlast;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [255:0]M03_AXI_wdata;
  output [0:0]M03_AXI_wlast;
  input [0:0]M03_AXI_wready;
  output [31:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [39:0]M04_AXI_araddr;
  output [1:0]M04_AXI_arburst;
  output [3:0]M04_AXI_arcache;
  output [7:0]M04_AXI_arlen;
  output [0:0]M04_AXI_arlock;
  output [2:0]M04_AXI_arprot;
  input [0:0]M04_AXI_arready;
  output [2:0]M04_AXI_arsize;
  output [0:0]M04_AXI_arvalid;
  output [39:0]M04_AXI_awaddr;
  output [1:0]M04_AXI_awburst;
  output [3:0]M04_AXI_awcache;
  output [7:0]M04_AXI_awlen;
  output [0:0]M04_AXI_awlock;
  output [2:0]M04_AXI_awprot;
  input [0:0]M04_AXI_awready;
  output [2:0]M04_AXI_awsize;
  output [0:0]M04_AXI_awvalid;
  output [0:0]M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input [0:0]M04_AXI_bvalid;
  input [255:0]M04_AXI_rdata;
  input [0:0]M04_AXI_rlast;
  output [0:0]M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input [0:0]M04_AXI_rvalid;
  output [255:0]M04_AXI_wdata;
  output [0:0]M04_AXI_wlast;
  input [0:0]M04_AXI_wready;
  output [31:0]M04_AXI_wstrb;
  output [0:0]M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [39:0]M05_AXI_araddr;
  output [1:0]M05_AXI_arburst;
  output [3:0]M05_AXI_arcache;
  output [7:0]M05_AXI_arlen;
  output [0:0]M05_AXI_arlock;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [2:0]M05_AXI_arsize;
  output [0:0]M05_AXI_arvalid;
  output [39:0]M05_AXI_awaddr;
  output [1:0]M05_AXI_awburst;
  output [3:0]M05_AXI_awcache;
  output [7:0]M05_AXI_awlen;
  output [0:0]M05_AXI_awlock;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [2:0]M05_AXI_awsize;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [255:0]M05_AXI_rdata;
  input [0:0]M05_AXI_rlast;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [255:0]M05_AXI_wdata;
  output [0:0]M05_AXI_wlast;
  input [0:0]M05_AXI_wready;
  output [31:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input M06_ACLK;
  input M06_ARESETN;
  output [39:0]M06_AXI_araddr;
  output [1:0]M06_AXI_arburst;
  output [3:0]M06_AXI_arcache;
  output [7:0]M06_AXI_arlen;
  output [0:0]M06_AXI_arlock;
  output [2:0]M06_AXI_arprot;
  input [0:0]M06_AXI_arready;
  output [2:0]M06_AXI_arsize;
  output [0:0]M06_AXI_arvalid;
  output [39:0]M06_AXI_awaddr;
  output [1:0]M06_AXI_awburst;
  output [3:0]M06_AXI_awcache;
  output [7:0]M06_AXI_awlen;
  output [0:0]M06_AXI_awlock;
  output [2:0]M06_AXI_awprot;
  input [0:0]M06_AXI_awready;
  output [2:0]M06_AXI_awsize;
  output [0:0]M06_AXI_awvalid;
  output [0:0]M06_AXI_bready;
  input [1:0]M06_AXI_bresp;
  input [0:0]M06_AXI_bvalid;
  input [255:0]M06_AXI_rdata;
  input [0:0]M06_AXI_rlast;
  output [0:0]M06_AXI_rready;
  input [1:0]M06_AXI_rresp;
  input [0:0]M06_AXI_rvalid;
  output [255:0]M06_AXI_wdata;
  output [0:0]M06_AXI_wlast;
  input [0:0]M06_AXI_wready;
  output [31:0]M06_AXI_wstrb;
  output [0:0]M06_AXI_wvalid;
  input M07_ACLK;
  input M07_ARESETN;
  output [39:0]M07_AXI_araddr;
  output [1:0]M07_AXI_arburst;
  output [3:0]M07_AXI_arcache;
  output [7:0]M07_AXI_arlen;
  output [0:0]M07_AXI_arlock;
  output [2:0]M07_AXI_arprot;
  input [0:0]M07_AXI_arready;
  output [2:0]M07_AXI_arsize;
  output [0:0]M07_AXI_arvalid;
  output [39:0]M07_AXI_awaddr;
  output [1:0]M07_AXI_awburst;
  output [3:0]M07_AXI_awcache;
  output [7:0]M07_AXI_awlen;
  output [0:0]M07_AXI_awlock;
  output [2:0]M07_AXI_awprot;
  input [0:0]M07_AXI_awready;
  output [2:0]M07_AXI_awsize;
  output [0:0]M07_AXI_awvalid;
  output [0:0]M07_AXI_bready;
  input [1:0]M07_AXI_bresp;
  input [0:0]M07_AXI_bvalid;
  input [255:0]M07_AXI_rdata;
  input [0:0]M07_AXI_rlast;
  output [0:0]M07_AXI_rready;
  input [1:0]M07_AXI_rresp;
  input [0:0]M07_AXI_rvalid;
  output [255:0]M07_AXI_wdata;
  output [0:0]M07_AXI_wlast;
  input [0:0]M07_AXI_wready;
  output [31:0]M07_AXI_wstrb;
  output [0:0]M07_AXI_wvalid;
  input M08_ACLK;
  input M08_ARESETN;
  output [39:0]M08_AXI_araddr;
  output [1:0]M08_AXI_arburst;
  output [3:0]M08_AXI_arcache;
  output [7:0]M08_AXI_arlen;
  output [0:0]M08_AXI_arlock;
  output [2:0]M08_AXI_arprot;
  input [0:0]M08_AXI_arready;
  output [2:0]M08_AXI_arsize;
  output [0:0]M08_AXI_arvalid;
  output [39:0]M08_AXI_awaddr;
  output [1:0]M08_AXI_awburst;
  output [3:0]M08_AXI_awcache;
  output [7:0]M08_AXI_awlen;
  output [0:0]M08_AXI_awlock;
  output [2:0]M08_AXI_awprot;
  input [0:0]M08_AXI_awready;
  output [2:0]M08_AXI_awsize;
  output [0:0]M08_AXI_awvalid;
  output [0:0]M08_AXI_bready;
  input [1:0]M08_AXI_bresp;
  input [0:0]M08_AXI_bvalid;
  input [255:0]M08_AXI_rdata;
  input [0:0]M08_AXI_rlast;
  output [0:0]M08_AXI_rready;
  input [1:0]M08_AXI_rresp;
  input [0:0]M08_AXI_rvalid;
  output [255:0]M08_AXI_wdata;
  output [0:0]M08_AXI_wlast;
  input [0:0]M08_AXI_wready;
  output [31:0]M08_AXI_wstrb;
  output [0:0]M08_AXI_wvalid;
  input M09_ACLK;
  input M09_ARESETN;
  output [39:0]M09_AXI_araddr;
  output [1:0]M09_AXI_arburst;
  output [3:0]M09_AXI_arcache;
  output [7:0]M09_AXI_arlen;
  output [0:0]M09_AXI_arlock;
  output [2:0]M09_AXI_arprot;
  input [0:0]M09_AXI_arready;
  output [2:0]M09_AXI_arsize;
  output [0:0]M09_AXI_arvalid;
  output [39:0]M09_AXI_awaddr;
  output [1:0]M09_AXI_awburst;
  output [3:0]M09_AXI_awcache;
  output [7:0]M09_AXI_awlen;
  output [0:0]M09_AXI_awlock;
  output [2:0]M09_AXI_awprot;
  input [0:0]M09_AXI_awready;
  output [2:0]M09_AXI_awsize;
  output [0:0]M09_AXI_awvalid;
  output [0:0]M09_AXI_bready;
  input [1:0]M09_AXI_bresp;
  input [0:0]M09_AXI_bvalid;
  input [255:0]M09_AXI_rdata;
  input [0:0]M09_AXI_rlast;
  output [0:0]M09_AXI_rready;
  input [1:0]M09_AXI_rresp;
  input [0:0]M09_AXI_rvalid;
  output [255:0]M09_AXI_wdata;
  output [0:0]M09_AXI_wlast;
  input [0:0]M09_AXI_wready;
  output [31:0]M09_AXI_wstrb;
  output [0:0]M09_AXI_wvalid;
  input M10_ACLK;
  input M10_ARESETN;
  output [39:0]M10_AXI_araddr;
  output [1:0]M10_AXI_arburst;
  output [3:0]M10_AXI_arcache;
  output [7:0]M10_AXI_arlen;
  output [0:0]M10_AXI_arlock;
  output [2:0]M10_AXI_arprot;
  input [0:0]M10_AXI_arready;
  output [2:0]M10_AXI_arsize;
  output [0:0]M10_AXI_arvalid;
  output [39:0]M10_AXI_awaddr;
  output [1:0]M10_AXI_awburst;
  output [3:0]M10_AXI_awcache;
  output [7:0]M10_AXI_awlen;
  output [0:0]M10_AXI_awlock;
  output [2:0]M10_AXI_awprot;
  input [0:0]M10_AXI_awready;
  output [2:0]M10_AXI_awsize;
  output [0:0]M10_AXI_awvalid;
  output [0:0]M10_AXI_bready;
  input [1:0]M10_AXI_bresp;
  input [0:0]M10_AXI_bvalid;
  input [255:0]M10_AXI_rdata;
  input [0:0]M10_AXI_rlast;
  output [0:0]M10_AXI_rready;
  input [1:0]M10_AXI_rresp;
  input [0:0]M10_AXI_rvalid;
  output [255:0]M10_AXI_wdata;
  output [0:0]M10_AXI_wlast;
  input [0:0]M10_AXI_wready;
  output [31:0]M10_AXI_wstrb;
  output [0:0]M10_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [127:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [127:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [15:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire M04_ACLK_1;
  wire M04_ARESETN_1;
  wire M05_ACLK_1;
  wire M05_ARESETN_1;
  wire M06_ACLK_1;
  wire M06_ARESETN_1;
  wire M07_ACLK_1;
  wire M07_ARESETN_1;
  wire M08_ACLK_1;
  wire M08_ARESETN_1;
  wire M09_ACLK_1;
  wire M09_ARESETN_1;
  wire M10_ACLK_1;
  wire M10_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire axi_interconnect_0_ACLK_net;
  wire axi_interconnect_0_ARESETN_net;
  wire [39:0]axi_interconnect_0_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARCACHE;
  wire [15:0]axi_interconnect_0_to_s00_couplers_ARID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_ARLEN;
  wire axi_interconnect_0_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_ARQOS;
  wire axi_interconnect_0_to_s00_couplers_ARREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_ARSIZE;
  wire [15:0]axi_interconnect_0_to_s00_couplers_ARUSER;
  wire axi_interconnect_0_to_s00_couplers_ARVALID;
  wire [39:0]axi_interconnect_0_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_0_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWCACHE;
  wire [15:0]axi_interconnect_0_to_s00_couplers_AWID;
  wire [7:0]axi_interconnect_0_to_s00_couplers_AWLEN;
  wire axi_interconnect_0_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_0_to_s00_couplers_AWQOS;
  wire axi_interconnect_0_to_s00_couplers_AWREADY;
  wire [2:0]axi_interconnect_0_to_s00_couplers_AWSIZE;
  wire [15:0]axi_interconnect_0_to_s00_couplers_AWUSER;
  wire axi_interconnect_0_to_s00_couplers_AWVALID;
  wire [15:0]axi_interconnect_0_to_s00_couplers_BID;
  wire axi_interconnect_0_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_BRESP;
  wire axi_interconnect_0_to_s00_couplers_BVALID;
  wire [127:0]axi_interconnect_0_to_s00_couplers_RDATA;
  wire [15:0]axi_interconnect_0_to_s00_couplers_RID;
  wire axi_interconnect_0_to_s00_couplers_RLAST;
  wire axi_interconnect_0_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_0_to_s00_couplers_RRESP;
  wire axi_interconnect_0_to_s00_couplers_RVALID;
  wire [127:0]axi_interconnect_0_to_s00_couplers_WDATA;
  wire axi_interconnect_0_to_s00_couplers_WLAST;
  wire axi_interconnect_0_to_s00_couplers_WREADY;
  wire [15:0]axi_interconnect_0_to_s00_couplers_WSTRB;
  wire axi_interconnect_0_to_s00_couplers_WVALID;
  wire [16:0]m00_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARPROT;
  wire m00_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_ARSIZE;
  wire m00_couplers_to_axi_interconnect_0_ARVALID;
  wire [16:0]m00_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m00_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m00_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWPROT;
  wire m00_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_0_AWSIZE;
  wire m00_couplers_to_axi_interconnect_0_AWVALID;
  wire m00_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_BRESP;
  wire m00_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m00_couplers_to_axi_interconnect_0_RDATA;
  wire m00_couplers_to_axi_interconnect_0_RLAST;
  wire m00_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_0_RRESP;
  wire m00_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m00_couplers_to_axi_interconnect_0_WDATA;
  wire m00_couplers_to_axi_interconnect_0_WLAST;
  wire m00_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m00_couplers_to_axi_interconnect_0_WSTRB;
  wire m00_couplers_to_axi_interconnect_0_WVALID;
  wire [8:0]m01_couplers_to_axi_interconnect_0_ARADDR;
  wire m01_couplers_to_axi_interconnect_0_ARREADY;
  wire m01_couplers_to_axi_interconnect_0_ARVALID;
  wire [8:0]m01_couplers_to_axi_interconnect_0_AWADDR;
  wire m01_couplers_to_axi_interconnect_0_AWREADY;
  wire m01_couplers_to_axi_interconnect_0_AWVALID;
  wire m01_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_BRESP;
  wire m01_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_RDATA;
  wire m01_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m01_couplers_to_axi_interconnect_0_RRESP;
  wire m01_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m01_couplers_to_axi_interconnect_0_WDATA;
  wire m01_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m01_couplers_to_axi_interconnect_0_WSTRB;
  wire m01_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m02_couplers_to_axi_interconnect_0_ARADDR;
  wire m02_couplers_to_axi_interconnect_0_ARREADY;
  wire m02_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m02_couplers_to_axi_interconnect_0_AWADDR;
  wire m02_couplers_to_axi_interconnect_0_AWREADY;
  wire m02_couplers_to_axi_interconnect_0_AWVALID;
  wire m02_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_BRESP;
  wire m02_couplers_to_axi_interconnect_0_BVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_RDATA;
  wire m02_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m02_couplers_to_axi_interconnect_0_RRESP;
  wire m02_couplers_to_axi_interconnect_0_RVALID;
  wire [31:0]m02_couplers_to_axi_interconnect_0_WDATA;
  wire m02_couplers_to_axi_interconnect_0_WREADY;
  wire [3:0]m02_couplers_to_axi_interconnect_0_WSTRB;
  wire m02_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m03_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m03_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m03_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m03_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m03_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m03_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m03_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m03_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m03_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m03_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m03_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m03_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m03_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m03_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m03_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m03_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m03_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m04_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m04_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m04_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m04_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m04_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m04_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m04_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m04_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m04_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m04_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m04_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m04_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m04_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m04_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m04_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m04_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m04_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m05_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m05_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m05_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m05_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m05_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m05_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m05_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m05_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m05_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m05_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m05_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m05_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m05_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m05_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m05_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m05_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m05_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m05_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m05_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m05_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m05_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m05_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m06_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m06_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m06_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m06_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m06_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m06_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m06_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m06_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m06_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m06_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m06_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m06_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m06_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m06_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m06_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m06_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m06_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m06_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m06_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m06_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m06_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m06_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m06_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m06_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m06_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m06_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m06_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m06_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m06_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m06_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m07_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m07_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m07_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m07_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m07_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m07_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m07_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m07_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m07_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m07_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m07_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m07_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m07_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m07_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m07_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m07_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m07_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m07_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m07_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m07_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m07_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m07_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m07_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m07_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m07_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m07_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m07_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m07_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m07_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m07_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m08_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m08_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m08_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m08_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m08_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m08_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m08_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m08_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m08_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m08_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m08_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m08_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m08_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m08_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m08_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m08_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m08_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m08_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m08_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m08_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m08_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m08_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m08_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m08_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m08_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m08_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m08_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m08_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m08_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m08_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m09_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m09_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m09_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m09_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m09_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m09_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m09_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m09_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m09_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m09_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m09_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m09_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m09_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m09_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m09_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m09_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m09_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m09_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m09_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m09_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m09_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m09_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m09_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m09_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m09_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m09_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m09_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m09_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m09_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m09_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]m10_couplers_to_axi_interconnect_0_ARADDR;
  wire [1:0]m10_couplers_to_axi_interconnect_0_ARBURST;
  wire [3:0]m10_couplers_to_axi_interconnect_0_ARCACHE;
  wire [7:0]m10_couplers_to_axi_interconnect_0_ARLEN;
  wire [0:0]m10_couplers_to_axi_interconnect_0_ARLOCK;
  wire [2:0]m10_couplers_to_axi_interconnect_0_ARPROT;
  wire [0:0]m10_couplers_to_axi_interconnect_0_ARREADY;
  wire [2:0]m10_couplers_to_axi_interconnect_0_ARSIZE;
  wire [0:0]m10_couplers_to_axi_interconnect_0_ARVALID;
  wire [39:0]m10_couplers_to_axi_interconnect_0_AWADDR;
  wire [1:0]m10_couplers_to_axi_interconnect_0_AWBURST;
  wire [3:0]m10_couplers_to_axi_interconnect_0_AWCACHE;
  wire [7:0]m10_couplers_to_axi_interconnect_0_AWLEN;
  wire [0:0]m10_couplers_to_axi_interconnect_0_AWLOCK;
  wire [2:0]m10_couplers_to_axi_interconnect_0_AWPROT;
  wire [0:0]m10_couplers_to_axi_interconnect_0_AWREADY;
  wire [2:0]m10_couplers_to_axi_interconnect_0_AWSIZE;
  wire [0:0]m10_couplers_to_axi_interconnect_0_AWVALID;
  wire [0:0]m10_couplers_to_axi_interconnect_0_BREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_BRESP;
  wire [0:0]m10_couplers_to_axi_interconnect_0_BVALID;
  wire [255:0]m10_couplers_to_axi_interconnect_0_RDATA;
  wire [0:0]m10_couplers_to_axi_interconnect_0_RLAST;
  wire [0:0]m10_couplers_to_axi_interconnect_0_RREADY;
  wire [1:0]m10_couplers_to_axi_interconnect_0_RRESP;
  wire [0:0]m10_couplers_to_axi_interconnect_0_RVALID;
  wire [255:0]m10_couplers_to_axi_interconnect_0_WDATA;
  wire [0:0]m10_couplers_to_axi_interconnect_0_WLAST;
  wire [0:0]m10_couplers_to_axi_interconnect_0_WREADY;
  wire [31:0]m10_couplers_to_axi_interconnect_0_WSTRB;
  wire [0:0]m10_couplers_to_axi_interconnect_0_WVALID;
  wire [39:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [39:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [255:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [255:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [31:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [39:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [39:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [255:0]xbar_to_m00_couplers_RDATA;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [255:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [31:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [79:40]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [79:40]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [255:0]xbar_to_m01_couplers_RDATA;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [511:256]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [63:32]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [119:80]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [119:80]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [255:0]xbar_to_m02_couplers_RDATA;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [767:512]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [95:64]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [159:120]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [159:120]xbar_to_m03_couplers_AWADDR;
  wire [7:6]xbar_to_m03_couplers_AWBURST;
  wire [15:12]xbar_to_m03_couplers_AWCACHE;
  wire [31:24]xbar_to_m03_couplers_AWLEN;
  wire [3:3]xbar_to_m03_couplers_AWLOCK;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [11:9]xbar_to_m03_couplers_AWSIZE;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [255:0]xbar_to_m03_couplers_RDATA;
  wire [0:0]xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [1023:768]xbar_to_m03_couplers_WDATA;
  wire [3:3]xbar_to_m03_couplers_WLAST;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [127:96]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [199:160]xbar_to_m04_couplers_ARADDR;
  wire [9:8]xbar_to_m04_couplers_ARBURST;
  wire [19:16]xbar_to_m04_couplers_ARCACHE;
  wire [39:32]xbar_to_m04_couplers_ARLEN;
  wire [4:4]xbar_to_m04_couplers_ARLOCK;
  wire [14:12]xbar_to_m04_couplers_ARPROT;
  wire [0:0]xbar_to_m04_couplers_ARREADY;
  wire [14:12]xbar_to_m04_couplers_ARSIZE;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [199:160]xbar_to_m04_couplers_AWADDR;
  wire [9:8]xbar_to_m04_couplers_AWBURST;
  wire [19:16]xbar_to_m04_couplers_AWCACHE;
  wire [39:32]xbar_to_m04_couplers_AWLEN;
  wire [4:4]xbar_to_m04_couplers_AWLOCK;
  wire [14:12]xbar_to_m04_couplers_AWPROT;
  wire [0:0]xbar_to_m04_couplers_AWREADY;
  wire [14:12]xbar_to_m04_couplers_AWSIZE;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire [0:0]xbar_to_m04_couplers_BVALID;
  wire [255:0]xbar_to_m04_couplers_RDATA;
  wire [0:0]xbar_to_m04_couplers_RLAST;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire [0:0]xbar_to_m04_couplers_RVALID;
  wire [1279:1024]xbar_to_m04_couplers_WDATA;
  wire [4:4]xbar_to_m04_couplers_WLAST;
  wire [0:0]xbar_to_m04_couplers_WREADY;
  wire [159:128]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [239:200]xbar_to_m05_couplers_ARADDR;
  wire [11:10]xbar_to_m05_couplers_ARBURST;
  wire [23:20]xbar_to_m05_couplers_ARCACHE;
  wire [47:40]xbar_to_m05_couplers_ARLEN;
  wire [5:5]xbar_to_m05_couplers_ARLOCK;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [17:15]xbar_to_m05_couplers_ARSIZE;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [239:200]xbar_to_m05_couplers_AWADDR;
  wire [11:10]xbar_to_m05_couplers_AWBURST;
  wire [23:20]xbar_to_m05_couplers_AWCACHE;
  wire [47:40]xbar_to_m05_couplers_AWLEN;
  wire [5:5]xbar_to_m05_couplers_AWLOCK;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [17:15]xbar_to_m05_couplers_AWSIZE;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [255:0]xbar_to_m05_couplers_RDATA;
  wire [0:0]xbar_to_m05_couplers_RLAST;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [1535:1280]xbar_to_m05_couplers_WDATA;
  wire [5:5]xbar_to_m05_couplers_WLAST;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [191:160]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [279:240]xbar_to_m06_couplers_ARADDR;
  wire [13:12]xbar_to_m06_couplers_ARBURST;
  wire [27:24]xbar_to_m06_couplers_ARCACHE;
  wire [55:48]xbar_to_m06_couplers_ARLEN;
  wire [6:6]xbar_to_m06_couplers_ARLOCK;
  wire [20:18]xbar_to_m06_couplers_ARPROT;
  wire [0:0]xbar_to_m06_couplers_ARREADY;
  wire [20:18]xbar_to_m06_couplers_ARSIZE;
  wire [6:6]xbar_to_m06_couplers_ARVALID;
  wire [279:240]xbar_to_m06_couplers_AWADDR;
  wire [13:12]xbar_to_m06_couplers_AWBURST;
  wire [27:24]xbar_to_m06_couplers_AWCACHE;
  wire [55:48]xbar_to_m06_couplers_AWLEN;
  wire [6:6]xbar_to_m06_couplers_AWLOCK;
  wire [20:18]xbar_to_m06_couplers_AWPROT;
  wire [0:0]xbar_to_m06_couplers_AWREADY;
  wire [20:18]xbar_to_m06_couplers_AWSIZE;
  wire [6:6]xbar_to_m06_couplers_AWVALID;
  wire [6:6]xbar_to_m06_couplers_BREADY;
  wire [1:0]xbar_to_m06_couplers_BRESP;
  wire [0:0]xbar_to_m06_couplers_BVALID;
  wire [255:0]xbar_to_m06_couplers_RDATA;
  wire [0:0]xbar_to_m06_couplers_RLAST;
  wire [6:6]xbar_to_m06_couplers_RREADY;
  wire [1:0]xbar_to_m06_couplers_RRESP;
  wire [0:0]xbar_to_m06_couplers_RVALID;
  wire [1791:1536]xbar_to_m06_couplers_WDATA;
  wire [6:6]xbar_to_m06_couplers_WLAST;
  wire [0:0]xbar_to_m06_couplers_WREADY;
  wire [223:192]xbar_to_m06_couplers_WSTRB;
  wire [6:6]xbar_to_m06_couplers_WVALID;
  wire [319:280]xbar_to_m07_couplers_ARADDR;
  wire [15:14]xbar_to_m07_couplers_ARBURST;
  wire [31:28]xbar_to_m07_couplers_ARCACHE;
  wire [63:56]xbar_to_m07_couplers_ARLEN;
  wire [7:7]xbar_to_m07_couplers_ARLOCK;
  wire [23:21]xbar_to_m07_couplers_ARPROT;
  wire [0:0]xbar_to_m07_couplers_ARREADY;
  wire [23:21]xbar_to_m07_couplers_ARSIZE;
  wire [7:7]xbar_to_m07_couplers_ARVALID;
  wire [319:280]xbar_to_m07_couplers_AWADDR;
  wire [15:14]xbar_to_m07_couplers_AWBURST;
  wire [31:28]xbar_to_m07_couplers_AWCACHE;
  wire [63:56]xbar_to_m07_couplers_AWLEN;
  wire [7:7]xbar_to_m07_couplers_AWLOCK;
  wire [23:21]xbar_to_m07_couplers_AWPROT;
  wire [0:0]xbar_to_m07_couplers_AWREADY;
  wire [23:21]xbar_to_m07_couplers_AWSIZE;
  wire [7:7]xbar_to_m07_couplers_AWVALID;
  wire [7:7]xbar_to_m07_couplers_BREADY;
  wire [1:0]xbar_to_m07_couplers_BRESP;
  wire [0:0]xbar_to_m07_couplers_BVALID;
  wire [255:0]xbar_to_m07_couplers_RDATA;
  wire [0:0]xbar_to_m07_couplers_RLAST;
  wire [7:7]xbar_to_m07_couplers_RREADY;
  wire [1:0]xbar_to_m07_couplers_RRESP;
  wire [0:0]xbar_to_m07_couplers_RVALID;
  wire [2047:1792]xbar_to_m07_couplers_WDATA;
  wire [7:7]xbar_to_m07_couplers_WLAST;
  wire [0:0]xbar_to_m07_couplers_WREADY;
  wire [255:224]xbar_to_m07_couplers_WSTRB;
  wire [7:7]xbar_to_m07_couplers_WVALID;
  wire [359:320]xbar_to_m08_couplers_ARADDR;
  wire [17:16]xbar_to_m08_couplers_ARBURST;
  wire [35:32]xbar_to_m08_couplers_ARCACHE;
  wire [71:64]xbar_to_m08_couplers_ARLEN;
  wire [8:8]xbar_to_m08_couplers_ARLOCK;
  wire [26:24]xbar_to_m08_couplers_ARPROT;
  wire [0:0]xbar_to_m08_couplers_ARREADY;
  wire [26:24]xbar_to_m08_couplers_ARSIZE;
  wire [8:8]xbar_to_m08_couplers_ARVALID;
  wire [359:320]xbar_to_m08_couplers_AWADDR;
  wire [17:16]xbar_to_m08_couplers_AWBURST;
  wire [35:32]xbar_to_m08_couplers_AWCACHE;
  wire [71:64]xbar_to_m08_couplers_AWLEN;
  wire [8:8]xbar_to_m08_couplers_AWLOCK;
  wire [26:24]xbar_to_m08_couplers_AWPROT;
  wire [0:0]xbar_to_m08_couplers_AWREADY;
  wire [26:24]xbar_to_m08_couplers_AWSIZE;
  wire [8:8]xbar_to_m08_couplers_AWVALID;
  wire [8:8]xbar_to_m08_couplers_BREADY;
  wire [1:0]xbar_to_m08_couplers_BRESP;
  wire [0:0]xbar_to_m08_couplers_BVALID;
  wire [255:0]xbar_to_m08_couplers_RDATA;
  wire [0:0]xbar_to_m08_couplers_RLAST;
  wire [8:8]xbar_to_m08_couplers_RREADY;
  wire [1:0]xbar_to_m08_couplers_RRESP;
  wire [0:0]xbar_to_m08_couplers_RVALID;
  wire [2303:2048]xbar_to_m08_couplers_WDATA;
  wire [8:8]xbar_to_m08_couplers_WLAST;
  wire [0:0]xbar_to_m08_couplers_WREADY;
  wire [287:256]xbar_to_m08_couplers_WSTRB;
  wire [8:8]xbar_to_m08_couplers_WVALID;
  wire [399:360]xbar_to_m09_couplers_ARADDR;
  wire [19:18]xbar_to_m09_couplers_ARBURST;
  wire [39:36]xbar_to_m09_couplers_ARCACHE;
  wire [79:72]xbar_to_m09_couplers_ARLEN;
  wire [9:9]xbar_to_m09_couplers_ARLOCK;
  wire [29:27]xbar_to_m09_couplers_ARPROT;
  wire [0:0]xbar_to_m09_couplers_ARREADY;
  wire [29:27]xbar_to_m09_couplers_ARSIZE;
  wire [9:9]xbar_to_m09_couplers_ARVALID;
  wire [399:360]xbar_to_m09_couplers_AWADDR;
  wire [19:18]xbar_to_m09_couplers_AWBURST;
  wire [39:36]xbar_to_m09_couplers_AWCACHE;
  wire [79:72]xbar_to_m09_couplers_AWLEN;
  wire [9:9]xbar_to_m09_couplers_AWLOCK;
  wire [29:27]xbar_to_m09_couplers_AWPROT;
  wire [0:0]xbar_to_m09_couplers_AWREADY;
  wire [29:27]xbar_to_m09_couplers_AWSIZE;
  wire [9:9]xbar_to_m09_couplers_AWVALID;
  wire [9:9]xbar_to_m09_couplers_BREADY;
  wire [1:0]xbar_to_m09_couplers_BRESP;
  wire [0:0]xbar_to_m09_couplers_BVALID;
  wire [255:0]xbar_to_m09_couplers_RDATA;
  wire [0:0]xbar_to_m09_couplers_RLAST;
  wire [9:9]xbar_to_m09_couplers_RREADY;
  wire [1:0]xbar_to_m09_couplers_RRESP;
  wire [0:0]xbar_to_m09_couplers_RVALID;
  wire [2559:2304]xbar_to_m09_couplers_WDATA;
  wire [9:9]xbar_to_m09_couplers_WLAST;
  wire [0:0]xbar_to_m09_couplers_WREADY;
  wire [319:288]xbar_to_m09_couplers_WSTRB;
  wire [9:9]xbar_to_m09_couplers_WVALID;
  wire [439:400]xbar_to_m10_couplers_ARADDR;
  wire [21:20]xbar_to_m10_couplers_ARBURST;
  wire [43:40]xbar_to_m10_couplers_ARCACHE;
  wire [87:80]xbar_to_m10_couplers_ARLEN;
  wire [10:10]xbar_to_m10_couplers_ARLOCK;
  wire [32:30]xbar_to_m10_couplers_ARPROT;
  wire [0:0]xbar_to_m10_couplers_ARREADY;
  wire [32:30]xbar_to_m10_couplers_ARSIZE;
  wire [10:10]xbar_to_m10_couplers_ARVALID;
  wire [439:400]xbar_to_m10_couplers_AWADDR;
  wire [21:20]xbar_to_m10_couplers_AWBURST;
  wire [43:40]xbar_to_m10_couplers_AWCACHE;
  wire [87:80]xbar_to_m10_couplers_AWLEN;
  wire [10:10]xbar_to_m10_couplers_AWLOCK;
  wire [32:30]xbar_to_m10_couplers_AWPROT;
  wire [0:0]xbar_to_m10_couplers_AWREADY;
  wire [32:30]xbar_to_m10_couplers_AWSIZE;
  wire [10:10]xbar_to_m10_couplers_AWVALID;
  wire [10:10]xbar_to_m10_couplers_BREADY;
  wire [1:0]xbar_to_m10_couplers_BRESP;
  wire [0:0]xbar_to_m10_couplers_BVALID;
  wire [255:0]xbar_to_m10_couplers_RDATA;
  wire [0:0]xbar_to_m10_couplers_RLAST;
  wire [10:10]xbar_to_m10_couplers_RREADY;
  wire [1:0]xbar_to_m10_couplers_RRESP;
  wire [0:0]xbar_to_m10_couplers_RVALID;
  wire [2815:2560]xbar_to_m10_couplers_WDATA;
  wire [10:10]xbar_to_m10_couplers_WLAST;
  wire [0:0]xbar_to_m10_couplers_WREADY;
  wire [351:320]xbar_to_m10_couplers_WSTRB;
  wire [10:10]xbar_to_m10_couplers_WVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[16:0] = m00_couplers_to_axi_interconnect_0_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_0_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_0_ARCACHE;
  assign M00_AXI_arlen[7:0] = m00_couplers_to_axi_interconnect_0_ARLEN;
  assign M00_AXI_arlock[0] = m00_couplers_to_axi_interconnect_0_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_0_ARPROT;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_0_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_0_ARVALID;
  assign M00_AXI_awaddr[16:0] = m00_couplers_to_axi_interconnect_0_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_0_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_0_AWCACHE;
  assign M00_AXI_awlen[7:0] = m00_couplers_to_axi_interconnect_0_AWLEN;
  assign M00_AXI_awlock[0] = m00_couplers_to_axi_interconnect_0_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_0_AWPROT;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_0_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_0_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_0_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_0_RREADY;
  assign M00_AXI_wdata[255:0] = m00_couplers_to_axi_interconnect_0_WDATA;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_0_WLAST;
  assign M00_AXI_wstrb[31:0] = m00_couplers_to_axi_interconnect_0_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_0_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[8:0] = m01_couplers_to_axi_interconnect_0_ARADDR;
  assign M01_AXI_arvalid = m01_couplers_to_axi_interconnect_0_ARVALID;
  assign M01_AXI_awaddr[8:0] = m01_couplers_to_axi_interconnect_0_AWADDR;
  assign M01_AXI_awvalid = m01_couplers_to_axi_interconnect_0_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_axi_interconnect_0_BREADY;
  assign M01_AXI_rready = m01_couplers_to_axi_interconnect_0_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_axi_interconnect_0_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_axi_interconnect_0_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_axi_interconnect_0_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[39:0] = m02_couplers_to_axi_interconnect_0_ARADDR;
  assign M02_AXI_arvalid = m02_couplers_to_axi_interconnect_0_ARVALID;
  assign M02_AXI_awaddr[39:0] = m02_couplers_to_axi_interconnect_0_AWADDR;
  assign M02_AXI_awvalid = m02_couplers_to_axi_interconnect_0_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_axi_interconnect_0_BREADY;
  assign M02_AXI_rready = m02_couplers_to_axi_interconnect_0_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_axi_interconnect_0_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_axi_interconnect_0_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_axi_interconnect_0_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[39:0] = m03_couplers_to_axi_interconnect_0_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_axi_interconnect_0_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_axi_interconnect_0_ARCACHE;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_axi_interconnect_0_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_axi_interconnect_0_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_axi_interconnect_0_ARPROT;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_axi_interconnect_0_ARSIZE;
  assign M03_AXI_arvalid[0] = m03_couplers_to_axi_interconnect_0_ARVALID;
  assign M03_AXI_awaddr[39:0] = m03_couplers_to_axi_interconnect_0_AWADDR;
  assign M03_AXI_awburst[1:0] = m03_couplers_to_axi_interconnect_0_AWBURST;
  assign M03_AXI_awcache[3:0] = m03_couplers_to_axi_interconnect_0_AWCACHE;
  assign M03_AXI_awlen[7:0] = m03_couplers_to_axi_interconnect_0_AWLEN;
  assign M03_AXI_awlock[0] = m03_couplers_to_axi_interconnect_0_AWLOCK;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_axi_interconnect_0_AWPROT;
  assign M03_AXI_awsize[2:0] = m03_couplers_to_axi_interconnect_0_AWSIZE;
  assign M03_AXI_awvalid[0] = m03_couplers_to_axi_interconnect_0_AWVALID;
  assign M03_AXI_bready[0] = m03_couplers_to_axi_interconnect_0_BREADY;
  assign M03_AXI_rready[0] = m03_couplers_to_axi_interconnect_0_RREADY;
  assign M03_AXI_wdata[255:0] = m03_couplers_to_axi_interconnect_0_WDATA;
  assign M03_AXI_wlast[0] = m03_couplers_to_axi_interconnect_0_WLAST;
  assign M03_AXI_wstrb[31:0] = m03_couplers_to_axi_interconnect_0_WSTRB;
  assign M03_AXI_wvalid[0] = m03_couplers_to_axi_interconnect_0_WVALID;
  assign M04_ACLK_1 = M04_ACLK;
  assign M04_ARESETN_1 = M04_ARESETN;
  assign M04_AXI_araddr[39:0] = m04_couplers_to_axi_interconnect_0_ARADDR;
  assign M04_AXI_arburst[1:0] = m04_couplers_to_axi_interconnect_0_ARBURST;
  assign M04_AXI_arcache[3:0] = m04_couplers_to_axi_interconnect_0_ARCACHE;
  assign M04_AXI_arlen[7:0] = m04_couplers_to_axi_interconnect_0_ARLEN;
  assign M04_AXI_arlock[0] = m04_couplers_to_axi_interconnect_0_ARLOCK;
  assign M04_AXI_arprot[2:0] = m04_couplers_to_axi_interconnect_0_ARPROT;
  assign M04_AXI_arsize[2:0] = m04_couplers_to_axi_interconnect_0_ARSIZE;
  assign M04_AXI_arvalid[0] = m04_couplers_to_axi_interconnect_0_ARVALID;
  assign M04_AXI_awaddr[39:0] = m04_couplers_to_axi_interconnect_0_AWADDR;
  assign M04_AXI_awburst[1:0] = m04_couplers_to_axi_interconnect_0_AWBURST;
  assign M04_AXI_awcache[3:0] = m04_couplers_to_axi_interconnect_0_AWCACHE;
  assign M04_AXI_awlen[7:0] = m04_couplers_to_axi_interconnect_0_AWLEN;
  assign M04_AXI_awlock[0] = m04_couplers_to_axi_interconnect_0_AWLOCK;
  assign M04_AXI_awprot[2:0] = m04_couplers_to_axi_interconnect_0_AWPROT;
  assign M04_AXI_awsize[2:0] = m04_couplers_to_axi_interconnect_0_AWSIZE;
  assign M04_AXI_awvalid[0] = m04_couplers_to_axi_interconnect_0_AWVALID;
  assign M04_AXI_bready[0] = m04_couplers_to_axi_interconnect_0_BREADY;
  assign M04_AXI_rready[0] = m04_couplers_to_axi_interconnect_0_RREADY;
  assign M04_AXI_wdata[255:0] = m04_couplers_to_axi_interconnect_0_WDATA;
  assign M04_AXI_wlast[0] = m04_couplers_to_axi_interconnect_0_WLAST;
  assign M04_AXI_wstrb[31:0] = m04_couplers_to_axi_interconnect_0_WSTRB;
  assign M04_AXI_wvalid[0] = m04_couplers_to_axi_interconnect_0_WVALID;
  assign M05_ACLK_1 = M05_ACLK;
  assign M05_ARESETN_1 = M05_ARESETN;
  assign M05_AXI_araddr[39:0] = m05_couplers_to_axi_interconnect_0_ARADDR;
  assign M05_AXI_arburst[1:0] = m05_couplers_to_axi_interconnect_0_ARBURST;
  assign M05_AXI_arcache[3:0] = m05_couplers_to_axi_interconnect_0_ARCACHE;
  assign M05_AXI_arlen[7:0] = m05_couplers_to_axi_interconnect_0_ARLEN;
  assign M05_AXI_arlock[0] = m05_couplers_to_axi_interconnect_0_ARLOCK;
  assign M05_AXI_arprot[2:0] = m05_couplers_to_axi_interconnect_0_ARPROT;
  assign M05_AXI_arsize[2:0] = m05_couplers_to_axi_interconnect_0_ARSIZE;
  assign M05_AXI_arvalid[0] = m05_couplers_to_axi_interconnect_0_ARVALID;
  assign M05_AXI_awaddr[39:0] = m05_couplers_to_axi_interconnect_0_AWADDR;
  assign M05_AXI_awburst[1:0] = m05_couplers_to_axi_interconnect_0_AWBURST;
  assign M05_AXI_awcache[3:0] = m05_couplers_to_axi_interconnect_0_AWCACHE;
  assign M05_AXI_awlen[7:0] = m05_couplers_to_axi_interconnect_0_AWLEN;
  assign M05_AXI_awlock[0] = m05_couplers_to_axi_interconnect_0_AWLOCK;
  assign M05_AXI_awprot[2:0] = m05_couplers_to_axi_interconnect_0_AWPROT;
  assign M05_AXI_awsize[2:0] = m05_couplers_to_axi_interconnect_0_AWSIZE;
  assign M05_AXI_awvalid[0] = m05_couplers_to_axi_interconnect_0_AWVALID;
  assign M05_AXI_bready[0] = m05_couplers_to_axi_interconnect_0_BREADY;
  assign M05_AXI_rready[0] = m05_couplers_to_axi_interconnect_0_RREADY;
  assign M05_AXI_wdata[255:0] = m05_couplers_to_axi_interconnect_0_WDATA;
  assign M05_AXI_wlast[0] = m05_couplers_to_axi_interconnect_0_WLAST;
  assign M05_AXI_wstrb[31:0] = m05_couplers_to_axi_interconnect_0_WSTRB;
  assign M05_AXI_wvalid[0] = m05_couplers_to_axi_interconnect_0_WVALID;
  assign M06_ACLK_1 = M06_ACLK;
  assign M06_ARESETN_1 = M06_ARESETN;
  assign M06_AXI_araddr[39:0] = m06_couplers_to_axi_interconnect_0_ARADDR;
  assign M06_AXI_arburst[1:0] = m06_couplers_to_axi_interconnect_0_ARBURST;
  assign M06_AXI_arcache[3:0] = m06_couplers_to_axi_interconnect_0_ARCACHE;
  assign M06_AXI_arlen[7:0] = m06_couplers_to_axi_interconnect_0_ARLEN;
  assign M06_AXI_arlock[0] = m06_couplers_to_axi_interconnect_0_ARLOCK;
  assign M06_AXI_arprot[2:0] = m06_couplers_to_axi_interconnect_0_ARPROT;
  assign M06_AXI_arsize[2:0] = m06_couplers_to_axi_interconnect_0_ARSIZE;
  assign M06_AXI_arvalid[0] = m06_couplers_to_axi_interconnect_0_ARVALID;
  assign M06_AXI_awaddr[39:0] = m06_couplers_to_axi_interconnect_0_AWADDR;
  assign M06_AXI_awburst[1:0] = m06_couplers_to_axi_interconnect_0_AWBURST;
  assign M06_AXI_awcache[3:0] = m06_couplers_to_axi_interconnect_0_AWCACHE;
  assign M06_AXI_awlen[7:0] = m06_couplers_to_axi_interconnect_0_AWLEN;
  assign M06_AXI_awlock[0] = m06_couplers_to_axi_interconnect_0_AWLOCK;
  assign M06_AXI_awprot[2:0] = m06_couplers_to_axi_interconnect_0_AWPROT;
  assign M06_AXI_awsize[2:0] = m06_couplers_to_axi_interconnect_0_AWSIZE;
  assign M06_AXI_awvalid[0] = m06_couplers_to_axi_interconnect_0_AWVALID;
  assign M06_AXI_bready[0] = m06_couplers_to_axi_interconnect_0_BREADY;
  assign M06_AXI_rready[0] = m06_couplers_to_axi_interconnect_0_RREADY;
  assign M06_AXI_wdata[255:0] = m06_couplers_to_axi_interconnect_0_WDATA;
  assign M06_AXI_wlast[0] = m06_couplers_to_axi_interconnect_0_WLAST;
  assign M06_AXI_wstrb[31:0] = m06_couplers_to_axi_interconnect_0_WSTRB;
  assign M06_AXI_wvalid[0] = m06_couplers_to_axi_interconnect_0_WVALID;
  assign M07_ACLK_1 = M07_ACLK;
  assign M07_ARESETN_1 = M07_ARESETN;
  assign M07_AXI_araddr[39:0] = m07_couplers_to_axi_interconnect_0_ARADDR;
  assign M07_AXI_arburst[1:0] = m07_couplers_to_axi_interconnect_0_ARBURST;
  assign M07_AXI_arcache[3:0] = m07_couplers_to_axi_interconnect_0_ARCACHE;
  assign M07_AXI_arlen[7:0] = m07_couplers_to_axi_interconnect_0_ARLEN;
  assign M07_AXI_arlock[0] = m07_couplers_to_axi_interconnect_0_ARLOCK;
  assign M07_AXI_arprot[2:0] = m07_couplers_to_axi_interconnect_0_ARPROT;
  assign M07_AXI_arsize[2:0] = m07_couplers_to_axi_interconnect_0_ARSIZE;
  assign M07_AXI_arvalid[0] = m07_couplers_to_axi_interconnect_0_ARVALID;
  assign M07_AXI_awaddr[39:0] = m07_couplers_to_axi_interconnect_0_AWADDR;
  assign M07_AXI_awburst[1:0] = m07_couplers_to_axi_interconnect_0_AWBURST;
  assign M07_AXI_awcache[3:0] = m07_couplers_to_axi_interconnect_0_AWCACHE;
  assign M07_AXI_awlen[7:0] = m07_couplers_to_axi_interconnect_0_AWLEN;
  assign M07_AXI_awlock[0] = m07_couplers_to_axi_interconnect_0_AWLOCK;
  assign M07_AXI_awprot[2:0] = m07_couplers_to_axi_interconnect_0_AWPROT;
  assign M07_AXI_awsize[2:0] = m07_couplers_to_axi_interconnect_0_AWSIZE;
  assign M07_AXI_awvalid[0] = m07_couplers_to_axi_interconnect_0_AWVALID;
  assign M07_AXI_bready[0] = m07_couplers_to_axi_interconnect_0_BREADY;
  assign M07_AXI_rready[0] = m07_couplers_to_axi_interconnect_0_RREADY;
  assign M07_AXI_wdata[255:0] = m07_couplers_to_axi_interconnect_0_WDATA;
  assign M07_AXI_wlast[0] = m07_couplers_to_axi_interconnect_0_WLAST;
  assign M07_AXI_wstrb[31:0] = m07_couplers_to_axi_interconnect_0_WSTRB;
  assign M07_AXI_wvalid[0] = m07_couplers_to_axi_interconnect_0_WVALID;
  assign M08_ACLK_1 = M08_ACLK;
  assign M08_ARESETN_1 = M08_ARESETN;
  assign M08_AXI_araddr[39:0] = m08_couplers_to_axi_interconnect_0_ARADDR;
  assign M08_AXI_arburst[1:0] = m08_couplers_to_axi_interconnect_0_ARBURST;
  assign M08_AXI_arcache[3:0] = m08_couplers_to_axi_interconnect_0_ARCACHE;
  assign M08_AXI_arlen[7:0] = m08_couplers_to_axi_interconnect_0_ARLEN;
  assign M08_AXI_arlock[0] = m08_couplers_to_axi_interconnect_0_ARLOCK;
  assign M08_AXI_arprot[2:0] = m08_couplers_to_axi_interconnect_0_ARPROT;
  assign M08_AXI_arsize[2:0] = m08_couplers_to_axi_interconnect_0_ARSIZE;
  assign M08_AXI_arvalid[0] = m08_couplers_to_axi_interconnect_0_ARVALID;
  assign M08_AXI_awaddr[39:0] = m08_couplers_to_axi_interconnect_0_AWADDR;
  assign M08_AXI_awburst[1:0] = m08_couplers_to_axi_interconnect_0_AWBURST;
  assign M08_AXI_awcache[3:0] = m08_couplers_to_axi_interconnect_0_AWCACHE;
  assign M08_AXI_awlen[7:0] = m08_couplers_to_axi_interconnect_0_AWLEN;
  assign M08_AXI_awlock[0] = m08_couplers_to_axi_interconnect_0_AWLOCK;
  assign M08_AXI_awprot[2:0] = m08_couplers_to_axi_interconnect_0_AWPROT;
  assign M08_AXI_awsize[2:0] = m08_couplers_to_axi_interconnect_0_AWSIZE;
  assign M08_AXI_awvalid[0] = m08_couplers_to_axi_interconnect_0_AWVALID;
  assign M08_AXI_bready[0] = m08_couplers_to_axi_interconnect_0_BREADY;
  assign M08_AXI_rready[0] = m08_couplers_to_axi_interconnect_0_RREADY;
  assign M08_AXI_wdata[255:0] = m08_couplers_to_axi_interconnect_0_WDATA;
  assign M08_AXI_wlast[0] = m08_couplers_to_axi_interconnect_0_WLAST;
  assign M08_AXI_wstrb[31:0] = m08_couplers_to_axi_interconnect_0_WSTRB;
  assign M08_AXI_wvalid[0] = m08_couplers_to_axi_interconnect_0_WVALID;
  assign M09_ACLK_1 = M09_ACLK;
  assign M09_ARESETN_1 = M09_ARESETN;
  assign M09_AXI_araddr[39:0] = m09_couplers_to_axi_interconnect_0_ARADDR;
  assign M09_AXI_arburst[1:0] = m09_couplers_to_axi_interconnect_0_ARBURST;
  assign M09_AXI_arcache[3:0] = m09_couplers_to_axi_interconnect_0_ARCACHE;
  assign M09_AXI_arlen[7:0] = m09_couplers_to_axi_interconnect_0_ARLEN;
  assign M09_AXI_arlock[0] = m09_couplers_to_axi_interconnect_0_ARLOCK;
  assign M09_AXI_arprot[2:0] = m09_couplers_to_axi_interconnect_0_ARPROT;
  assign M09_AXI_arsize[2:0] = m09_couplers_to_axi_interconnect_0_ARSIZE;
  assign M09_AXI_arvalid[0] = m09_couplers_to_axi_interconnect_0_ARVALID;
  assign M09_AXI_awaddr[39:0] = m09_couplers_to_axi_interconnect_0_AWADDR;
  assign M09_AXI_awburst[1:0] = m09_couplers_to_axi_interconnect_0_AWBURST;
  assign M09_AXI_awcache[3:0] = m09_couplers_to_axi_interconnect_0_AWCACHE;
  assign M09_AXI_awlen[7:0] = m09_couplers_to_axi_interconnect_0_AWLEN;
  assign M09_AXI_awlock[0] = m09_couplers_to_axi_interconnect_0_AWLOCK;
  assign M09_AXI_awprot[2:0] = m09_couplers_to_axi_interconnect_0_AWPROT;
  assign M09_AXI_awsize[2:0] = m09_couplers_to_axi_interconnect_0_AWSIZE;
  assign M09_AXI_awvalid[0] = m09_couplers_to_axi_interconnect_0_AWVALID;
  assign M09_AXI_bready[0] = m09_couplers_to_axi_interconnect_0_BREADY;
  assign M09_AXI_rready[0] = m09_couplers_to_axi_interconnect_0_RREADY;
  assign M09_AXI_wdata[255:0] = m09_couplers_to_axi_interconnect_0_WDATA;
  assign M09_AXI_wlast[0] = m09_couplers_to_axi_interconnect_0_WLAST;
  assign M09_AXI_wstrb[31:0] = m09_couplers_to_axi_interconnect_0_WSTRB;
  assign M09_AXI_wvalid[0] = m09_couplers_to_axi_interconnect_0_WVALID;
  assign M10_ACLK_1 = M10_ACLK;
  assign M10_ARESETN_1 = M10_ARESETN;
  assign M10_AXI_araddr[39:0] = m10_couplers_to_axi_interconnect_0_ARADDR;
  assign M10_AXI_arburst[1:0] = m10_couplers_to_axi_interconnect_0_ARBURST;
  assign M10_AXI_arcache[3:0] = m10_couplers_to_axi_interconnect_0_ARCACHE;
  assign M10_AXI_arlen[7:0] = m10_couplers_to_axi_interconnect_0_ARLEN;
  assign M10_AXI_arlock[0] = m10_couplers_to_axi_interconnect_0_ARLOCK;
  assign M10_AXI_arprot[2:0] = m10_couplers_to_axi_interconnect_0_ARPROT;
  assign M10_AXI_arsize[2:0] = m10_couplers_to_axi_interconnect_0_ARSIZE;
  assign M10_AXI_arvalid[0] = m10_couplers_to_axi_interconnect_0_ARVALID;
  assign M10_AXI_awaddr[39:0] = m10_couplers_to_axi_interconnect_0_AWADDR;
  assign M10_AXI_awburst[1:0] = m10_couplers_to_axi_interconnect_0_AWBURST;
  assign M10_AXI_awcache[3:0] = m10_couplers_to_axi_interconnect_0_AWCACHE;
  assign M10_AXI_awlen[7:0] = m10_couplers_to_axi_interconnect_0_AWLEN;
  assign M10_AXI_awlock[0] = m10_couplers_to_axi_interconnect_0_AWLOCK;
  assign M10_AXI_awprot[2:0] = m10_couplers_to_axi_interconnect_0_AWPROT;
  assign M10_AXI_awsize[2:0] = m10_couplers_to_axi_interconnect_0_AWSIZE;
  assign M10_AXI_awvalid[0] = m10_couplers_to_axi_interconnect_0_AWVALID;
  assign M10_AXI_bready[0] = m10_couplers_to_axi_interconnect_0_BREADY;
  assign M10_AXI_rready[0] = m10_couplers_to_axi_interconnect_0_RREADY;
  assign M10_AXI_wdata[255:0] = m10_couplers_to_axi_interconnect_0_WDATA;
  assign M10_AXI_wlast[0] = m10_couplers_to_axi_interconnect_0_WLAST;
  assign M10_AXI_wstrb[31:0] = m10_couplers_to_axi_interconnect_0_WSTRB;
  assign M10_AXI_wvalid[0] = m10_couplers_to_axi_interconnect_0_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = axi_interconnect_0_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_0_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = axi_interconnect_0_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = axi_interconnect_0_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_0_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[127:0] = axi_interconnect_0_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = axi_interconnect_0_to_s00_couplers_RID;
  assign S00_AXI_rlast = axi_interconnect_0_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_0_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_0_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_0_to_s00_couplers_WREADY;
  assign axi_interconnect_0_ACLK_net = ACLK;
  assign axi_interconnect_0_ARESETN_net = ARESETN;
  assign axi_interconnect_0_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign axi_interconnect_0_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign axi_interconnect_0_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign axi_interconnect_0_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign axi_interconnect_0_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_0_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign axi_interconnect_0_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_0_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign axi_interconnect_0_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_0_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign axi_interconnect_0_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_0_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_0_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign axi_interconnect_0_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_0_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_0_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_0_to_s00_couplers_WDATA = S00_AXI_wdata[127:0];
  assign axi_interconnect_0_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_0_to_s00_couplers_WSTRB = S00_AXI_wstrb[15:0];
  assign axi_interconnect_0_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_0_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_0_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_0_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_0_RDATA = M00_AXI_rdata[255:0];
  assign m00_couplers_to_axi_interconnect_0_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_0_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_0_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_0_WREADY = M00_AXI_wready;
  assign m01_couplers_to_axi_interconnect_0_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_axi_interconnect_0_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_axi_interconnect_0_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_axi_interconnect_0_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_axi_interconnect_0_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_axi_interconnect_0_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_axi_interconnect_0_WREADY = M01_AXI_wready;
  assign m02_couplers_to_axi_interconnect_0_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_axi_interconnect_0_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_axi_interconnect_0_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_axi_interconnect_0_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_axi_interconnect_0_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_axi_interconnect_0_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_axi_interconnect_0_WREADY = M02_AXI_wready;
  assign m03_couplers_to_axi_interconnect_0_ARREADY = M03_AXI_arready[0];
  assign m03_couplers_to_axi_interconnect_0_AWREADY = M03_AXI_awready[0];
  assign m03_couplers_to_axi_interconnect_0_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_BVALID = M03_AXI_bvalid[0];
  assign m03_couplers_to_axi_interconnect_0_RDATA = M03_AXI_rdata[255:0];
  assign m03_couplers_to_axi_interconnect_0_RLAST = M03_AXI_rlast[0];
  assign m03_couplers_to_axi_interconnect_0_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_axi_interconnect_0_RVALID = M03_AXI_rvalid[0];
  assign m03_couplers_to_axi_interconnect_0_WREADY = M03_AXI_wready[0];
  assign m04_couplers_to_axi_interconnect_0_ARREADY = M04_AXI_arready[0];
  assign m04_couplers_to_axi_interconnect_0_AWREADY = M04_AXI_awready[0];
  assign m04_couplers_to_axi_interconnect_0_BRESP = M04_AXI_bresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_BVALID = M04_AXI_bvalid[0];
  assign m04_couplers_to_axi_interconnect_0_RDATA = M04_AXI_rdata[255:0];
  assign m04_couplers_to_axi_interconnect_0_RLAST = M04_AXI_rlast[0];
  assign m04_couplers_to_axi_interconnect_0_RRESP = M04_AXI_rresp[1:0];
  assign m04_couplers_to_axi_interconnect_0_RVALID = M04_AXI_rvalid[0];
  assign m04_couplers_to_axi_interconnect_0_WREADY = M04_AXI_wready[0];
  assign m05_couplers_to_axi_interconnect_0_ARREADY = M05_AXI_arready[0];
  assign m05_couplers_to_axi_interconnect_0_AWREADY = M05_AXI_awready[0];
  assign m05_couplers_to_axi_interconnect_0_BRESP = M05_AXI_bresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_BVALID = M05_AXI_bvalid[0];
  assign m05_couplers_to_axi_interconnect_0_RDATA = M05_AXI_rdata[255:0];
  assign m05_couplers_to_axi_interconnect_0_RLAST = M05_AXI_rlast[0];
  assign m05_couplers_to_axi_interconnect_0_RRESP = M05_AXI_rresp[1:0];
  assign m05_couplers_to_axi_interconnect_0_RVALID = M05_AXI_rvalid[0];
  assign m05_couplers_to_axi_interconnect_0_WREADY = M05_AXI_wready[0];
  assign m06_couplers_to_axi_interconnect_0_ARREADY = M06_AXI_arready[0];
  assign m06_couplers_to_axi_interconnect_0_AWREADY = M06_AXI_awready[0];
  assign m06_couplers_to_axi_interconnect_0_BRESP = M06_AXI_bresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_BVALID = M06_AXI_bvalid[0];
  assign m06_couplers_to_axi_interconnect_0_RDATA = M06_AXI_rdata[255:0];
  assign m06_couplers_to_axi_interconnect_0_RLAST = M06_AXI_rlast[0];
  assign m06_couplers_to_axi_interconnect_0_RRESP = M06_AXI_rresp[1:0];
  assign m06_couplers_to_axi_interconnect_0_RVALID = M06_AXI_rvalid[0];
  assign m06_couplers_to_axi_interconnect_0_WREADY = M06_AXI_wready[0];
  assign m07_couplers_to_axi_interconnect_0_ARREADY = M07_AXI_arready[0];
  assign m07_couplers_to_axi_interconnect_0_AWREADY = M07_AXI_awready[0];
  assign m07_couplers_to_axi_interconnect_0_BRESP = M07_AXI_bresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_BVALID = M07_AXI_bvalid[0];
  assign m07_couplers_to_axi_interconnect_0_RDATA = M07_AXI_rdata[255:0];
  assign m07_couplers_to_axi_interconnect_0_RLAST = M07_AXI_rlast[0];
  assign m07_couplers_to_axi_interconnect_0_RRESP = M07_AXI_rresp[1:0];
  assign m07_couplers_to_axi_interconnect_0_RVALID = M07_AXI_rvalid[0];
  assign m07_couplers_to_axi_interconnect_0_WREADY = M07_AXI_wready[0];
  assign m08_couplers_to_axi_interconnect_0_ARREADY = M08_AXI_arready[0];
  assign m08_couplers_to_axi_interconnect_0_AWREADY = M08_AXI_awready[0];
  assign m08_couplers_to_axi_interconnect_0_BRESP = M08_AXI_bresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_BVALID = M08_AXI_bvalid[0];
  assign m08_couplers_to_axi_interconnect_0_RDATA = M08_AXI_rdata[255:0];
  assign m08_couplers_to_axi_interconnect_0_RLAST = M08_AXI_rlast[0];
  assign m08_couplers_to_axi_interconnect_0_RRESP = M08_AXI_rresp[1:0];
  assign m08_couplers_to_axi_interconnect_0_RVALID = M08_AXI_rvalid[0];
  assign m08_couplers_to_axi_interconnect_0_WREADY = M08_AXI_wready[0];
  assign m09_couplers_to_axi_interconnect_0_ARREADY = M09_AXI_arready[0];
  assign m09_couplers_to_axi_interconnect_0_AWREADY = M09_AXI_awready[0];
  assign m09_couplers_to_axi_interconnect_0_BRESP = M09_AXI_bresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_BVALID = M09_AXI_bvalid[0];
  assign m09_couplers_to_axi_interconnect_0_RDATA = M09_AXI_rdata[255:0];
  assign m09_couplers_to_axi_interconnect_0_RLAST = M09_AXI_rlast[0];
  assign m09_couplers_to_axi_interconnect_0_RRESP = M09_AXI_rresp[1:0];
  assign m09_couplers_to_axi_interconnect_0_RVALID = M09_AXI_rvalid[0];
  assign m09_couplers_to_axi_interconnect_0_WREADY = M09_AXI_wready[0];
  assign m10_couplers_to_axi_interconnect_0_ARREADY = M10_AXI_arready[0];
  assign m10_couplers_to_axi_interconnect_0_AWREADY = M10_AXI_awready[0];
  assign m10_couplers_to_axi_interconnect_0_BRESP = M10_AXI_bresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_BVALID = M10_AXI_bvalid[0];
  assign m10_couplers_to_axi_interconnect_0_RDATA = M10_AXI_rdata[255:0];
  assign m10_couplers_to_axi_interconnect_0_RLAST = M10_AXI_rlast[0];
  assign m10_couplers_to_axi_interconnect_0_RRESP = M10_AXI_rresp[1:0];
  assign m10_couplers_to_axi_interconnect_0_RVALID = M10_AXI_rvalid[0];
  assign m10_couplers_to_axi_interconnect_0_WREADY = M10_AXI_wready[0];
  m00_couplers_imp_1CA5Z32 m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_I4GRPB m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m01_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m01_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m01_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m01_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m01_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m01_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m01_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m01_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m01_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m01_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m01_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m01_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_1BOGR4T m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arready(m02_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awready(m02_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m02_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m02_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m02_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m02_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rready(m02_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m02_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m02_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m02_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wready(m02_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m02_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_J0G1J0 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m03_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m03_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m03_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m03_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m03_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m03_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m03_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m03_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m03_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m03_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m03_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m03_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m03_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m03_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m03_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m03_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m03_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m03_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m03_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m03_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m03_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m03_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m03_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m03_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m03_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m03_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m03_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m03_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m03_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m03_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m03_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m03_couplers_WLAST),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_19YU2FS m04_couplers
       (.M_ACLK(M04_ACLK_1),
        .M_ARESETN(M04_ARESETN_1),
        .M_AXI_araddr(m04_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m04_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m04_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m04_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m04_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m04_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m04_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m04_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m04_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m04_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m04_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m04_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m04_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m04_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m04_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m04_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m04_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m04_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m04_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m04_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m04_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m04_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m04_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m04_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m04_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m04_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m04_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m04_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m04_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m04_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m04_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m04_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m04_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m04_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m04_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m04_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m04_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m04_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m04_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m04_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m04_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m04_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m04_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m04_couplers_RLAST),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m04_couplers_WLAST),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_KSVY9L m05_couplers
       (.M_ACLK(M05_ACLK_1),
        .M_ARESETN(M05_ARESETN_1),
        .M_AXI_araddr(m05_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m05_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m05_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m05_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m05_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m05_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m05_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m05_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m05_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m05_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m05_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m05_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m05_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m05_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m05_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m05_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m05_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m05_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m05_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m05_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m05_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m05_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m05_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m05_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m05_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m05_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m05_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m05_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m05_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m05_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m05_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m05_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m05_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m05_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m05_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m05_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m05_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m05_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m05_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m05_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m05_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m05_couplers_RLAST),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m05_couplers_WLAST),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  m06_couplers_imp_18J6S0R m06_couplers
       (.M_ACLK(M06_ACLK_1),
        .M_ARESETN(M06_ARESETN_1),
        .M_AXI_araddr(m06_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m06_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m06_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m06_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m06_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m06_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m06_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m06_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m06_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m06_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m06_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m06_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m06_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m06_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m06_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m06_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m06_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m06_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m06_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m06_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m06_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m06_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m06_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m06_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m06_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m06_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m06_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m06_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m06_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m06_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m06_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m06_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m06_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m06_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m06_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m06_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m06_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m06_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m06_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m06_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m06_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m06_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m06_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m06_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m06_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m06_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m06_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m06_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m06_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m06_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m06_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m06_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m06_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m06_couplers_RLAST),
        .S_AXI_rready(xbar_to_m06_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m06_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m06_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m06_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m06_couplers_WLAST),
        .S_AXI_wready(xbar_to_m06_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m06_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m06_couplers_WVALID));
  m07_couplers_imp_LYVHKQ m07_couplers
       (.M_ACLK(M07_ACLK_1),
        .M_ARESETN(M07_ARESETN_1),
        .M_AXI_araddr(m07_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m07_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m07_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m07_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m07_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m07_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m07_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m07_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m07_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m07_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m07_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m07_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m07_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m07_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m07_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m07_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m07_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m07_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m07_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m07_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m07_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m07_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m07_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m07_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m07_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m07_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m07_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m07_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m07_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m07_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m07_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m07_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m07_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m07_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m07_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m07_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m07_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m07_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m07_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m07_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m07_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m07_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m07_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m07_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m07_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m07_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m07_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m07_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m07_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m07_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m07_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m07_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m07_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m07_couplers_RLAST),
        .S_AXI_rready(xbar_to_m07_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m07_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m07_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m07_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m07_couplers_WLAST),
        .S_AXI_wready(xbar_to_m07_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m07_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m07_couplers_WVALID));
  m08_couplers_imp_1FF5BKI m08_couplers
       (.M_ACLK(M08_ACLK_1),
        .M_ARESETN(M08_ARESETN_1),
        .M_AXI_araddr(m08_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m08_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m08_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m08_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m08_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m08_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m08_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m08_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m08_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m08_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m08_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m08_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m08_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m08_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m08_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m08_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m08_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m08_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m08_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m08_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m08_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m08_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m08_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m08_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m08_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m08_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m08_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m08_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m08_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m08_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m08_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m08_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m08_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m08_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m08_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m08_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m08_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m08_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m08_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m08_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m08_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m08_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m08_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m08_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m08_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m08_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m08_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m08_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m08_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m08_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m08_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m08_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m08_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m08_couplers_RLAST),
        .S_AXI_rready(xbar_to_m08_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m08_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m08_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m08_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m08_couplers_WLAST),
        .S_AXI_wready(xbar_to_m08_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m08_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m08_couplers_WVALID));
  m09_couplers_imp_NV1J5F m09_couplers
       (.M_ACLK(M09_ACLK_1),
        .M_ARESETN(M09_ARESETN_1),
        .M_AXI_araddr(m09_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m09_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m09_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m09_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m09_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m09_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m09_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m09_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m09_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m09_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m09_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m09_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m09_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m09_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m09_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m09_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m09_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m09_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m09_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m09_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m09_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m09_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m09_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m09_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m09_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m09_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m09_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m09_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m09_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m09_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m09_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m09_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m09_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m09_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m09_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m09_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m09_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m09_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m09_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m09_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m09_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m09_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m09_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m09_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m09_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m09_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m09_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m09_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m09_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m09_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m09_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m09_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m09_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m09_couplers_RLAST),
        .S_AXI_rready(xbar_to_m09_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m09_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m09_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m09_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m09_couplers_WLAST),
        .S_AXI_wready(xbar_to_m09_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m09_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m09_couplers_WVALID));
  m10_couplers_imp_XTG13A m10_couplers
       (.M_ACLK(M10_ACLK_1),
        .M_ARESETN(M10_ARESETN_1),
        .M_AXI_araddr(m10_couplers_to_axi_interconnect_0_ARADDR),
        .M_AXI_arburst(m10_couplers_to_axi_interconnect_0_ARBURST),
        .M_AXI_arcache(m10_couplers_to_axi_interconnect_0_ARCACHE),
        .M_AXI_arlen(m10_couplers_to_axi_interconnect_0_ARLEN),
        .M_AXI_arlock(m10_couplers_to_axi_interconnect_0_ARLOCK),
        .M_AXI_arprot(m10_couplers_to_axi_interconnect_0_ARPROT),
        .M_AXI_arready(m10_couplers_to_axi_interconnect_0_ARREADY),
        .M_AXI_arsize(m10_couplers_to_axi_interconnect_0_ARSIZE),
        .M_AXI_arvalid(m10_couplers_to_axi_interconnect_0_ARVALID),
        .M_AXI_awaddr(m10_couplers_to_axi_interconnect_0_AWADDR),
        .M_AXI_awburst(m10_couplers_to_axi_interconnect_0_AWBURST),
        .M_AXI_awcache(m10_couplers_to_axi_interconnect_0_AWCACHE),
        .M_AXI_awlen(m10_couplers_to_axi_interconnect_0_AWLEN),
        .M_AXI_awlock(m10_couplers_to_axi_interconnect_0_AWLOCK),
        .M_AXI_awprot(m10_couplers_to_axi_interconnect_0_AWPROT),
        .M_AXI_awready(m10_couplers_to_axi_interconnect_0_AWREADY),
        .M_AXI_awsize(m10_couplers_to_axi_interconnect_0_AWSIZE),
        .M_AXI_awvalid(m10_couplers_to_axi_interconnect_0_AWVALID),
        .M_AXI_bready(m10_couplers_to_axi_interconnect_0_BREADY),
        .M_AXI_bresp(m10_couplers_to_axi_interconnect_0_BRESP),
        .M_AXI_bvalid(m10_couplers_to_axi_interconnect_0_BVALID),
        .M_AXI_rdata(m10_couplers_to_axi_interconnect_0_RDATA),
        .M_AXI_rlast(m10_couplers_to_axi_interconnect_0_RLAST),
        .M_AXI_rready(m10_couplers_to_axi_interconnect_0_RREADY),
        .M_AXI_rresp(m10_couplers_to_axi_interconnect_0_RRESP),
        .M_AXI_rvalid(m10_couplers_to_axi_interconnect_0_RVALID),
        .M_AXI_wdata(m10_couplers_to_axi_interconnect_0_WDATA),
        .M_AXI_wlast(m10_couplers_to_axi_interconnect_0_WLAST),
        .M_AXI_wready(m10_couplers_to_axi_interconnect_0_WREADY),
        .M_AXI_wstrb(m10_couplers_to_axi_interconnect_0_WSTRB),
        .M_AXI_wvalid(m10_couplers_to_axi_interconnect_0_WVALID),
        .S_ACLK(axi_interconnect_0_ACLK_net),
        .S_ARESETN(axi_interconnect_0_ARESETN_net),
        .S_AXI_araddr(xbar_to_m10_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m10_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m10_couplers_ARCACHE),
        .S_AXI_arlen(xbar_to_m10_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m10_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m10_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m10_couplers_ARREADY),
        .S_AXI_arsize(xbar_to_m10_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m10_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m10_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m10_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m10_couplers_AWCACHE),
        .S_AXI_awlen(xbar_to_m10_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m10_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m10_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m10_couplers_AWREADY),
        .S_AXI_awsize(xbar_to_m10_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m10_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m10_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m10_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m10_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m10_couplers_RDATA),
        .S_AXI_rlast(xbar_to_m10_couplers_RLAST),
        .S_AXI_rready(xbar_to_m10_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m10_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m10_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m10_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m10_couplers_WLAST),
        .S_AXI_wready(xbar_to_m10_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m10_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m10_couplers_WVALID));
  s00_couplers_imp_O7FAN0 s00_couplers
       (.M_ACLK(axi_interconnect_0_ACLK_net),
        .M_ARESETN(axi_interconnect_0_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(axi_interconnect_0_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_0_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_0_to_s00_couplers_ARCACHE),
        .S_AXI_arid(axi_interconnect_0_to_s00_couplers_ARID),
        .S_AXI_arlen(axi_interconnect_0_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_0_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_0_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_0_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_0_to_s00_couplers_ARREADY),
        .S_AXI_arsize(axi_interconnect_0_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(axi_interconnect_0_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(axi_interconnect_0_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_0_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_0_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_0_to_s00_couplers_AWCACHE),
        .S_AXI_awid(axi_interconnect_0_to_s00_couplers_AWID),
        .S_AXI_awlen(axi_interconnect_0_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_0_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_0_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_0_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_0_to_s00_couplers_AWREADY),
        .S_AXI_awsize(axi_interconnect_0_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(axi_interconnect_0_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(axi_interconnect_0_to_s00_couplers_AWVALID),
        .S_AXI_bid(axi_interconnect_0_to_s00_couplers_BID),
        .S_AXI_bready(axi_interconnect_0_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_0_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_0_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_0_to_s00_couplers_RDATA),
        .S_AXI_rid(axi_interconnect_0_to_s00_couplers_RID),
        .S_AXI_rlast(axi_interconnect_0_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_0_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_0_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_0_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_0_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_0_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_0_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_0_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_0_to_s00_couplers_WVALID));
  design_1_xbar_0 xbar
       (.aclk(axi_interconnect_0_ACLK_net),
        .aresetn(axi_interconnect_0_ARESETN_net),
        .m_axi_araddr({xbar_to_m10_couplers_ARADDR,xbar_to_m09_couplers_ARADDR,xbar_to_m08_couplers_ARADDR,xbar_to_m07_couplers_ARADDR,xbar_to_m06_couplers_ARADDR,xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m10_couplers_ARBURST,xbar_to_m09_couplers_ARBURST,xbar_to_m08_couplers_ARBURST,xbar_to_m07_couplers_ARBURST,xbar_to_m06_couplers_ARBURST,xbar_to_m05_couplers_ARBURST,xbar_to_m04_couplers_ARBURST,xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m10_couplers_ARCACHE,xbar_to_m09_couplers_ARCACHE,xbar_to_m08_couplers_ARCACHE,xbar_to_m07_couplers_ARCACHE,xbar_to_m06_couplers_ARCACHE,xbar_to_m05_couplers_ARCACHE,xbar_to_m04_couplers_ARCACHE,xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arlen({xbar_to_m10_couplers_ARLEN,xbar_to_m09_couplers_ARLEN,xbar_to_m08_couplers_ARLEN,xbar_to_m07_couplers_ARLEN,xbar_to_m06_couplers_ARLEN,xbar_to_m05_couplers_ARLEN,xbar_to_m04_couplers_ARLEN,xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m10_couplers_ARLOCK,xbar_to_m09_couplers_ARLOCK,xbar_to_m08_couplers_ARLOCK,xbar_to_m07_couplers_ARLOCK,xbar_to_m06_couplers_ARLOCK,xbar_to_m05_couplers_ARLOCK,xbar_to_m04_couplers_ARLOCK,xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m10_couplers_ARPROT,xbar_to_m09_couplers_ARPROT,xbar_to_m08_couplers_ARPROT,xbar_to_m07_couplers_ARPROT,xbar_to_m06_couplers_ARPROT,xbar_to_m05_couplers_ARPROT,xbar_to_m04_couplers_ARPROT,xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m10_couplers_ARREADY,xbar_to_m09_couplers_ARREADY,xbar_to_m08_couplers_ARREADY,xbar_to_m07_couplers_ARREADY,xbar_to_m06_couplers_ARREADY,xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m10_couplers_ARSIZE,xbar_to_m09_couplers_ARSIZE,xbar_to_m08_couplers_ARSIZE,xbar_to_m07_couplers_ARSIZE,xbar_to_m06_couplers_ARSIZE,xbar_to_m05_couplers_ARSIZE,xbar_to_m04_couplers_ARSIZE,xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m10_couplers_ARVALID,xbar_to_m09_couplers_ARVALID,xbar_to_m08_couplers_ARVALID,xbar_to_m07_couplers_ARVALID,xbar_to_m06_couplers_ARVALID,xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m10_couplers_AWADDR,xbar_to_m09_couplers_AWADDR,xbar_to_m08_couplers_AWADDR,xbar_to_m07_couplers_AWADDR,xbar_to_m06_couplers_AWADDR,xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m10_couplers_AWBURST,xbar_to_m09_couplers_AWBURST,xbar_to_m08_couplers_AWBURST,xbar_to_m07_couplers_AWBURST,xbar_to_m06_couplers_AWBURST,xbar_to_m05_couplers_AWBURST,xbar_to_m04_couplers_AWBURST,xbar_to_m03_couplers_AWBURST,xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m10_couplers_AWCACHE,xbar_to_m09_couplers_AWCACHE,xbar_to_m08_couplers_AWCACHE,xbar_to_m07_couplers_AWCACHE,xbar_to_m06_couplers_AWCACHE,xbar_to_m05_couplers_AWCACHE,xbar_to_m04_couplers_AWCACHE,xbar_to_m03_couplers_AWCACHE,xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awlen({xbar_to_m10_couplers_AWLEN,xbar_to_m09_couplers_AWLEN,xbar_to_m08_couplers_AWLEN,xbar_to_m07_couplers_AWLEN,xbar_to_m06_couplers_AWLEN,xbar_to_m05_couplers_AWLEN,xbar_to_m04_couplers_AWLEN,xbar_to_m03_couplers_AWLEN,xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m10_couplers_AWLOCK,xbar_to_m09_couplers_AWLOCK,xbar_to_m08_couplers_AWLOCK,xbar_to_m07_couplers_AWLOCK,xbar_to_m06_couplers_AWLOCK,xbar_to_m05_couplers_AWLOCK,xbar_to_m04_couplers_AWLOCK,xbar_to_m03_couplers_AWLOCK,xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m10_couplers_AWPROT,xbar_to_m09_couplers_AWPROT,xbar_to_m08_couplers_AWPROT,xbar_to_m07_couplers_AWPROT,xbar_to_m06_couplers_AWPROT,xbar_to_m05_couplers_AWPROT,xbar_to_m04_couplers_AWPROT,xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({xbar_to_m10_couplers_AWREADY,xbar_to_m09_couplers_AWREADY,xbar_to_m08_couplers_AWREADY,xbar_to_m07_couplers_AWREADY,xbar_to_m06_couplers_AWREADY,xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m10_couplers_AWSIZE,xbar_to_m09_couplers_AWSIZE,xbar_to_m08_couplers_AWSIZE,xbar_to_m07_couplers_AWSIZE,xbar_to_m06_couplers_AWSIZE,xbar_to_m05_couplers_AWSIZE,xbar_to_m04_couplers_AWSIZE,xbar_to_m03_couplers_AWSIZE,xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m10_couplers_AWVALID,xbar_to_m09_couplers_AWVALID,xbar_to_m08_couplers_AWVALID,xbar_to_m07_couplers_AWVALID,xbar_to_m06_couplers_AWVALID,xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m10_couplers_BREADY,xbar_to_m09_couplers_BREADY,xbar_to_m08_couplers_BREADY,xbar_to_m07_couplers_BREADY,xbar_to_m06_couplers_BREADY,xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m10_couplers_BRESP,xbar_to_m09_couplers_BRESP,xbar_to_m08_couplers_BRESP,xbar_to_m07_couplers_BRESP,xbar_to_m06_couplers_BRESP,xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m10_couplers_BVALID,xbar_to_m09_couplers_BVALID,xbar_to_m08_couplers_BVALID,xbar_to_m07_couplers_BVALID,xbar_to_m06_couplers_BVALID,xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m10_couplers_RDATA,xbar_to_m09_couplers_RDATA,xbar_to_m08_couplers_RDATA,xbar_to_m07_couplers_RDATA,xbar_to_m06_couplers_RDATA,xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rlast({xbar_to_m10_couplers_RLAST,xbar_to_m09_couplers_RLAST,xbar_to_m08_couplers_RLAST,xbar_to_m07_couplers_RLAST,xbar_to_m06_couplers_RLAST,xbar_to_m05_couplers_RLAST,xbar_to_m04_couplers_RLAST,xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m10_couplers_RREADY,xbar_to_m09_couplers_RREADY,xbar_to_m08_couplers_RREADY,xbar_to_m07_couplers_RREADY,xbar_to_m06_couplers_RREADY,xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m10_couplers_RRESP,xbar_to_m09_couplers_RRESP,xbar_to_m08_couplers_RRESP,xbar_to_m07_couplers_RRESP,xbar_to_m06_couplers_RRESP,xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m10_couplers_RVALID,xbar_to_m09_couplers_RVALID,xbar_to_m08_couplers_RVALID,xbar_to_m07_couplers_RVALID,xbar_to_m06_couplers_RVALID,xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m10_couplers_WDATA,xbar_to_m09_couplers_WDATA,xbar_to_m08_couplers_WDATA,xbar_to_m07_couplers_WDATA,xbar_to_m06_couplers_WDATA,xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m10_couplers_WLAST,xbar_to_m09_couplers_WLAST,xbar_to_m08_couplers_WLAST,xbar_to_m07_couplers_WLAST,xbar_to_m06_couplers_WLAST,xbar_to_m05_couplers_WLAST,xbar_to_m04_couplers_WLAST,xbar_to_m03_couplers_WLAST,xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({xbar_to_m10_couplers_WREADY,xbar_to_m09_couplers_WREADY,xbar_to_m08_couplers_WREADY,xbar_to_m07_couplers_WREADY,xbar_to_m06_couplers_WREADY,xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m10_couplers_WSTRB,xbar_to_m09_couplers_WSTRB,xbar_to_m08_couplers_WSTRB,xbar_to_m07_couplers_WSTRB,xbar_to_m06_couplers_WSTRB,xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m10_couplers_WVALID,xbar_to_m09_couplers_WVALID,xbar_to_m08_couplers_WVALID,xbar_to_m07_couplers_WVALID,xbar_to_m06_couplers_WVALID,xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module design_1_ps8_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_aruser,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awuser,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [17:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [17:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [39:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [15:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input [15:0]S00_AXI_aruser;
  input S00_AXI_arvalid;
  input [39:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [15:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input [15:0]S00_AXI_awuser;
  input S00_AXI_awvalid;
  output [15:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [15:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire ps8_0_axi_periph_ACLK_net;
  wire ps8_0_axi_periph_ARESETN_net;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_ARADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_ARBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_ARLEN;
  wire ps8_0_axi_periph_to_s00_couplers_ARLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_ARQOS;
  wire ps8_0_axi_periph_to_s00_couplers_ARREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_ARSIZE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_ARUSER;
  wire ps8_0_axi_periph_to_s00_couplers_ARVALID;
  wire [39:0]ps8_0_axi_periph_to_s00_couplers_AWADDR;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_AWBURST;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWCACHE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWID;
  wire [7:0]ps8_0_axi_periph_to_s00_couplers_AWLEN;
  wire ps8_0_axi_periph_to_s00_couplers_AWLOCK;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWPROT;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_AWQOS;
  wire ps8_0_axi_periph_to_s00_couplers_AWREADY;
  wire [2:0]ps8_0_axi_periph_to_s00_couplers_AWSIZE;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_AWUSER;
  wire ps8_0_axi_periph_to_s00_couplers_AWVALID;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_BID;
  wire ps8_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_BRESP;
  wire ps8_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_RDATA;
  wire [15:0]ps8_0_axi_periph_to_s00_couplers_RID;
  wire ps8_0_axi_periph_to_s00_couplers_RLAST;
  wire ps8_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]ps8_0_axi_periph_to_s00_couplers_RRESP;
  wire ps8_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]ps8_0_axi_periph_to_s00_couplers_WDATA;
  wire ps8_0_axi_periph_to_s00_couplers_WLAST;
  wire ps8_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]ps8_0_axi_periph_to_s00_couplers_WSTRB;
  wire ps8_0_axi_periph_to_s00_couplers_WVALID;
  wire [17:0]s00_couplers_to_ps8_0_axi_periph_ARADDR;
  wire s00_couplers_to_ps8_0_axi_periph_ARREADY;
  wire s00_couplers_to_ps8_0_axi_periph_ARVALID;
  wire [17:0]s00_couplers_to_ps8_0_axi_periph_AWADDR;
  wire s00_couplers_to_ps8_0_axi_periph_AWREADY;
  wire s00_couplers_to_ps8_0_axi_periph_AWVALID;
  wire s00_couplers_to_ps8_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_BRESP;
  wire s00_couplers_to_ps8_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_RDATA;
  wire s00_couplers_to_ps8_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_ps8_0_axi_periph_RRESP;
  wire s00_couplers_to_ps8_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_ps8_0_axi_periph_WDATA;
  wire s00_couplers_to_ps8_0_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_ps8_0_axi_periph_WSTRB;
  wire s00_couplers_to_ps8_0_axi_periph_WVALID;

  assign M00_AXI_araddr[17:0] = s00_couplers_to_ps8_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_ps8_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[17:0] = s00_couplers_to_ps8_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_ps8_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_ps8_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_ps8_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_ps8_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_ps8_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_ps8_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = ps8_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = ps8_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[15:0] = ps8_0_axi_periph_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = ps8_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = ps8_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = ps8_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rid[15:0] = ps8_0_axi_periph_to_s00_couplers_RID;
  assign S00_AXI_rlast = ps8_0_axi_periph_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = ps8_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = ps8_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = ps8_0_axi_periph_to_s00_couplers_WREADY;
  assign ps8_0_axi_periph_ACLK_net = M00_ACLK;
  assign ps8_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign ps8_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARID = S00_AXI_arid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARLOCK = S00_AXI_arlock;
  assign ps8_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARUSER = S00_AXI_aruser[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign ps8_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[39:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWID = S00_AXI_awid[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWLOCK = S00_AXI_awlock;
  assign ps8_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWUSER = S00_AXI_awuser[15:0];
  assign ps8_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign ps8_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign ps8_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign ps8_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign ps8_0_axi_periph_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign ps8_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign ps8_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_ps8_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_ps8_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_ps8_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_ps8_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_ps8_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_ps8_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_ps8_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_1A7ZMW4 s00_couplers
       (.M_ACLK(ps8_0_axi_periph_ACLK_net),
        .M_ARESETN(ps8_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_ps8_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_ps8_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_ps8_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_ps8_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_ps8_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_ps8_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_ps8_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_ps8_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_ps8_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_ps8_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_ps8_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_ps8_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_ps8_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_ps8_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_ps8_0_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_ps8_0_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_ps8_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(ps8_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arburst(ps8_0_axi_periph_to_s00_couplers_ARBURST),
        .S_AXI_arcache(ps8_0_axi_periph_to_s00_couplers_ARCACHE),
        .S_AXI_arid(ps8_0_axi_periph_to_s00_couplers_ARID),
        .S_AXI_arlen(ps8_0_axi_periph_to_s00_couplers_ARLEN),
        .S_AXI_arlock(ps8_0_axi_periph_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(ps8_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arqos(ps8_0_axi_periph_to_s00_couplers_ARQOS),
        .S_AXI_arready(ps8_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arsize(ps8_0_axi_periph_to_s00_couplers_ARSIZE),
        .S_AXI_aruser(ps8_0_axi_periph_to_s00_couplers_ARUSER),
        .S_AXI_arvalid(ps8_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(ps8_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awburst(ps8_0_axi_periph_to_s00_couplers_AWBURST),
        .S_AXI_awcache(ps8_0_axi_periph_to_s00_couplers_AWCACHE),
        .S_AXI_awid(ps8_0_axi_periph_to_s00_couplers_AWID),
        .S_AXI_awlen(ps8_0_axi_periph_to_s00_couplers_AWLEN),
        .S_AXI_awlock(ps8_0_axi_periph_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(ps8_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awqos(ps8_0_axi_periph_to_s00_couplers_AWQOS),
        .S_AXI_awready(ps8_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awsize(ps8_0_axi_periph_to_s00_couplers_AWSIZE),
        .S_AXI_awuser(ps8_0_axi_periph_to_s00_couplers_AWUSER),
        .S_AXI_awvalid(ps8_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bid(ps8_0_axi_periph_to_s00_couplers_BID),
        .S_AXI_bready(ps8_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(ps8_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(ps8_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(ps8_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rid(ps8_0_axi_periph_to_s00_couplers_RID),
        .S_AXI_rlast(ps8_0_axi_periph_to_s00_couplers_RLAST),
        .S_AXI_rready(ps8_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(ps8_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(ps8_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(ps8_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wlast(ps8_0_axi_periph_to_s00_couplers_WLAST),
        .S_AXI_wready(ps8_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(ps8_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(ps8_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module hier_rsts_imp_U2ZZF6
   (dcm_locked,
    ext_reset_in,
    interconnect_aresetn,
    interconnect_aresetn1,
    peripheral_aresetn,
    peripheral_aresetn2,
    slowest_sync_clk,
    slowest_sync_clk2);
  input dcm_locked;
  input ext_reset_in;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  output [0:0]peripheral_aresetn;
  output [0:0]peripheral_aresetn2;
  input slowest_sync_clk;
  input slowest_sync_clk2;

  wire dcm_locked_1;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire [0:0]reset_dac_clk_interconnect_aresetn;
  wire [0:0]rst_ps8_0_99M_interconnect_aresetn;
  wire [0:0]rst_ps8_0_99M_peripheral_aresetn;
  wire usp_rf_data_converter_0_clk_dac0;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  assign dcm_locked_1 = dcm_locked;
  assign interconnect_aresetn[0] = reset_dac_clk_interconnect_aresetn;
  assign interconnect_aresetn1[0] = rst_ps8_0_99M_interconnect_aresetn;
  assign peripheral_aresetn[0] = proc_sys_reset_1_peripheral_aresetn;
  assign peripheral_aresetn2[0] = rst_ps8_0_99M_peripheral_aresetn;
  assign usp_rf_data_converter_0_clk_dac0 = slowest_sync_clk;
  assign zynq_ultra_ps_e_0_pl_clk0 = slowest_sync_clk2;
  assign zynq_ultra_ps_e_0_pl_resetn0 = ext_reset_in;
  design_1_proc_sys_reset_1_0 reset_dac_clk
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(reset_dac_clk_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .slowest_sync_clk(usp_rf_data_converter_0_clk_dac0));
  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .interconnect_aresetn(rst_ps8_0_99M_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_ps8_0_99M_peripheral_aresetn),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
endmodule

module m00_couplers_imp_1CA5Z32
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [16:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [16:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [39:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [1:0]m00_couplers_to_m00_regslice_ARBURST;
  wire [3:0]m00_couplers_to_m00_regslice_ARCACHE;
  wire [7:0]m00_couplers_to_m00_regslice_ARLEN;
  wire [0:0]m00_couplers_to_m00_regslice_ARLOCK;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire [3:0]m00_couplers_to_m00_regslice_ARQOS;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire [3:0]m00_couplers_to_m00_regslice_ARREGION;
  wire [2:0]m00_couplers_to_m00_regslice_ARSIZE;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [39:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [1:0]m00_couplers_to_m00_regslice_AWBURST;
  wire [3:0]m00_couplers_to_m00_regslice_AWCACHE;
  wire [7:0]m00_couplers_to_m00_regslice_AWLEN;
  wire [0:0]m00_couplers_to_m00_regslice_AWLOCK;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire [3:0]m00_couplers_to_m00_regslice_AWQOS;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire [3:0]m00_couplers_to_m00_regslice_AWREGION;
  wire [2:0]m00_couplers_to_m00_regslice_AWSIZE;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [255:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RLAST;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [255:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WLAST;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [31:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [16:0]m00_regslice_to_m00_couplers_ARADDR;
  wire [1:0]m00_regslice_to_m00_couplers_ARBURST;
  wire [3:0]m00_regslice_to_m00_couplers_ARCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_ARLEN;
  wire [0:0]m00_regslice_to_m00_couplers_ARLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_ARPROT;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire [2:0]m00_regslice_to_m00_couplers_ARSIZE;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [16:0]m00_regslice_to_m00_couplers_AWADDR;
  wire [1:0]m00_regslice_to_m00_couplers_AWBURST;
  wire [3:0]m00_regslice_to_m00_couplers_AWCACHE;
  wire [7:0]m00_regslice_to_m00_couplers_AWLEN;
  wire [0:0]m00_regslice_to_m00_couplers_AWLOCK;
  wire [2:0]m00_regslice_to_m00_couplers_AWPROT;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire [2:0]m00_regslice_to_m00_couplers_AWSIZE;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [255:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RLAST;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [255:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WLAST;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [31:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[16:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m00_regslice_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m00_regslice_to_m00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m00_regslice_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[0] = m00_regslice_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m00_regslice_to_m00_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m00_regslice_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[16:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m00_regslice_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m00_regslice_to_m00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m00_regslice_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[0] = m00_regslice_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m00_regslice_to_m00_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m00_regslice_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wlast = m00_regslice_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[255:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rlast = m00_couplers_to_m00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[39:0];
  assign m00_couplers_to_m00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_m00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_m00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_m00_regslice_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_m00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_m00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign m00_couplers_to_m00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_m00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_m00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_m00_regslice_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_m00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_m00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[255:0];
  assign m00_couplers_to_m00_regslice_WLAST = S_AXI_wlast;
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[31:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[255:0];
  assign m00_regslice_to_m00_couplers_RLAST = M_AXI_rlast;
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  design_1_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arburst(m00_regslice_to_m00_couplers_ARBURST),
        .m_axi_arcache(m00_regslice_to_m00_couplers_ARCACHE),
        .m_axi_arlen(m00_regslice_to_m00_couplers_ARLEN),
        .m_axi_arlock(m00_regslice_to_m00_couplers_ARLOCK),
        .m_axi_arprot(m00_regslice_to_m00_couplers_ARPROT),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arsize(m00_regslice_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awburst(m00_regslice_to_m00_couplers_AWBURST),
        .m_axi_awcache(m00_regslice_to_m00_couplers_AWCACHE),
        .m_axi_awlen(m00_regslice_to_m00_couplers_AWLEN),
        .m_axi_awlock(m00_regslice_to_m00_couplers_AWLOCK),
        .m_axi_awprot(m00_regslice_to_m00_couplers_AWPROT),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awsize(m00_regslice_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rlast(m00_regslice_to_m00_couplers_RLAST),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wlast(m00_regslice_to_m00_couplers_WLAST),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR[16:0]),
        .s_axi_arburst(m00_couplers_to_m00_regslice_ARBURST),
        .s_axi_arcache(m00_couplers_to_m00_regslice_ARCACHE),
        .s_axi_arlen(m00_couplers_to_m00_regslice_ARLEN),
        .s_axi_arlock(m00_couplers_to_m00_regslice_ARLOCK),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arqos(m00_couplers_to_m00_regslice_ARQOS),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arregion(m00_couplers_to_m00_regslice_ARREGION),
        .s_axi_arsize(m00_couplers_to_m00_regslice_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR[16:0]),
        .s_axi_awburst(m00_couplers_to_m00_regslice_AWBURST),
        .s_axi_awcache(m00_couplers_to_m00_regslice_AWCACHE),
        .s_axi_awlen(m00_couplers_to_m00_regslice_AWLEN),
        .s_axi_awlock(m00_couplers_to_m00_regslice_AWLOCK),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awqos(m00_couplers_to_m00_regslice_AWQOS),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awregion(m00_couplers_to_m00_regslice_AWREGION),
        .s_axi_awsize(m00_couplers_to_m00_regslice_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rlast(m00_couplers_to_m00_regslice_RLAST),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wlast(m00_couplers_to_m00_regslice_WLAST),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m01_couplers_imp_I4GRPB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [8:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [8:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_rs_ARADDR;
  wire [1:0]auto_ds_to_auto_rs_ARBURST;
  wire [3:0]auto_ds_to_auto_rs_ARCACHE;
  wire [7:0]auto_ds_to_auto_rs_ARLEN;
  wire [0:0]auto_ds_to_auto_rs_ARLOCK;
  wire [2:0]auto_ds_to_auto_rs_ARPROT;
  wire [3:0]auto_ds_to_auto_rs_ARQOS;
  wire auto_ds_to_auto_rs_ARREADY;
  wire [3:0]auto_ds_to_auto_rs_ARREGION;
  wire [2:0]auto_ds_to_auto_rs_ARSIZE;
  wire auto_ds_to_auto_rs_ARVALID;
  wire [39:0]auto_ds_to_auto_rs_AWADDR;
  wire [1:0]auto_ds_to_auto_rs_AWBURST;
  wire [3:0]auto_ds_to_auto_rs_AWCACHE;
  wire [7:0]auto_ds_to_auto_rs_AWLEN;
  wire [0:0]auto_ds_to_auto_rs_AWLOCK;
  wire [2:0]auto_ds_to_auto_rs_AWPROT;
  wire [3:0]auto_ds_to_auto_rs_AWQOS;
  wire auto_ds_to_auto_rs_AWREADY;
  wire [3:0]auto_ds_to_auto_rs_AWREGION;
  wire [2:0]auto_ds_to_auto_rs_AWSIZE;
  wire auto_ds_to_auto_rs_AWVALID;
  wire auto_ds_to_auto_rs_BREADY;
  wire [1:0]auto_ds_to_auto_rs_BRESP;
  wire auto_ds_to_auto_rs_BVALID;
  wire [31:0]auto_ds_to_auto_rs_RDATA;
  wire auto_ds_to_auto_rs_RLAST;
  wire auto_ds_to_auto_rs_RREADY;
  wire [1:0]auto_ds_to_auto_rs_RRESP;
  wire auto_ds_to_auto_rs_RVALID;
  wire [31:0]auto_ds_to_auto_rs_WDATA;
  wire auto_ds_to_auto_rs_WLAST;
  wire auto_ds_to_auto_rs_WREADY;
  wire [3:0]auto_ds_to_auto_rs_WSTRB;
  wire auto_ds_to_auto_rs_WVALID;
  wire [39:0]auto_pc_to_m01_regslice_ARADDR;
  wire [2:0]auto_pc_to_m01_regslice_ARPROT;
  wire auto_pc_to_m01_regslice_ARREADY;
  wire auto_pc_to_m01_regslice_ARVALID;
  wire [39:0]auto_pc_to_m01_regslice_AWADDR;
  wire [2:0]auto_pc_to_m01_regslice_AWPROT;
  wire auto_pc_to_m01_regslice_AWREADY;
  wire auto_pc_to_m01_regslice_AWVALID;
  wire auto_pc_to_m01_regslice_BREADY;
  wire [1:0]auto_pc_to_m01_regslice_BRESP;
  wire auto_pc_to_m01_regslice_BVALID;
  wire [31:0]auto_pc_to_m01_regslice_RDATA;
  wire auto_pc_to_m01_regslice_RREADY;
  wire [1:0]auto_pc_to_m01_regslice_RRESP;
  wire auto_pc_to_m01_regslice_RVALID;
  wire [31:0]auto_pc_to_m01_regslice_WDATA;
  wire auto_pc_to_m01_regslice_WREADY;
  wire [3:0]auto_pc_to_m01_regslice_WSTRB;
  wire auto_pc_to_m01_regslice_WVALID;
  wire [39:0]auto_rs_to_auto_pc_ARADDR;
  wire [1:0]auto_rs_to_auto_pc_ARBURST;
  wire [3:0]auto_rs_to_auto_pc_ARCACHE;
  wire [7:0]auto_rs_to_auto_pc_ARLEN;
  wire [0:0]auto_rs_to_auto_pc_ARLOCK;
  wire [2:0]auto_rs_to_auto_pc_ARPROT;
  wire [3:0]auto_rs_to_auto_pc_ARQOS;
  wire auto_rs_to_auto_pc_ARREADY;
  wire [3:0]auto_rs_to_auto_pc_ARREGION;
  wire [2:0]auto_rs_to_auto_pc_ARSIZE;
  wire auto_rs_to_auto_pc_ARVALID;
  wire [39:0]auto_rs_to_auto_pc_AWADDR;
  wire [1:0]auto_rs_to_auto_pc_AWBURST;
  wire [3:0]auto_rs_to_auto_pc_AWCACHE;
  wire [7:0]auto_rs_to_auto_pc_AWLEN;
  wire [0:0]auto_rs_to_auto_pc_AWLOCK;
  wire [2:0]auto_rs_to_auto_pc_AWPROT;
  wire [3:0]auto_rs_to_auto_pc_AWQOS;
  wire auto_rs_to_auto_pc_AWREADY;
  wire [3:0]auto_rs_to_auto_pc_AWREGION;
  wire [2:0]auto_rs_to_auto_pc_AWSIZE;
  wire auto_rs_to_auto_pc_AWVALID;
  wire auto_rs_to_auto_pc_BREADY;
  wire [1:0]auto_rs_to_auto_pc_BRESP;
  wire auto_rs_to_auto_pc_BVALID;
  wire [31:0]auto_rs_to_auto_pc_RDATA;
  wire auto_rs_to_auto_pc_RLAST;
  wire auto_rs_to_auto_pc_RREADY;
  wire [1:0]auto_rs_to_auto_pc_RRESP;
  wire auto_rs_to_auto_pc_RVALID;
  wire [31:0]auto_rs_to_auto_pc_WDATA;
  wire auto_rs_to_auto_pc_WLAST;
  wire auto_rs_to_auto_pc_WREADY;
  wire [3:0]auto_rs_to_auto_pc_WSTRB;
  wire auto_rs_to_auto_pc_WVALID;
  wire [39:0]auto_rs_w_to_auto_ds_ARADDR;
  wire [1:0]auto_rs_w_to_auto_ds_ARBURST;
  wire [3:0]auto_rs_w_to_auto_ds_ARCACHE;
  wire [7:0]auto_rs_w_to_auto_ds_ARLEN;
  wire [0:0]auto_rs_w_to_auto_ds_ARLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_ARPROT;
  wire [3:0]auto_rs_w_to_auto_ds_ARQOS;
  wire auto_rs_w_to_auto_ds_ARREADY;
  wire [3:0]auto_rs_w_to_auto_ds_ARREGION;
  wire [2:0]auto_rs_w_to_auto_ds_ARSIZE;
  wire auto_rs_w_to_auto_ds_ARVALID;
  wire [39:0]auto_rs_w_to_auto_ds_AWADDR;
  wire [1:0]auto_rs_w_to_auto_ds_AWBURST;
  wire [3:0]auto_rs_w_to_auto_ds_AWCACHE;
  wire [7:0]auto_rs_w_to_auto_ds_AWLEN;
  wire [0:0]auto_rs_w_to_auto_ds_AWLOCK;
  wire [2:0]auto_rs_w_to_auto_ds_AWPROT;
  wire [3:0]auto_rs_w_to_auto_ds_AWQOS;
  wire auto_rs_w_to_auto_ds_AWREADY;
  wire [3:0]auto_rs_w_to_auto_ds_AWREGION;
  wire [2:0]auto_rs_w_to_auto_ds_AWSIZE;
  wire auto_rs_w_to_auto_ds_AWVALID;
  wire auto_rs_w_to_auto_ds_BREADY;
  wire [1:0]auto_rs_w_to_auto_ds_BRESP;
  wire auto_rs_w_to_auto_ds_BVALID;
  wire [255:0]auto_rs_w_to_auto_ds_RDATA;
  wire auto_rs_w_to_auto_ds_RLAST;
  wire auto_rs_w_to_auto_ds_RREADY;
  wire [1:0]auto_rs_w_to_auto_ds_RRESP;
  wire auto_rs_w_to_auto_ds_RVALID;
  wire [255:0]auto_rs_w_to_auto_ds_WDATA;
  wire auto_rs_w_to_auto_ds_WLAST;
  wire auto_rs_w_to_auto_ds_WREADY;
  wire [31:0]auto_rs_w_to_auto_ds_WSTRB;
  wire auto_rs_w_to_auto_ds_WVALID;
  wire [39:0]m01_couplers_to_auto_rs_w_ARADDR;
  wire [1:0]m01_couplers_to_auto_rs_w_ARBURST;
  wire [3:0]m01_couplers_to_auto_rs_w_ARCACHE;
  wire [7:0]m01_couplers_to_auto_rs_w_ARLEN;
  wire [0:0]m01_couplers_to_auto_rs_w_ARLOCK;
  wire [2:0]m01_couplers_to_auto_rs_w_ARPROT;
  wire [3:0]m01_couplers_to_auto_rs_w_ARQOS;
  wire m01_couplers_to_auto_rs_w_ARREADY;
  wire [3:0]m01_couplers_to_auto_rs_w_ARREGION;
  wire [2:0]m01_couplers_to_auto_rs_w_ARSIZE;
  wire m01_couplers_to_auto_rs_w_ARVALID;
  wire [39:0]m01_couplers_to_auto_rs_w_AWADDR;
  wire [1:0]m01_couplers_to_auto_rs_w_AWBURST;
  wire [3:0]m01_couplers_to_auto_rs_w_AWCACHE;
  wire [7:0]m01_couplers_to_auto_rs_w_AWLEN;
  wire [0:0]m01_couplers_to_auto_rs_w_AWLOCK;
  wire [2:0]m01_couplers_to_auto_rs_w_AWPROT;
  wire [3:0]m01_couplers_to_auto_rs_w_AWQOS;
  wire m01_couplers_to_auto_rs_w_AWREADY;
  wire [3:0]m01_couplers_to_auto_rs_w_AWREGION;
  wire [2:0]m01_couplers_to_auto_rs_w_AWSIZE;
  wire m01_couplers_to_auto_rs_w_AWVALID;
  wire m01_couplers_to_auto_rs_w_BREADY;
  wire [1:0]m01_couplers_to_auto_rs_w_BRESP;
  wire m01_couplers_to_auto_rs_w_BVALID;
  wire [255:0]m01_couplers_to_auto_rs_w_RDATA;
  wire m01_couplers_to_auto_rs_w_RLAST;
  wire m01_couplers_to_auto_rs_w_RREADY;
  wire [1:0]m01_couplers_to_auto_rs_w_RRESP;
  wire m01_couplers_to_auto_rs_w_RVALID;
  wire [255:0]m01_couplers_to_auto_rs_w_WDATA;
  wire m01_couplers_to_auto_rs_w_WLAST;
  wire m01_couplers_to_auto_rs_w_WREADY;
  wire [31:0]m01_couplers_to_auto_rs_w_WSTRB;
  wire m01_couplers_to_auto_rs_w_WVALID;
  wire [8:0]m01_regslice_to_m01_couplers_ARADDR;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [8:0]m01_regslice_to_m01_couplers_AWADDR;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[8:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[8:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_rs_w_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_rs_w_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_rs_w_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_rs_w_BVALID;
  assign S_AXI_rdata[255:0] = m01_couplers_to_auto_rs_w_RDATA;
  assign S_AXI_rlast = m01_couplers_to_auto_rs_w_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_rs_w_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_rs_w_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_rs_w_WREADY;
  assign m01_couplers_to_auto_rs_w_ARADDR = S_AXI_araddr[39:0];
  assign m01_couplers_to_auto_rs_w_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_rs_w_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_rs_w_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_rs_w_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_rs_w_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_rs_w_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_rs_w_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_rs_w_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_rs_w_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_rs_w_AWADDR = S_AXI_awaddr[39:0];
  assign m01_couplers_to_auto_rs_w_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_rs_w_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_rs_w_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_rs_w_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_rs_w_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_rs_w_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_rs_w_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_rs_w_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_rs_w_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_rs_w_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_rs_w_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_rs_w_WDATA = S_AXI_wdata[255:0];
  assign m01_couplers_to_auto_rs_w_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_rs_w_WSTRB = S_AXI_wstrb[31:0];
  assign m01_couplers_to_auto_rs_w_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  design_1_auto_ds_0 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_rs_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_rs_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_rs_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_rs_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_rs_ARQOS),
        .m_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_rs_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_rs_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_rs_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_rs_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_rs_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_rs_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_rs_AWQOS),
        .m_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_rs_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_rs_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .m_axi_bready(auto_ds_to_auto_rs_BREADY),
        .m_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .m_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .m_axi_rlast(auto_ds_to_auto_rs_RLAST),
        .m_axi_rready(auto_ds_to_auto_rs_RREADY),
        .m_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .m_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .m_axi_wlast(auto_ds_to_auto_rs_WLAST),
        .m_axi_wready(auto_ds_to_auto_rs_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_rs_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .s_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .s_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .s_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .s_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .s_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .s_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .s_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .s_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .s_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .s_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .s_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .s_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .s_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .s_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .s_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .s_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .s_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .s_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .s_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .s_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .s_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .s_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .s_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .s_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .s_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .s_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .s_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .s_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .s_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .s_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .s_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .s_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .s_axi_wvalid(auto_rs_w_to_auto_ds_WVALID));
  design_1_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_regslice_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_pc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_pc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_pc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_pc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_pc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_regslice_WVALID),
        .s_axi_araddr(auto_rs_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_rs_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_rs_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_rs_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_rs_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_rs_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_rs_to_auto_pc_ARQOS),
        .s_axi_arready(auto_rs_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_rs_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_rs_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_rs_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_rs_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_rs_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_rs_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_rs_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_rs_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_rs_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_rs_to_auto_pc_AWQOS),
        .s_axi_awready(auto_rs_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_rs_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_rs_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_rs_to_auto_pc_AWVALID),
        .s_axi_bready(auto_rs_to_auto_pc_BREADY),
        .s_axi_bresp(auto_rs_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_rs_to_auto_pc_BVALID),
        .s_axi_rdata(auto_rs_to_auto_pc_RDATA),
        .s_axi_rlast(auto_rs_to_auto_pc_RLAST),
        .s_axi_rready(auto_rs_to_auto_pc_RREADY),
        .s_axi_rresp(auto_rs_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_rs_to_auto_pc_RVALID),
        .s_axi_wdata(auto_rs_to_auto_pc_WDATA),
        .s_axi_wlast(auto_rs_to_auto_pc_WLAST),
        .s_axi_wready(auto_rs_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_rs_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_rs_to_auto_pc_WVALID));
  design_1_auto_rs_0 auto_rs
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_rs_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_rs_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_rs_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_rs_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_rs_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_rs_to_auto_pc_ARQOS),
        .m_axi_arready(auto_rs_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_rs_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_rs_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_rs_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_rs_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_rs_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_rs_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_rs_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_rs_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_rs_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_rs_to_auto_pc_AWQOS),
        .m_axi_awready(auto_rs_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_rs_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_rs_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_rs_to_auto_pc_AWVALID),
        .m_axi_bready(auto_rs_to_auto_pc_BREADY),
        .m_axi_bresp(auto_rs_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_rs_to_auto_pc_BVALID),
        .m_axi_rdata(auto_rs_to_auto_pc_RDATA),
        .m_axi_rlast(auto_rs_to_auto_pc_RLAST),
        .m_axi_rready(auto_rs_to_auto_pc_RREADY),
        .m_axi_rresp(auto_rs_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_rs_to_auto_pc_RVALID),
        .m_axi_wdata(auto_rs_to_auto_pc_WDATA),
        .m_axi_wlast(auto_rs_to_auto_pc_WLAST),
        .m_axi_wready(auto_rs_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_rs_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_rs_to_auto_pc_WVALID),
        .s_axi_araddr(auto_ds_to_auto_rs_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_rs_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_rs_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_rs_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_rs_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_rs_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_rs_ARQOS),
        .s_axi_arready(auto_ds_to_auto_rs_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_rs_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_rs_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_rs_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_rs_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_rs_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_rs_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_rs_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_rs_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_rs_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_rs_AWQOS),
        .s_axi_awready(auto_ds_to_auto_rs_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_rs_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_rs_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_rs_AWVALID),
        .s_axi_bready(auto_ds_to_auto_rs_BREADY),
        .s_axi_bresp(auto_ds_to_auto_rs_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_rs_BVALID),
        .s_axi_rdata(auto_ds_to_auto_rs_RDATA),
        .s_axi_rlast(auto_ds_to_auto_rs_RLAST),
        .s_axi_rready(auto_ds_to_auto_rs_RREADY),
        .s_axi_rresp(auto_ds_to_auto_rs_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_rs_RVALID),
        .s_axi_wdata(auto_ds_to_auto_rs_WDATA),
        .s_axi_wlast(auto_ds_to_auto_rs_WLAST),
        .s_axi_wready(auto_ds_to_auto_rs_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_rs_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_rs_WVALID));
  design_1_auto_rs_w_0 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_auto_ds_ARADDR),
        .m_axi_arburst(auto_rs_w_to_auto_ds_ARBURST),
        .m_axi_arcache(auto_rs_w_to_auto_ds_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_auto_ds_ARLEN),
        .m_axi_arlock(auto_rs_w_to_auto_ds_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_auto_ds_ARPROT),
        .m_axi_arqos(auto_rs_w_to_auto_ds_ARQOS),
        .m_axi_arready(auto_rs_w_to_auto_ds_ARREADY),
        .m_axi_arregion(auto_rs_w_to_auto_ds_ARREGION),
        .m_axi_arsize(auto_rs_w_to_auto_ds_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_auto_ds_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_auto_ds_AWADDR),
        .m_axi_awburst(auto_rs_w_to_auto_ds_AWBURST),
        .m_axi_awcache(auto_rs_w_to_auto_ds_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_auto_ds_AWLEN),
        .m_axi_awlock(auto_rs_w_to_auto_ds_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_auto_ds_AWPROT),
        .m_axi_awqos(auto_rs_w_to_auto_ds_AWQOS),
        .m_axi_awready(auto_rs_w_to_auto_ds_AWREADY),
        .m_axi_awregion(auto_rs_w_to_auto_ds_AWREGION),
        .m_axi_awsize(auto_rs_w_to_auto_ds_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_auto_ds_AWVALID),
        .m_axi_bready(auto_rs_w_to_auto_ds_BREADY),
        .m_axi_bresp(auto_rs_w_to_auto_ds_BRESP),
        .m_axi_bvalid(auto_rs_w_to_auto_ds_BVALID),
        .m_axi_rdata(auto_rs_w_to_auto_ds_RDATA),
        .m_axi_rlast(auto_rs_w_to_auto_ds_RLAST),
        .m_axi_rready(auto_rs_w_to_auto_ds_RREADY),
        .m_axi_rresp(auto_rs_w_to_auto_ds_RRESP),
        .m_axi_rvalid(auto_rs_w_to_auto_ds_RVALID),
        .m_axi_wdata(auto_rs_w_to_auto_ds_WDATA),
        .m_axi_wlast(auto_rs_w_to_auto_ds_WLAST),
        .m_axi_wready(auto_rs_w_to_auto_ds_WREADY),
        .m_axi_wstrb(auto_rs_w_to_auto_ds_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_auto_ds_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_rs_w_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_rs_w_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(m01_couplers_to_auto_rs_w_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_rs_w_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_rs_w_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_rs_w_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_rs_w_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_rs_w_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_rs_w_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(m01_couplers_to_auto_rs_w_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_rs_w_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_rs_w_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_rs_w_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_rs_w_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_rs_w_AWVALID),
        .s_axi_bready(m01_couplers_to_auto_rs_w_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_rs_w_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_rs_w_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_rs_w_RDATA),
        .s_axi_rlast(m01_couplers_to_auto_rs_w_RLAST),
        .s_axi_rready(m01_couplers_to_auto_rs_w_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_rs_w_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_rs_w_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_rs_w_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_rs_w_WLAST),
        .s_axi_wready(m01_couplers_to_auto_rs_w_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_rs_w_WVALID));
  design_1_m01_regslice_0 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m01_regslice_ARADDR[8:0]),
        .s_axi_arprot(auto_pc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_pc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_pc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m01_regslice_AWADDR[8:0]),
        .s_axi_awprot(auto_pc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_pc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_pc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_pc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_pc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_pc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_1BOGR4T
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_ds_to_auto_pc_ARADDR;
  wire [1:0]auto_ds_to_auto_pc_ARBURST;
  wire [3:0]auto_ds_to_auto_pc_ARCACHE;
  wire [7:0]auto_ds_to_auto_pc_ARLEN;
  wire [0:0]auto_ds_to_auto_pc_ARLOCK;
  wire [2:0]auto_ds_to_auto_pc_ARPROT;
  wire [3:0]auto_ds_to_auto_pc_ARQOS;
  wire auto_ds_to_auto_pc_ARREADY;
  wire [3:0]auto_ds_to_auto_pc_ARREGION;
  wire [2:0]auto_ds_to_auto_pc_ARSIZE;
  wire auto_ds_to_auto_pc_ARVALID;
  wire [39:0]auto_ds_to_auto_pc_AWADDR;
  wire [1:0]auto_ds_to_auto_pc_AWBURST;
  wire [3:0]auto_ds_to_auto_pc_AWCACHE;
  wire [7:0]auto_ds_to_auto_pc_AWLEN;
  wire [0:0]auto_ds_to_auto_pc_AWLOCK;
  wire [2:0]auto_ds_to_auto_pc_AWPROT;
  wire [3:0]auto_ds_to_auto_pc_AWQOS;
  wire auto_ds_to_auto_pc_AWREADY;
  wire [3:0]auto_ds_to_auto_pc_AWREGION;
  wire [2:0]auto_ds_to_auto_pc_AWSIZE;
  wire auto_ds_to_auto_pc_AWVALID;
  wire auto_ds_to_auto_pc_BREADY;
  wire [1:0]auto_ds_to_auto_pc_BRESP;
  wire auto_ds_to_auto_pc_BVALID;
  wire [31:0]auto_ds_to_auto_pc_RDATA;
  wire auto_ds_to_auto_pc_RLAST;
  wire auto_ds_to_auto_pc_RREADY;
  wire [1:0]auto_ds_to_auto_pc_RRESP;
  wire auto_ds_to_auto_pc_RVALID;
  wire [31:0]auto_ds_to_auto_pc_WDATA;
  wire auto_ds_to_auto_pc_WLAST;
  wire auto_ds_to_auto_pc_WREADY;
  wire [3:0]auto_ds_to_auto_pc_WSTRB;
  wire auto_ds_to_auto_pc_WVALID;
  wire [39:0]auto_pc_to_m02_couplers_ARADDR;
  wire auto_pc_to_m02_couplers_ARREADY;
  wire auto_pc_to_m02_couplers_ARVALID;
  wire [39:0]auto_pc_to_m02_couplers_AWADDR;
  wire auto_pc_to_m02_couplers_AWREADY;
  wire auto_pc_to_m02_couplers_AWVALID;
  wire auto_pc_to_m02_couplers_BREADY;
  wire [1:0]auto_pc_to_m02_couplers_BRESP;
  wire auto_pc_to_m02_couplers_BVALID;
  wire [31:0]auto_pc_to_m02_couplers_RDATA;
  wire auto_pc_to_m02_couplers_RREADY;
  wire [1:0]auto_pc_to_m02_couplers_RRESP;
  wire auto_pc_to_m02_couplers_RVALID;
  wire [31:0]auto_pc_to_m02_couplers_WDATA;
  wire auto_pc_to_m02_couplers_WREADY;
  wire [3:0]auto_pc_to_m02_couplers_WSTRB;
  wire auto_pc_to_m02_couplers_WVALID;
  wire [39:0]m02_couplers_to_auto_ds_ARADDR;
  wire [1:0]m02_couplers_to_auto_ds_ARBURST;
  wire [3:0]m02_couplers_to_auto_ds_ARCACHE;
  wire [7:0]m02_couplers_to_auto_ds_ARLEN;
  wire [0:0]m02_couplers_to_auto_ds_ARLOCK;
  wire [2:0]m02_couplers_to_auto_ds_ARPROT;
  wire [3:0]m02_couplers_to_auto_ds_ARQOS;
  wire m02_couplers_to_auto_ds_ARREADY;
  wire [3:0]m02_couplers_to_auto_ds_ARREGION;
  wire [2:0]m02_couplers_to_auto_ds_ARSIZE;
  wire m02_couplers_to_auto_ds_ARVALID;
  wire [39:0]m02_couplers_to_auto_ds_AWADDR;
  wire [1:0]m02_couplers_to_auto_ds_AWBURST;
  wire [3:0]m02_couplers_to_auto_ds_AWCACHE;
  wire [7:0]m02_couplers_to_auto_ds_AWLEN;
  wire [0:0]m02_couplers_to_auto_ds_AWLOCK;
  wire [2:0]m02_couplers_to_auto_ds_AWPROT;
  wire [3:0]m02_couplers_to_auto_ds_AWQOS;
  wire m02_couplers_to_auto_ds_AWREADY;
  wire [3:0]m02_couplers_to_auto_ds_AWREGION;
  wire [2:0]m02_couplers_to_auto_ds_AWSIZE;
  wire m02_couplers_to_auto_ds_AWVALID;
  wire m02_couplers_to_auto_ds_BREADY;
  wire [1:0]m02_couplers_to_auto_ds_BRESP;
  wire m02_couplers_to_auto_ds_BVALID;
  wire [255:0]m02_couplers_to_auto_ds_RDATA;
  wire m02_couplers_to_auto_ds_RLAST;
  wire m02_couplers_to_auto_ds_RREADY;
  wire [1:0]m02_couplers_to_auto_ds_RRESP;
  wire m02_couplers_to_auto_ds_RVALID;
  wire [255:0]m02_couplers_to_auto_ds_WDATA;
  wire m02_couplers_to_auto_ds_WLAST;
  wire m02_couplers_to_auto_ds_WREADY;
  wire [31:0]m02_couplers_to_auto_ds_WSTRB;
  wire m02_couplers_to_auto_ds_WVALID;

  assign M_AXI_araddr[39:0] = auto_pc_to_m02_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_pc_to_m02_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m02_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m02_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m02_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m02_couplers_to_auto_ds_ARREADY;
  assign S_AXI_awready = m02_couplers_to_auto_ds_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_auto_ds_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_auto_ds_BVALID;
  assign S_AXI_rdata[255:0] = m02_couplers_to_auto_ds_RDATA;
  assign S_AXI_rlast = m02_couplers_to_auto_ds_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_auto_ds_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_auto_ds_RVALID;
  assign S_AXI_wready = m02_couplers_to_auto_ds_WREADY;
  assign auto_pc_to_m02_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m02_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m02_couplers_WREADY = M_AXI_wready;
  assign m02_couplers_to_auto_ds_ARADDR = S_AXI_araddr[39:0];
  assign m02_couplers_to_auto_ds_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_auto_ds_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_auto_ds_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_auto_ds_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_auto_ds_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_auto_ds_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_auto_ds_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_auto_ds_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_auto_ds_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_auto_ds_AWADDR = S_AXI_awaddr[39:0];
  assign m02_couplers_to_auto_ds_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_auto_ds_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_auto_ds_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_auto_ds_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_auto_ds_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_auto_ds_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_auto_ds_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_auto_ds_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_auto_ds_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_auto_ds_BREADY = S_AXI_bready;
  assign m02_couplers_to_auto_ds_RREADY = S_AXI_rready;
  assign m02_couplers_to_auto_ds_WDATA = S_AXI_wdata[255:0];
  assign m02_couplers_to_auto_ds_WLAST = S_AXI_wlast;
  assign m02_couplers_to_auto_ds_WSTRB = S_AXI_wstrb[31:0];
  assign m02_couplers_to_auto_ds_WVALID = S_AXI_wvalid;
  design_1_auto_ds_1 auto_ds
       (.m_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .m_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .m_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .m_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .m_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .m_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .m_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .m_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .m_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .m_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .m_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .m_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .m_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .m_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .m_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .m_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .m_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .m_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .m_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .m_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .m_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .m_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .m_axi_bready(auto_ds_to_auto_pc_BREADY),
        .m_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .m_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .m_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .m_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .m_axi_rready(auto_ds_to_auto_pc_RREADY),
        .m_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .m_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .m_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .m_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .m_axi_wready(auto_ds_to_auto_pc_WREADY),
        .m_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .m_axi_wvalid(auto_ds_to_auto_pc_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(m02_couplers_to_auto_ds_ARADDR),
        .s_axi_arburst(m02_couplers_to_auto_ds_ARBURST),
        .s_axi_arcache(m02_couplers_to_auto_ds_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(m02_couplers_to_auto_ds_ARLEN),
        .s_axi_arlock(m02_couplers_to_auto_ds_ARLOCK),
        .s_axi_arprot(m02_couplers_to_auto_ds_ARPROT),
        .s_axi_arqos(m02_couplers_to_auto_ds_ARQOS),
        .s_axi_arready(m02_couplers_to_auto_ds_ARREADY),
        .s_axi_arregion(m02_couplers_to_auto_ds_ARREGION),
        .s_axi_arsize(m02_couplers_to_auto_ds_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_auto_ds_ARVALID),
        .s_axi_awaddr(m02_couplers_to_auto_ds_AWADDR),
        .s_axi_awburst(m02_couplers_to_auto_ds_AWBURST),
        .s_axi_awcache(m02_couplers_to_auto_ds_AWCACHE),
        .s_axi_awlen(m02_couplers_to_auto_ds_AWLEN),
        .s_axi_awlock(m02_couplers_to_auto_ds_AWLOCK),
        .s_axi_awprot(m02_couplers_to_auto_ds_AWPROT),
        .s_axi_awqos(m02_couplers_to_auto_ds_AWQOS),
        .s_axi_awready(m02_couplers_to_auto_ds_AWREADY),
        .s_axi_awregion(m02_couplers_to_auto_ds_AWREGION),
        .s_axi_awsize(m02_couplers_to_auto_ds_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_auto_ds_AWVALID),
        .s_axi_bready(m02_couplers_to_auto_ds_BREADY),
        .s_axi_bresp(m02_couplers_to_auto_ds_BRESP),
        .s_axi_bvalid(m02_couplers_to_auto_ds_BVALID),
        .s_axi_rdata(m02_couplers_to_auto_ds_RDATA),
        .s_axi_rlast(m02_couplers_to_auto_ds_RLAST),
        .s_axi_rready(m02_couplers_to_auto_ds_RREADY),
        .s_axi_rresp(m02_couplers_to_auto_ds_RRESP),
        .s_axi_rvalid(m02_couplers_to_auto_ds_RVALID),
        .s_axi_wdata(m02_couplers_to_auto_ds_WDATA),
        .s_axi_wlast(m02_couplers_to_auto_ds_WLAST),
        .s_axi_wready(m02_couplers_to_auto_ds_WREADY),
        .s_axi_wstrb(m02_couplers_to_auto_ds_WSTRB),
        .s_axi_wvalid(m02_couplers_to_auto_ds_WVALID));
  design_1_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m02_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m02_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m02_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m02_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m02_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m02_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m02_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m02_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m02_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m02_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m02_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m02_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m02_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m02_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m02_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m02_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m02_couplers_WVALID),
        .s_axi_araddr(auto_ds_to_auto_pc_ARADDR),
        .s_axi_arburst(auto_ds_to_auto_pc_ARBURST),
        .s_axi_arcache(auto_ds_to_auto_pc_ARCACHE),
        .s_axi_arlen(auto_ds_to_auto_pc_ARLEN),
        .s_axi_arlock(auto_ds_to_auto_pc_ARLOCK),
        .s_axi_arprot(auto_ds_to_auto_pc_ARPROT),
        .s_axi_arqos(auto_ds_to_auto_pc_ARQOS),
        .s_axi_arready(auto_ds_to_auto_pc_ARREADY),
        .s_axi_arregion(auto_ds_to_auto_pc_ARREGION),
        .s_axi_arsize(auto_ds_to_auto_pc_ARSIZE),
        .s_axi_arvalid(auto_ds_to_auto_pc_ARVALID),
        .s_axi_awaddr(auto_ds_to_auto_pc_AWADDR),
        .s_axi_awburst(auto_ds_to_auto_pc_AWBURST),
        .s_axi_awcache(auto_ds_to_auto_pc_AWCACHE),
        .s_axi_awlen(auto_ds_to_auto_pc_AWLEN),
        .s_axi_awlock(auto_ds_to_auto_pc_AWLOCK),
        .s_axi_awprot(auto_ds_to_auto_pc_AWPROT),
        .s_axi_awqos(auto_ds_to_auto_pc_AWQOS),
        .s_axi_awready(auto_ds_to_auto_pc_AWREADY),
        .s_axi_awregion(auto_ds_to_auto_pc_AWREGION),
        .s_axi_awsize(auto_ds_to_auto_pc_AWSIZE),
        .s_axi_awvalid(auto_ds_to_auto_pc_AWVALID),
        .s_axi_bready(auto_ds_to_auto_pc_BREADY),
        .s_axi_bresp(auto_ds_to_auto_pc_BRESP),
        .s_axi_bvalid(auto_ds_to_auto_pc_BVALID),
        .s_axi_rdata(auto_ds_to_auto_pc_RDATA),
        .s_axi_rlast(auto_ds_to_auto_pc_RLAST),
        .s_axi_rready(auto_ds_to_auto_pc_RREADY),
        .s_axi_rresp(auto_ds_to_auto_pc_RRESP),
        .s_axi_rvalid(auto_ds_to_auto_pc_RVALID),
        .s_axi_wdata(auto_ds_to_auto_pc_WDATA),
        .s_axi_wlast(auto_ds_to_auto_pc_WLAST),
        .s_axi_wready(auto_ds_to_auto_pc_WREADY),
        .s_axi_wstrb(auto_ds_to_auto_pc_WSTRB),
        .s_axi_wvalid(auto_ds_to_auto_pc_WVALID));
endmodule

module m03_couplers_imp_J0G1J0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m03_couplers_to_m03_couplers_ARADDR;
  wire [1:0]m03_couplers_to_m03_couplers_ARBURST;
  wire [3:0]m03_couplers_to_m03_couplers_ARCACHE;
  wire [7:0]m03_couplers_to_m03_couplers_ARLEN;
  wire [0:0]m03_couplers_to_m03_couplers_ARLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_ARPROT;
  wire [0:0]m03_couplers_to_m03_couplers_ARREADY;
  wire [2:0]m03_couplers_to_m03_couplers_ARSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_ARVALID;
  wire [39:0]m03_couplers_to_m03_couplers_AWADDR;
  wire [1:0]m03_couplers_to_m03_couplers_AWBURST;
  wire [3:0]m03_couplers_to_m03_couplers_AWCACHE;
  wire [7:0]m03_couplers_to_m03_couplers_AWLEN;
  wire [0:0]m03_couplers_to_m03_couplers_AWLOCK;
  wire [2:0]m03_couplers_to_m03_couplers_AWPROT;
  wire [0:0]m03_couplers_to_m03_couplers_AWREADY;
  wire [2:0]m03_couplers_to_m03_couplers_AWSIZE;
  wire [0:0]m03_couplers_to_m03_couplers_AWVALID;
  wire [0:0]m03_couplers_to_m03_couplers_BREADY;
  wire [1:0]m03_couplers_to_m03_couplers_BRESP;
  wire [0:0]m03_couplers_to_m03_couplers_BVALID;
  wire [255:0]m03_couplers_to_m03_couplers_RDATA;
  wire [0:0]m03_couplers_to_m03_couplers_RLAST;
  wire [0:0]m03_couplers_to_m03_couplers_RREADY;
  wire [1:0]m03_couplers_to_m03_couplers_RRESP;
  wire [0:0]m03_couplers_to_m03_couplers_RVALID;
  wire [255:0]m03_couplers_to_m03_couplers_WDATA;
  wire [0:0]m03_couplers_to_m03_couplers_WLAST;
  wire [0:0]m03_couplers_to_m03_couplers_WREADY;
  wire [31:0]m03_couplers_to_m03_couplers_WSTRB;
  wire [0:0]m03_couplers_to_m03_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m03_couplers_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m03_couplers_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m03_couplers_to_m03_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m03_couplers_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = m03_couplers_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m03_couplers_to_m03_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m03_couplers_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m03_couplers_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m03_couplers_to_m03_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m03_couplers_to_m03_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m03_couplers_to_m03_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m03_couplers_to_m03_couplers_AWLEN;
  assign M_AXI_awlock[0] = m03_couplers_to_m03_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m03_couplers_to_m03_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m03_couplers_to_m03_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m03_couplers_to_m03_couplers_AWVALID;
  assign M_AXI_bready[0] = m03_couplers_to_m03_couplers_BREADY;
  assign M_AXI_rready[0] = m03_couplers_to_m03_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m03_couplers_to_m03_couplers_WDATA;
  assign M_AXI_wlast[0] = m03_couplers_to_m03_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m03_couplers_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m03_couplers_to_m03_couplers_WVALID;
  assign S_AXI_arready[0] = m03_couplers_to_m03_couplers_ARREADY;
  assign S_AXI_awready[0] = m03_couplers_to_m03_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_couplers_BRESP;
  assign S_AXI_bvalid[0] = m03_couplers_to_m03_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m03_couplers_to_m03_couplers_RDATA;
  assign S_AXI_rlast[0] = m03_couplers_to_m03_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_couplers_RRESP;
  assign S_AXI_rvalid[0] = m03_couplers_to_m03_couplers_RVALID;
  assign S_AXI_wready[0] = m03_couplers_to_m03_couplers_WREADY;
  assign m03_couplers_to_m03_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m03_couplers_to_m03_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_m03_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_m03_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_m03_couplers_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_m03_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_couplers_ARREADY = M_AXI_arready[0];
  assign m03_couplers_to_m03_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_m03_couplers_ARVALID = S_AXI_arvalid[0];
  assign m03_couplers_to_m03_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m03_couplers_to_m03_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m03_couplers_to_m03_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m03_couplers_to_m03_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m03_couplers_to_m03_couplers_AWLOCK = S_AXI_awlock[0];
  assign m03_couplers_to_m03_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_couplers_AWREADY = M_AXI_awready[0];
  assign m03_couplers_to_m03_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m03_couplers_to_m03_couplers_AWVALID = S_AXI_awvalid[0];
  assign m03_couplers_to_m03_couplers_BREADY = S_AXI_bready[0];
  assign m03_couplers_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_couplers_to_m03_couplers_BVALID = M_AXI_bvalid[0];
  assign m03_couplers_to_m03_couplers_RDATA = M_AXI_rdata[255:0];
  assign m03_couplers_to_m03_couplers_RLAST = M_AXI_rlast[0];
  assign m03_couplers_to_m03_couplers_RREADY = S_AXI_rready[0];
  assign m03_couplers_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_couplers_to_m03_couplers_RVALID = M_AXI_rvalid[0];
  assign m03_couplers_to_m03_couplers_WDATA = S_AXI_wdata[255:0];
  assign m03_couplers_to_m03_couplers_WLAST = S_AXI_wlast[0];
  assign m03_couplers_to_m03_couplers_WREADY = M_AXI_wready[0];
  assign m03_couplers_to_m03_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m03_couplers_to_m03_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m04_couplers_imp_19YU2FS
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m04_couplers_to_m04_couplers_ARADDR;
  wire [1:0]m04_couplers_to_m04_couplers_ARBURST;
  wire [3:0]m04_couplers_to_m04_couplers_ARCACHE;
  wire [7:0]m04_couplers_to_m04_couplers_ARLEN;
  wire [0:0]m04_couplers_to_m04_couplers_ARLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_ARPROT;
  wire [0:0]m04_couplers_to_m04_couplers_ARREADY;
  wire [2:0]m04_couplers_to_m04_couplers_ARSIZE;
  wire [0:0]m04_couplers_to_m04_couplers_ARVALID;
  wire [39:0]m04_couplers_to_m04_couplers_AWADDR;
  wire [1:0]m04_couplers_to_m04_couplers_AWBURST;
  wire [3:0]m04_couplers_to_m04_couplers_AWCACHE;
  wire [7:0]m04_couplers_to_m04_couplers_AWLEN;
  wire [0:0]m04_couplers_to_m04_couplers_AWLOCK;
  wire [2:0]m04_couplers_to_m04_couplers_AWPROT;
  wire [0:0]m04_couplers_to_m04_couplers_AWREADY;
  wire [2:0]m04_couplers_to_m04_couplers_AWSIZE;
  wire [0:0]m04_couplers_to_m04_couplers_AWVALID;
  wire [0:0]m04_couplers_to_m04_couplers_BREADY;
  wire [1:0]m04_couplers_to_m04_couplers_BRESP;
  wire [0:0]m04_couplers_to_m04_couplers_BVALID;
  wire [255:0]m04_couplers_to_m04_couplers_RDATA;
  wire [0:0]m04_couplers_to_m04_couplers_RLAST;
  wire [0:0]m04_couplers_to_m04_couplers_RREADY;
  wire [1:0]m04_couplers_to_m04_couplers_RRESP;
  wire [0:0]m04_couplers_to_m04_couplers_RVALID;
  wire [255:0]m04_couplers_to_m04_couplers_WDATA;
  wire [0:0]m04_couplers_to_m04_couplers_WLAST;
  wire [0:0]m04_couplers_to_m04_couplers_WREADY;
  wire [31:0]m04_couplers_to_m04_couplers_WSTRB;
  wire [0:0]m04_couplers_to_m04_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m04_couplers_to_m04_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m04_couplers_to_m04_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m04_couplers_to_m04_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m04_couplers_to_m04_couplers_ARLEN;
  assign M_AXI_arlock[0] = m04_couplers_to_m04_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m04_couplers_to_m04_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m04_couplers_to_m04_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m04_couplers_to_m04_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m04_couplers_to_m04_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m04_couplers_to_m04_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m04_couplers_to_m04_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m04_couplers_to_m04_couplers_AWLEN;
  assign M_AXI_awlock[0] = m04_couplers_to_m04_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m04_couplers_to_m04_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m04_couplers_to_m04_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m04_couplers_to_m04_couplers_AWVALID;
  assign M_AXI_bready[0] = m04_couplers_to_m04_couplers_BREADY;
  assign M_AXI_rready[0] = m04_couplers_to_m04_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m04_couplers_to_m04_couplers_WDATA;
  assign M_AXI_wlast[0] = m04_couplers_to_m04_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m04_couplers_to_m04_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m04_couplers_to_m04_couplers_WVALID;
  assign S_AXI_arready[0] = m04_couplers_to_m04_couplers_ARREADY;
  assign S_AXI_awready[0] = m04_couplers_to_m04_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m04_couplers_to_m04_couplers_BRESP;
  assign S_AXI_bvalid[0] = m04_couplers_to_m04_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m04_couplers_to_m04_couplers_RDATA;
  assign S_AXI_rlast[0] = m04_couplers_to_m04_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m04_couplers_to_m04_couplers_RRESP;
  assign S_AXI_rvalid[0] = m04_couplers_to_m04_couplers_RVALID;
  assign S_AXI_wready[0] = m04_couplers_to_m04_couplers_WREADY;
  assign m04_couplers_to_m04_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m04_couplers_to_m04_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m04_couplers_to_m04_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m04_couplers_to_m04_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m04_couplers_to_m04_couplers_ARLOCK = S_AXI_arlock[0];
  assign m04_couplers_to_m04_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m04_couplers_to_m04_couplers_ARREADY = M_AXI_arready[0];
  assign m04_couplers_to_m04_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m04_couplers_to_m04_couplers_ARVALID = S_AXI_arvalid[0];
  assign m04_couplers_to_m04_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m04_couplers_to_m04_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m04_couplers_to_m04_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m04_couplers_to_m04_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m04_couplers_to_m04_couplers_AWLOCK = S_AXI_awlock[0];
  assign m04_couplers_to_m04_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m04_couplers_to_m04_couplers_AWREADY = M_AXI_awready[0];
  assign m04_couplers_to_m04_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m04_couplers_to_m04_couplers_AWVALID = S_AXI_awvalid[0];
  assign m04_couplers_to_m04_couplers_BREADY = S_AXI_bready[0];
  assign m04_couplers_to_m04_couplers_BRESP = M_AXI_bresp[1:0];
  assign m04_couplers_to_m04_couplers_BVALID = M_AXI_bvalid[0];
  assign m04_couplers_to_m04_couplers_RDATA = M_AXI_rdata[255:0];
  assign m04_couplers_to_m04_couplers_RLAST = M_AXI_rlast[0];
  assign m04_couplers_to_m04_couplers_RREADY = S_AXI_rready[0];
  assign m04_couplers_to_m04_couplers_RRESP = M_AXI_rresp[1:0];
  assign m04_couplers_to_m04_couplers_RVALID = M_AXI_rvalid[0];
  assign m04_couplers_to_m04_couplers_WDATA = S_AXI_wdata[255:0];
  assign m04_couplers_to_m04_couplers_WLAST = S_AXI_wlast[0];
  assign m04_couplers_to_m04_couplers_WREADY = M_AXI_wready[0];
  assign m04_couplers_to_m04_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m04_couplers_to_m04_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m05_couplers_imp_KSVY9L
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m05_couplers_to_m05_couplers_ARADDR;
  wire [1:0]m05_couplers_to_m05_couplers_ARBURST;
  wire [3:0]m05_couplers_to_m05_couplers_ARCACHE;
  wire [7:0]m05_couplers_to_m05_couplers_ARLEN;
  wire [0:0]m05_couplers_to_m05_couplers_ARLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_ARPROT;
  wire [0:0]m05_couplers_to_m05_couplers_ARREADY;
  wire [2:0]m05_couplers_to_m05_couplers_ARSIZE;
  wire [0:0]m05_couplers_to_m05_couplers_ARVALID;
  wire [39:0]m05_couplers_to_m05_couplers_AWADDR;
  wire [1:0]m05_couplers_to_m05_couplers_AWBURST;
  wire [3:0]m05_couplers_to_m05_couplers_AWCACHE;
  wire [7:0]m05_couplers_to_m05_couplers_AWLEN;
  wire [0:0]m05_couplers_to_m05_couplers_AWLOCK;
  wire [2:0]m05_couplers_to_m05_couplers_AWPROT;
  wire [0:0]m05_couplers_to_m05_couplers_AWREADY;
  wire [2:0]m05_couplers_to_m05_couplers_AWSIZE;
  wire [0:0]m05_couplers_to_m05_couplers_AWVALID;
  wire [0:0]m05_couplers_to_m05_couplers_BREADY;
  wire [1:0]m05_couplers_to_m05_couplers_BRESP;
  wire [0:0]m05_couplers_to_m05_couplers_BVALID;
  wire [255:0]m05_couplers_to_m05_couplers_RDATA;
  wire [0:0]m05_couplers_to_m05_couplers_RLAST;
  wire [0:0]m05_couplers_to_m05_couplers_RREADY;
  wire [1:0]m05_couplers_to_m05_couplers_RRESP;
  wire [0:0]m05_couplers_to_m05_couplers_RVALID;
  wire [255:0]m05_couplers_to_m05_couplers_WDATA;
  wire [0:0]m05_couplers_to_m05_couplers_WLAST;
  wire [0:0]m05_couplers_to_m05_couplers_WREADY;
  wire [31:0]m05_couplers_to_m05_couplers_WSTRB;
  wire [0:0]m05_couplers_to_m05_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m05_couplers_to_m05_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m05_couplers_to_m05_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m05_couplers_to_m05_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m05_couplers_to_m05_couplers_ARLEN;
  assign M_AXI_arlock[0] = m05_couplers_to_m05_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m05_couplers_to_m05_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m05_couplers_to_m05_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m05_couplers_to_m05_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m05_couplers_to_m05_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m05_couplers_to_m05_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m05_couplers_to_m05_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m05_couplers_to_m05_couplers_AWLEN;
  assign M_AXI_awlock[0] = m05_couplers_to_m05_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m05_couplers_to_m05_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m05_couplers_to_m05_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m05_couplers_to_m05_couplers_AWVALID;
  assign M_AXI_bready[0] = m05_couplers_to_m05_couplers_BREADY;
  assign M_AXI_rready[0] = m05_couplers_to_m05_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m05_couplers_to_m05_couplers_WDATA;
  assign M_AXI_wlast[0] = m05_couplers_to_m05_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m05_couplers_to_m05_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m05_couplers_to_m05_couplers_WVALID;
  assign S_AXI_arready[0] = m05_couplers_to_m05_couplers_ARREADY;
  assign S_AXI_awready[0] = m05_couplers_to_m05_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m05_couplers_to_m05_couplers_BRESP;
  assign S_AXI_bvalid[0] = m05_couplers_to_m05_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m05_couplers_to_m05_couplers_RDATA;
  assign S_AXI_rlast[0] = m05_couplers_to_m05_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m05_couplers_to_m05_couplers_RRESP;
  assign S_AXI_rvalid[0] = m05_couplers_to_m05_couplers_RVALID;
  assign S_AXI_wready[0] = m05_couplers_to_m05_couplers_WREADY;
  assign m05_couplers_to_m05_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m05_couplers_to_m05_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m05_couplers_to_m05_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m05_couplers_to_m05_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m05_couplers_to_m05_couplers_ARLOCK = S_AXI_arlock[0];
  assign m05_couplers_to_m05_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m05_couplers_to_m05_couplers_ARREADY = M_AXI_arready[0];
  assign m05_couplers_to_m05_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m05_couplers_to_m05_couplers_ARVALID = S_AXI_arvalid[0];
  assign m05_couplers_to_m05_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m05_couplers_to_m05_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m05_couplers_to_m05_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m05_couplers_to_m05_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m05_couplers_to_m05_couplers_AWLOCK = S_AXI_awlock[0];
  assign m05_couplers_to_m05_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m05_couplers_to_m05_couplers_AWREADY = M_AXI_awready[0];
  assign m05_couplers_to_m05_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m05_couplers_to_m05_couplers_AWVALID = S_AXI_awvalid[0];
  assign m05_couplers_to_m05_couplers_BREADY = S_AXI_bready[0];
  assign m05_couplers_to_m05_couplers_BRESP = M_AXI_bresp[1:0];
  assign m05_couplers_to_m05_couplers_BVALID = M_AXI_bvalid[0];
  assign m05_couplers_to_m05_couplers_RDATA = M_AXI_rdata[255:0];
  assign m05_couplers_to_m05_couplers_RLAST = M_AXI_rlast[0];
  assign m05_couplers_to_m05_couplers_RREADY = S_AXI_rready[0];
  assign m05_couplers_to_m05_couplers_RRESP = M_AXI_rresp[1:0];
  assign m05_couplers_to_m05_couplers_RVALID = M_AXI_rvalid[0];
  assign m05_couplers_to_m05_couplers_WDATA = S_AXI_wdata[255:0];
  assign m05_couplers_to_m05_couplers_WLAST = S_AXI_wlast[0];
  assign m05_couplers_to_m05_couplers_WREADY = M_AXI_wready[0];
  assign m05_couplers_to_m05_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m05_couplers_to_m05_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m06_couplers_imp_18J6S0R
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m06_couplers_to_m06_couplers_ARADDR;
  wire [1:0]m06_couplers_to_m06_couplers_ARBURST;
  wire [3:0]m06_couplers_to_m06_couplers_ARCACHE;
  wire [7:0]m06_couplers_to_m06_couplers_ARLEN;
  wire [0:0]m06_couplers_to_m06_couplers_ARLOCK;
  wire [2:0]m06_couplers_to_m06_couplers_ARPROT;
  wire [0:0]m06_couplers_to_m06_couplers_ARREADY;
  wire [2:0]m06_couplers_to_m06_couplers_ARSIZE;
  wire [0:0]m06_couplers_to_m06_couplers_ARVALID;
  wire [39:0]m06_couplers_to_m06_couplers_AWADDR;
  wire [1:0]m06_couplers_to_m06_couplers_AWBURST;
  wire [3:0]m06_couplers_to_m06_couplers_AWCACHE;
  wire [7:0]m06_couplers_to_m06_couplers_AWLEN;
  wire [0:0]m06_couplers_to_m06_couplers_AWLOCK;
  wire [2:0]m06_couplers_to_m06_couplers_AWPROT;
  wire [0:0]m06_couplers_to_m06_couplers_AWREADY;
  wire [2:0]m06_couplers_to_m06_couplers_AWSIZE;
  wire [0:0]m06_couplers_to_m06_couplers_AWVALID;
  wire [0:0]m06_couplers_to_m06_couplers_BREADY;
  wire [1:0]m06_couplers_to_m06_couplers_BRESP;
  wire [0:0]m06_couplers_to_m06_couplers_BVALID;
  wire [255:0]m06_couplers_to_m06_couplers_RDATA;
  wire [0:0]m06_couplers_to_m06_couplers_RLAST;
  wire [0:0]m06_couplers_to_m06_couplers_RREADY;
  wire [1:0]m06_couplers_to_m06_couplers_RRESP;
  wire [0:0]m06_couplers_to_m06_couplers_RVALID;
  wire [255:0]m06_couplers_to_m06_couplers_WDATA;
  wire [0:0]m06_couplers_to_m06_couplers_WLAST;
  wire [0:0]m06_couplers_to_m06_couplers_WREADY;
  wire [31:0]m06_couplers_to_m06_couplers_WSTRB;
  wire [0:0]m06_couplers_to_m06_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m06_couplers_to_m06_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m06_couplers_to_m06_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m06_couplers_to_m06_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m06_couplers_to_m06_couplers_ARLEN;
  assign M_AXI_arlock[0] = m06_couplers_to_m06_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m06_couplers_to_m06_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m06_couplers_to_m06_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m06_couplers_to_m06_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m06_couplers_to_m06_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m06_couplers_to_m06_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m06_couplers_to_m06_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m06_couplers_to_m06_couplers_AWLEN;
  assign M_AXI_awlock[0] = m06_couplers_to_m06_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m06_couplers_to_m06_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m06_couplers_to_m06_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m06_couplers_to_m06_couplers_AWVALID;
  assign M_AXI_bready[0] = m06_couplers_to_m06_couplers_BREADY;
  assign M_AXI_rready[0] = m06_couplers_to_m06_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m06_couplers_to_m06_couplers_WDATA;
  assign M_AXI_wlast[0] = m06_couplers_to_m06_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m06_couplers_to_m06_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m06_couplers_to_m06_couplers_WVALID;
  assign S_AXI_arready[0] = m06_couplers_to_m06_couplers_ARREADY;
  assign S_AXI_awready[0] = m06_couplers_to_m06_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m06_couplers_to_m06_couplers_BRESP;
  assign S_AXI_bvalid[0] = m06_couplers_to_m06_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m06_couplers_to_m06_couplers_RDATA;
  assign S_AXI_rlast[0] = m06_couplers_to_m06_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m06_couplers_to_m06_couplers_RRESP;
  assign S_AXI_rvalid[0] = m06_couplers_to_m06_couplers_RVALID;
  assign S_AXI_wready[0] = m06_couplers_to_m06_couplers_WREADY;
  assign m06_couplers_to_m06_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m06_couplers_to_m06_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m06_couplers_to_m06_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m06_couplers_to_m06_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m06_couplers_to_m06_couplers_ARLOCK = S_AXI_arlock[0];
  assign m06_couplers_to_m06_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m06_couplers_to_m06_couplers_ARREADY = M_AXI_arready[0];
  assign m06_couplers_to_m06_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m06_couplers_to_m06_couplers_ARVALID = S_AXI_arvalid[0];
  assign m06_couplers_to_m06_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m06_couplers_to_m06_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m06_couplers_to_m06_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m06_couplers_to_m06_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m06_couplers_to_m06_couplers_AWLOCK = S_AXI_awlock[0];
  assign m06_couplers_to_m06_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m06_couplers_to_m06_couplers_AWREADY = M_AXI_awready[0];
  assign m06_couplers_to_m06_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m06_couplers_to_m06_couplers_AWVALID = S_AXI_awvalid[0];
  assign m06_couplers_to_m06_couplers_BREADY = S_AXI_bready[0];
  assign m06_couplers_to_m06_couplers_BRESP = M_AXI_bresp[1:0];
  assign m06_couplers_to_m06_couplers_BVALID = M_AXI_bvalid[0];
  assign m06_couplers_to_m06_couplers_RDATA = M_AXI_rdata[255:0];
  assign m06_couplers_to_m06_couplers_RLAST = M_AXI_rlast[0];
  assign m06_couplers_to_m06_couplers_RREADY = S_AXI_rready[0];
  assign m06_couplers_to_m06_couplers_RRESP = M_AXI_rresp[1:0];
  assign m06_couplers_to_m06_couplers_RVALID = M_AXI_rvalid[0];
  assign m06_couplers_to_m06_couplers_WDATA = S_AXI_wdata[255:0];
  assign m06_couplers_to_m06_couplers_WLAST = S_AXI_wlast[0];
  assign m06_couplers_to_m06_couplers_WREADY = M_AXI_wready[0];
  assign m06_couplers_to_m06_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m06_couplers_to_m06_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m07_couplers_imp_LYVHKQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m07_couplers_to_m07_couplers_ARADDR;
  wire [1:0]m07_couplers_to_m07_couplers_ARBURST;
  wire [3:0]m07_couplers_to_m07_couplers_ARCACHE;
  wire [7:0]m07_couplers_to_m07_couplers_ARLEN;
  wire [0:0]m07_couplers_to_m07_couplers_ARLOCK;
  wire [2:0]m07_couplers_to_m07_couplers_ARPROT;
  wire [0:0]m07_couplers_to_m07_couplers_ARREADY;
  wire [2:0]m07_couplers_to_m07_couplers_ARSIZE;
  wire [0:0]m07_couplers_to_m07_couplers_ARVALID;
  wire [39:0]m07_couplers_to_m07_couplers_AWADDR;
  wire [1:0]m07_couplers_to_m07_couplers_AWBURST;
  wire [3:0]m07_couplers_to_m07_couplers_AWCACHE;
  wire [7:0]m07_couplers_to_m07_couplers_AWLEN;
  wire [0:0]m07_couplers_to_m07_couplers_AWLOCK;
  wire [2:0]m07_couplers_to_m07_couplers_AWPROT;
  wire [0:0]m07_couplers_to_m07_couplers_AWREADY;
  wire [2:0]m07_couplers_to_m07_couplers_AWSIZE;
  wire [0:0]m07_couplers_to_m07_couplers_AWVALID;
  wire [0:0]m07_couplers_to_m07_couplers_BREADY;
  wire [1:0]m07_couplers_to_m07_couplers_BRESP;
  wire [0:0]m07_couplers_to_m07_couplers_BVALID;
  wire [255:0]m07_couplers_to_m07_couplers_RDATA;
  wire [0:0]m07_couplers_to_m07_couplers_RLAST;
  wire [0:0]m07_couplers_to_m07_couplers_RREADY;
  wire [1:0]m07_couplers_to_m07_couplers_RRESP;
  wire [0:0]m07_couplers_to_m07_couplers_RVALID;
  wire [255:0]m07_couplers_to_m07_couplers_WDATA;
  wire [0:0]m07_couplers_to_m07_couplers_WLAST;
  wire [0:0]m07_couplers_to_m07_couplers_WREADY;
  wire [31:0]m07_couplers_to_m07_couplers_WSTRB;
  wire [0:0]m07_couplers_to_m07_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m07_couplers_to_m07_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m07_couplers_to_m07_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m07_couplers_to_m07_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m07_couplers_to_m07_couplers_ARLEN;
  assign M_AXI_arlock[0] = m07_couplers_to_m07_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m07_couplers_to_m07_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m07_couplers_to_m07_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m07_couplers_to_m07_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m07_couplers_to_m07_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m07_couplers_to_m07_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m07_couplers_to_m07_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m07_couplers_to_m07_couplers_AWLEN;
  assign M_AXI_awlock[0] = m07_couplers_to_m07_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m07_couplers_to_m07_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m07_couplers_to_m07_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m07_couplers_to_m07_couplers_AWVALID;
  assign M_AXI_bready[0] = m07_couplers_to_m07_couplers_BREADY;
  assign M_AXI_rready[0] = m07_couplers_to_m07_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m07_couplers_to_m07_couplers_WDATA;
  assign M_AXI_wlast[0] = m07_couplers_to_m07_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m07_couplers_to_m07_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m07_couplers_to_m07_couplers_WVALID;
  assign S_AXI_arready[0] = m07_couplers_to_m07_couplers_ARREADY;
  assign S_AXI_awready[0] = m07_couplers_to_m07_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m07_couplers_to_m07_couplers_BRESP;
  assign S_AXI_bvalid[0] = m07_couplers_to_m07_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m07_couplers_to_m07_couplers_RDATA;
  assign S_AXI_rlast[0] = m07_couplers_to_m07_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m07_couplers_to_m07_couplers_RRESP;
  assign S_AXI_rvalid[0] = m07_couplers_to_m07_couplers_RVALID;
  assign S_AXI_wready[0] = m07_couplers_to_m07_couplers_WREADY;
  assign m07_couplers_to_m07_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m07_couplers_to_m07_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m07_couplers_to_m07_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m07_couplers_to_m07_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m07_couplers_to_m07_couplers_ARLOCK = S_AXI_arlock[0];
  assign m07_couplers_to_m07_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m07_couplers_to_m07_couplers_ARREADY = M_AXI_arready[0];
  assign m07_couplers_to_m07_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m07_couplers_to_m07_couplers_ARVALID = S_AXI_arvalid[0];
  assign m07_couplers_to_m07_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m07_couplers_to_m07_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m07_couplers_to_m07_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m07_couplers_to_m07_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m07_couplers_to_m07_couplers_AWLOCK = S_AXI_awlock[0];
  assign m07_couplers_to_m07_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m07_couplers_to_m07_couplers_AWREADY = M_AXI_awready[0];
  assign m07_couplers_to_m07_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m07_couplers_to_m07_couplers_AWVALID = S_AXI_awvalid[0];
  assign m07_couplers_to_m07_couplers_BREADY = S_AXI_bready[0];
  assign m07_couplers_to_m07_couplers_BRESP = M_AXI_bresp[1:0];
  assign m07_couplers_to_m07_couplers_BVALID = M_AXI_bvalid[0];
  assign m07_couplers_to_m07_couplers_RDATA = M_AXI_rdata[255:0];
  assign m07_couplers_to_m07_couplers_RLAST = M_AXI_rlast[0];
  assign m07_couplers_to_m07_couplers_RREADY = S_AXI_rready[0];
  assign m07_couplers_to_m07_couplers_RRESP = M_AXI_rresp[1:0];
  assign m07_couplers_to_m07_couplers_RVALID = M_AXI_rvalid[0];
  assign m07_couplers_to_m07_couplers_WDATA = S_AXI_wdata[255:0];
  assign m07_couplers_to_m07_couplers_WLAST = S_AXI_wlast[0];
  assign m07_couplers_to_m07_couplers_WREADY = M_AXI_wready[0];
  assign m07_couplers_to_m07_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m07_couplers_to_m07_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m08_couplers_imp_1FF5BKI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m08_couplers_to_m08_couplers_ARADDR;
  wire [1:0]m08_couplers_to_m08_couplers_ARBURST;
  wire [3:0]m08_couplers_to_m08_couplers_ARCACHE;
  wire [7:0]m08_couplers_to_m08_couplers_ARLEN;
  wire [0:0]m08_couplers_to_m08_couplers_ARLOCK;
  wire [2:0]m08_couplers_to_m08_couplers_ARPROT;
  wire [0:0]m08_couplers_to_m08_couplers_ARREADY;
  wire [2:0]m08_couplers_to_m08_couplers_ARSIZE;
  wire [0:0]m08_couplers_to_m08_couplers_ARVALID;
  wire [39:0]m08_couplers_to_m08_couplers_AWADDR;
  wire [1:0]m08_couplers_to_m08_couplers_AWBURST;
  wire [3:0]m08_couplers_to_m08_couplers_AWCACHE;
  wire [7:0]m08_couplers_to_m08_couplers_AWLEN;
  wire [0:0]m08_couplers_to_m08_couplers_AWLOCK;
  wire [2:0]m08_couplers_to_m08_couplers_AWPROT;
  wire [0:0]m08_couplers_to_m08_couplers_AWREADY;
  wire [2:0]m08_couplers_to_m08_couplers_AWSIZE;
  wire [0:0]m08_couplers_to_m08_couplers_AWVALID;
  wire [0:0]m08_couplers_to_m08_couplers_BREADY;
  wire [1:0]m08_couplers_to_m08_couplers_BRESP;
  wire [0:0]m08_couplers_to_m08_couplers_BVALID;
  wire [255:0]m08_couplers_to_m08_couplers_RDATA;
  wire [0:0]m08_couplers_to_m08_couplers_RLAST;
  wire [0:0]m08_couplers_to_m08_couplers_RREADY;
  wire [1:0]m08_couplers_to_m08_couplers_RRESP;
  wire [0:0]m08_couplers_to_m08_couplers_RVALID;
  wire [255:0]m08_couplers_to_m08_couplers_WDATA;
  wire [0:0]m08_couplers_to_m08_couplers_WLAST;
  wire [0:0]m08_couplers_to_m08_couplers_WREADY;
  wire [31:0]m08_couplers_to_m08_couplers_WSTRB;
  wire [0:0]m08_couplers_to_m08_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m08_couplers_to_m08_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m08_couplers_to_m08_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m08_couplers_to_m08_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m08_couplers_to_m08_couplers_ARLEN;
  assign M_AXI_arlock[0] = m08_couplers_to_m08_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m08_couplers_to_m08_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m08_couplers_to_m08_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m08_couplers_to_m08_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m08_couplers_to_m08_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m08_couplers_to_m08_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m08_couplers_to_m08_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m08_couplers_to_m08_couplers_AWLEN;
  assign M_AXI_awlock[0] = m08_couplers_to_m08_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m08_couplers_to_m08_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m08_couplers_to_m08_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m08_couplers_to_m08_couplers_AWVALID;
  assign M_AXI_bready[0] = m08_couplers_to_m08_couplers_BREADY;
  assign M_AXI_rready[0] = m08_couplers_to_m08_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m08_couplers_to_m08_couplers_WDATA;
  assign M_AXI_wlast[0] = m08_couplers_to_m08_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m08_couplers_to_m08_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m08_couplers_to_m08_couplers_WVALID;
  assign S_AXI_arready[0] = m08_couplers_to_m08_couplers_ARREADY;
  assign S_AXI_awready[0] = m08_couplers_to_m08_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m08_couplers_to_m08_couplers_BRESP;
  assign S_AXI_bvalid[0] = m08_couplers_to_m08_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m08_couplers_to_m08_couplers_RDATA;
  assign S_AXI_rlast[0] = m08_couplers_to_m08_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m08_couplers_to_m08_couplers_RRESP;
  assign S_AXI_rvalid[0] = m08_couplers_to_m08_couplers_RVALID;
  assign S_AXI_wready[0] = m08_couplers_to_m08_couplers_WREADY;
  assign m08_couplers_to_m08_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m08_couplers_to_m08_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m08_couplers_to_m08_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m08_couplers_to_m08_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m08_couplers_to_m08_couplers_ARLOCK = S_AXI_arlock[0];
  assign m08_couplers_to_m08_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m08_couplers_to_m08_couplers_ARREADY = M_AXI_arready[0];
  assign m08_couplers_to_m08_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m08_couplers_to_m08_couplers_ARVALID = S_AXI_arvalid[0];
  assign m08_couplers_to_m08_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m08_couplers_to_m08_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m08_couplers_to_m08_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m08_couplers_to_m08_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m08_couplers_to_m08_couplers_AWLOCK = S_AXI_awlock[0];
  assign m08_couplers_to_m08_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m08_couplers_to_m08_couplers_AWREADY = M_AXI_awready[0];
  assign m08_couplers_to_m08_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m08_couplers_to_m08_couplers_AWVALID = S_AXI_awvalid[0];
  assign m08_couplers_to_m08_couplers_BREADY = S_AXI_bready[0];
  assign m08_couplers_to_m08_couplers_BRESP = M_AXI_bresp[1:0];
  assign m08_couplers_to_m08_couplers_BVALID = M_AXI_bvalid[0];
  assign m08_couplers_to_m08_couplers_RDATA = M_AXI_rdata[255:0];
  assign m08_couplers_to_m08_couplers_RLAST = M_AXI_rlast[0];
  assign m08_couplers_to_m08_couplers_RREADY = S_AXI_rready[0];
  assign m08_couplers_to_m08_couplers_RRESP = M_AXI_rresp[1:0];
  assign m08_couplers_to_m08_couplers_RVALID = M_AXI_rvalid[0];
  assign m08_couplers_to_m08_couplers_WDATA = S_AXI_wdata[255:0];
  assign m08_couplers_to_m08_couplers_WLAST = S_AXI_wlast[0];
  assign m08_couplers_to_m08_couplers_WREADY = M_AXI_wready[0];
  assign m08_couplers_to_m08_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m08_couplers_to_m08_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m09_couplers_imp_NV1J5F
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m09_couplers_to_m09_couplers_ARADDR;
  wire [1:0]m09_couplers_to_m09_couplers_ARBURST;
  wire [3:0]m09_couplers_to_m09_couplers_ARCACHE;
  wire [7:0]m09_couplers_to_m09_couplers_ARLEN;
  wire [0:0]m09_couplers_to_m09_couplers_ARLOCK;
  wire [2:0]m09_couplers_to_m09_couplers_ARPROT;
  wire [0:0]m09_couplers_to_m09_couplers_ARREADY;
  wire [2:0]m09_couplers_to_m09_couplers_ARSIZE;
  wire [0:0]m09_couplers_to_m09_couplers_ARVALID;
  wire [39:0]m09_couplers_to_m09_couplers_AWADDR;
  wire [1:0]m09_couplers_to_m09_couplers_AWBURST;
  wire [3:0]m09_couplers_to_m09_couplers_AWCACHE;
  wire [7:0]m09_couplers_to_m09_couplers_AWLEN;
  wire [0:0]m09_couplers_to_m09_couplers_AWLOCK;
  wire [2:0]m09_couplers_to_m09_couplers_AWPROT;
  wire [0:0]m09_couplers_to_m09_couplers_AWREADY;
  wire [2:0]m09_couplers_to_m09_couplers_AWSIZE;
  wire [0:0]m09_couplers_to_m09_couplers_AWVALID;
  wire [0:0]m09_couplers_to_m09_couplers_BREADY;
  wire [1:0]m09_couplers_to_m09_couplers_BRESP;
  wire [0:0]m09_couplers_to_m09_couplers_BVALID;
  wire [255:0]m09_couplers_to_m09_couplers_RDATA;
  wire [0:0]m09_couplers_to_m09_couplers_RLAST;
  wire [0:0]m09_couplers_to_m09_couplers_RREADY;
  wire [1:0]m09_couplers_to_m09_couplers_RRESP;
  wire [0:0]m09_couplers_to_m09_couplers_RVALID;
  wire [255:0]m09_couplers_to_m09_couplers_WDATA;
  wire [0:0]m09_couplers_to_m09_couplers_WLAST;
  wire [0:0]m09_couplers_to_m09_couplers_WREADY;
  wire [31:0]m09_couplers_to_m09_couplers_WSTRB;
  wire [0:0]m09_couplers_to_m09_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m09_couplers_to_m09_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m09_couplers_to_m09_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m09_couplers_to_m09_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m09_couplers_to_m09_couplers_ARLEN;
  assign M_AXI_arlock[0] = m09_couplers_to_m09_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m09_couplers_to_m09_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m09_couplers_to_m09_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m09_couplers_to_m09_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m09_couplers_to_m09_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m09_couplers_to_m09_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m09_couplers_to_m09_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m09_couplers_to_m09_couplers_AWLEN;
  assign M_AXI_awlock[0] = m09_couplers_to_m09_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m09_couplers_to_m09_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m09_couplers_to_m09_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m09_couplers_to_m09_couplers_AWVALID;
  assign M_AXI_bready[0] = m09_couplers_to_m09_couplers_BREADY;
  assign M_AXI_rready[0] = m09_couplers_to_m09_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m09_couplers_to_m09_couplers_WDATA;
  assign M_AXI_wlast[0] = m09_couplers_to_m09_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m09_couplers_to_m09_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m09_couplers_to_m09_couplers_WVALID;
  assign S_AXI_arready[0] = m09_couplers_to_m09_couplers_ARREADY;
  assign S_AXI_awready[0] = m09_couplers_to_m09_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m09_couplers_to_m09_couplers_BRESP;
  assign S_AXI_bvalid[0] = m09_couplers_to_m09_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m09_couplers_to_m09_couplers_RDATA;
  assign S_AXI_rlast[0] = m09_couplers_to_m09_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m09_couplers_to_m09_couplers_RRESP;
  assign S_AXI_rvalid[0] = m09_couplers_to_m09_couplers_RVALID;
  assign S_AXI_wready[0] = m09_couplers_to_m09_couplers_WREADY;
  assign m09_couplers_to_m09_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m09_couplers_to_m09_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m09_couplers_to_m09_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m09_couplers_to_m09_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m09_couplers_to_m09_couplers_ARLOCK = S_AXI_arlock[0];
  assign m09_couplers_to_m09_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m09_couplers_to_m09_couplers_ARREADY = M_AXI_arready[0];
  assign m09_couplers_to_m09_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m09_couplers_to_m09_couplers_ARVALID = S_AXI_arvalid[0];
  assign m09_couplers_to_m09_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m09_couplers_to_m09_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m09_couplers_to_m09_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m09_couplers_to_m09_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m09_couplers_to_m09_couplers_AWLOCK = S_AXI_awlock[0];
  assign m09_couplers_to_m09_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m09_couplers_to_m09_couplers_AWREADY = M_AXI_awready[0];
  assign m09_couplers_to_m09_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m09_couplers_to_m09_couplers_AWVALID = S_AXI_awvalid[0];
  assign m09_couplers_to_m09_couplers_BREADY = S_AXI_bready[0];
  assign m09_couplers_to_m09_couplers_BRESP = M_AXI_bresp[1:0];
  assign m09_couplers_to_m09_couplers_BVALID = M_AXI_bvalid[0];
  assign m09_couplers_to_m09_couplers_RDATA = M_AXI_rdata[255:0];
  assign m09_couplers_to_m09_couplers_RLAST = M_AXI_rlast[0];
  assign m09_couplers_to_m09_couplers_RREADY = S_AXI_rready[0];
  assign m09_couplers_to_m09_couplers_RRESP = M_AXI_rresp[1:0];
  assign m09_couplers_to_m09_couplers_RVALID = M_AXI_rvalid[0];
  assign m09_couplers_to_m09_couplers_WDATA = S_AXI_wdata[255:0];
  assign m09_couplers_to_m09_couplers_WLAST = S_AXI_wlast[0];
  assign m09_couplers_to_m09_couplers_WREADY = M_AXI_wready[0];
  assign m09_couplers_to_m09_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m09_couplers_to_m09_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m10_couplers_imp_XTG13A
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output [0:0]M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input [0:0]M_AXI_rlast;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output [0:0]M_AXI_wlast;
  input [0:0]M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [0:0]S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [255:0]S_AXI_rdata;
  output [0:0]S_AXI_rlast;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [255:0]S_AXI_wdata;
  input [0:0]S_AXI_wlast;
  output [0:0]S_AXI_wready;
  input [31:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [39:0]m10_couplers_to_m10_couplers_ARADDR;
  wire [1:0]m10_couplers_to_m10_couplers_ARBURST;
  wire [3:0]m10_couplers_to_m10_couplers_ARCACHE;
  wire [7:0]m10_couplers_to_m10_couplers_ARLEN;
  wire [0:0]m10_couplers_to_m10_couplers_ARLOCK;
  wire [2:0]m10_couplers_to_m10_couplers_ARPROT;
  wire [0:0]m10_couplers_to_m10_couplers_ARREADY;
  wire [2:0]m10_couplers_to_m10_couplers_ARSIZE;
  wire [0:0]m10_couplers_to_m10_couplers_ARVALID;
  wire [39:0]m10_couplers_to_m10_couplers_AWADDR;
  wire [1:0]m10_couplers_to_m10_couplers_AWBURST;
  wire [3:0]m10_couplers_to_m10_couplers_AWCACHE;
  wire [7:0]m10_couplers_to_m10_couplers_AWLEN;
  wire [0:0]m10_couplers_to_m10_couplers_AWLOCK;
  wire [2:0]m10_couplers_to_m10_couplers_AWPROT;
  wire [0:0]m10_couplers_to_m10_couplers_AWREADY;
  wire [2:0]m10_couplers_to_m10_couplers_AWSIZE;
  wire [0:0]m10_couplers_to_m10_couplers_AWVALID;
  wire [0:0]m10_couplers_to_m10_couplers_BREADY;
  wire [1:0]m10_couplers_to_m10_couplers_BRESP;
  wire [0:0]m10_couplers_to_m10_couplers_BVALID;
  wire [255:0]m10_couplers_to_m10_couplers_RDATA;
  wire [0:0]m10_couplers_to_m10_couplers_RLAST;
  wire [0:0]m10_couplers_to_m10_couplers_RREADY;
  wire [1:0]m10_couplers_to_m10_couplers_RRESP;
  wire [0:0]m10_couplers_to_m10_couplers_RVALID;
  wire [255:0]m10_couplers_to_m10_couplers_WDATA;
  wire [0:0]m10_couplers_to_m10_couplers_WLAST;
  wire [0:0]m10_couplers_to_m10_couplers_WREADY;
  wire [31:0]m10_couplers_to_m10_couplers_WSTRB;
  wire [0:0]m10_couplers_to_m10_couplers_WVALID;

  assign M_AXI_araddr[39:0] = m10_couplers_to_m10_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m10_couplers_to_m10_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m10_couplers_to_m10_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = m10_couplers_to_m10_couplers_ARLEN;
  assign M_AXI_arlock[0] = m10_couplers_to_m10_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m10_couplers_to_m10_couplers_ARPROT;
  assign M_AXI_arsize[2:0] = m10_couplers_to_m10_couplers_ARSIZE;
  assign M_AXI_arvalid[0] = m10_couplers_to_m10_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = m10_couplers_to_m10_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m10_couplers_to_m10_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m10_couplers_to_m10_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = m10_couplers_to_m10_couplers_AWLEN;
  assign M_AXI_awlock[0] = m10_couplers_to_m10_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m10_couplers_to_m10_couplers_AWPROT;
  assign M_AXI_awsize[2:0] = m10_couplers_to_m10_couplers_AWSIZE;
  assign M_AXI_awvalid[0] = m10_couplers_to_m10_couplers_AWVALID;
  assign M_AXI_bready[0] = m10_couplers_to_m10_couplers_BREADY;
  assign M_AXI_rready[0] = m10_couplers_to_m10_couplers_RREADY;
  assign M_AXI_wdata[255:0] = m10_couplers_to_m10_couplers_WDATA;
  assign M_AXI_wlast[0] = m10_couplers_to_m10_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = m10_couplers_to_m10_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m10_couplers_to_m10_couplers_WVALID;
  assign S_AXI_arready[0] = m10_couplers_to_m10_couplers_ARREADY;
  assign S_AXI_awready[0] = m10_couplers_to_m10_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m10_couplers_to_m10_couplers_BRESP;
  assign S_AXI_bvalid[0] = m10_couplers_to_m10_couplers_BVALID;
  assign S_AXI_rdata[255:0] = m10_couplers_to_m10_couplers_RDATA;
  assign S_AXI_rlast[0] = m10_couplers_to_m10_couplers_RLAST;
  assign S_AXI_rresp[1:0] = m10_couplers_to_m10_couplers_RRESP;
  assign S_AXI_rvalid[0] = m10_couplers_to_m10_couplers_RVALID;
  assign S_AXI_wready[0] = m10_couplers_to_m10_couplers_WREADY;
  assign m10_couplers_to_m10_couplers_ARADDR = S_AXI_araddr[39:0];
  assign m10_couplers_to_m10_couplers_ARBURST = S_AXI_arburst[1:0];
  assign m10_couplers_to_m10_couplers_ARCACHE = S_AXI_arcache[3:0];
  assign m10_couplers_to_m10_couplers_ARLEN = S_AXI_arlen[7:0];
  assign m10_couplers_to_m10_couplers_ARLOCK = S_AXI_arlock[0];
  assign m10_couplers_to_m10_couplers_ARPROT = S_AXI_arprot[2:0];
  assign m10_couplers_to_m10_couplers_ARREADY = M_AXI_arready[0];
  assign m10_couplers_to_m10_couplers_ARSIZE = S_AXI_arsize[2:0];
  assign m10_couplers_to_m10_couplers_ARVALID = S_AXI_arvalid[0];
  assign m10_couplers_to_m10_couplers_AWADDR = S_AXI_awaddr[39:0];
  assign m10_couplers_to_m10_couplers_AWBURST = S_AXI_awburst[1:0];
  assign m10_couplers_to_m10_couplers_AWCACHE = S_AXI_awcache[3:0];
  assign m10_couplers_to_m10_couplers_AWLEN = S_AXI_awlen[7:0];
  assign m10_couplers_to_m10_couplers_AWLOCK = S_AXI_awlock[0];
  assign m10_couplers_to_m10_couplers_AWPROT = S_AXI_awprot[2:0];
  assign m10_couplers_to_m10_couplers_AWREADY = M_AXI_awready[0];
  assign m10_couplers_to_m10_couplers_AWSIZE = S_AXI_awsize[2:0];
  assign m10_couplers_to_m10_couplers_AWVALID = S_AXI_awvalid[0];
  assign m10_couplers_to_m10_couplers_BREADY = S_AXI_bready[0];
  assign m10_couplers_to_m10_couplers_BRESP = M_AXI_bresp[1:0];
  assign m10_couplers_to_m10_couplers_BVALID = M_AXI_bvalid[0];
  assign m10_couplers_to_m10_couplers_RDATA = M_AXI_rdata[255:0];
  assign m10_couplers_to_m10_couplers_RLAST = M_AXI_rlast[0];
  assign m10_couplers_to_m10_couplers_RREADY = S_AXI_rready[0];
  assign m10_couplers_to_m10_couplers_RRESP = M_AXI_rresp[1:0];
  assign m10_couplers_to_m10_couplers_RVALID = M_AXI_rvalid[0];
  assign m10_couplers_to_m10_couplers_WDATA = S_AXI_wdata[255:0];
  assign m10_couplers_to_m10_couplers_WLAST = S_AXI_wlast[0];
  assign m10_couplers_to_m10_couplers_WREADY = M_AXI_wready[0];
  assign m10_couplers_to_m10_couplers_WSTRB = S_AXI_wstrb[31:0];
  assign m10_couplers_to_m10_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_1A7ZMW4
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [17:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [17:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [17:0]auto_pc_to_s00_couplers_ARADDR;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [17:0]auto_pc_to_s00_couplers_AWADDR;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [39:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [15:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire [15:0]s00_couplers_to_s00_regslice_ARUSER;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [39:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [15:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire [15:0]s00_couplers_to_s00_regslice_AWUSER;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [15:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [15:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [39:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [15:0]s00_regslice_to_auto_pc_ARID;
  wire [7:0]s00_regslice_to_auto_pc_ARLEN;
  wire [0:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [3:0]s00_regslice_to_auto_pc_ARREGION;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [39:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [15:0]s00_regslice_to_auto_pc_AWID;
  wire [7:0]s00_regslice_to_auto_pc_AWLEN;
  wire [0:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [3:0]s00_regslice_to_auto_pc_AWREGION;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [15:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [15:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_AXI_araddr[17:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[17:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  design_1_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR[17:0]),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR[17:0]),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
  design_1_s00_regslice_52 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_pc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_pc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_aruser(s00_couplers_to_s00_regslice_ARUSER),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awuser(s00_couplers_to_s00_regslice_AWUSER),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_O7FAN0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_aruser,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awuser,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [39:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [39:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [255:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [255:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [31:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [39:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [15:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input [15:0]S_AXI_aruser;
  input S_AXI_arvalid;
  input [39:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [15:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input [15:0]S_AXI_awuser;
  input S_AXI_awvalid;
  output [15:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [127:0]S_AXI_rdata;
  output [15:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [127:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [15:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [39:0]auto_rs_w_to_s00_couplers_ARADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_ARBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_ARCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_ARLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_ARLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_ARPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_ARQOS;
  wire auto_rs_w_to_s00_couplers_ARREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_ARSIZE;
  wire auto_rs_w_to_s00_couplers_ARVALID;
  wire [39:0]auto_rs_w_to_s00_couplers_AWADDR;
  wire [1:0]auto_rs_w_to_s00_couplers_AWBURST;
  wire [3:0]auto_rs_w_to_s00_couplers_AWCACHE;
  wire [7:0]auto_rs_w_to_s00_couplers_AWLEN;
  wire [0:0]auto_rs_w_to_s00_couplers_AWLOCK;
  wire [2:0]auto_rs_w_to_s00_couplers_AWPROT;
  wire [3:0]auto_rs_w_to_s00_couplers_AWQOS;
  wire auto_rs_w_to_s00_couplers_AWREADY;
  wire [2:0]auto_rs_w_to_s00_couplers_AWSIZE;
  wire auto_rs_w_to_s00_couplers_AWVALID;
  wire auto_rs_w_to_s00_couplers_BREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_BRESP;
  wire auto_rs_w_to_s00_couplers_BVALID;
  wire [255:0]auto_rs_w_to_s00_couplers_RDATA;
  wire auto_rs_w_to_s00_couplers_RLAST;
  wire auto_rs_w_to_s00_couplers_RREADY;
  wire [1:0]auto_rs_w_to_s00_couplers_RRESP;
  wire auto_rs_w_to_s00_couplers_RVALID;
  wire [255:0]auto_rs_w_to_s00_couplers_WDATA;
  wire auto_rs_w_to_s00_couplers_WLAST;
  wire auto_rs_w_to_s00_couplers_WREADY;
  wire [31:0]auto_rs_w_to_s00_couplers_WSTRB;
  wire auto_rs_w_to_s00_couplers_WVALID;
  wire [39:0]auto_us_to_auto_rs_w_ARADDR;
  wire [1:0]auto_us_to_auto_rs_w_ARBURST;
  wire [3:0]auto_us_to_auto_rs_w_ARCACHE;
  wire [7:0]auto_us_to_auto_rs_w_ARLEN;
  wire [0:0]auto_us_to_auto_rs_w_ARLOCK;
  wire [2:0]auto_us_to_auto_rs_w_ARPROT;
  wire [3:0]auto_us_to_auto_rs_w_ARQOS;
  wire auto_us_to_auto_rs_w_ARREADY;
  wire [3:0]auto_us_to_auto_rs_w_ARREGION;
  wire [2:0]auto_us_to_auto_rs_w_ARSIZE;
  wire auto_us_to_auto_rs_w_ARVALID;
  wire [39:0]auto_us_to_auto_rs_w_AWADDR;
  wire [1:0]auto_us_to_auto_rs_w_AWBURST;
  wire [3:0]auto_us_to_auto_rs_w_AWCACHE;
  wire [7:0]auto_us_to_auto_rs_w_AWLEN;
  wire [0:0]auto_us_to_auto_rs_w_AWLOCK;
  wire [2:0]auto_us_to_auto_rs_w_AWPROT;
  wire [3:0]auto_us_to_auto_rs_w_AWQOS;
  wire auto_us_to_auto_rs_w_AWREADY;
  wire [3:0]auto_us_to_auto_rs_w_AWREGION;
  wire [2:0]auto_us_to_auto_rs_w_AWSIZE;
  wire auto_us_to_auto_rs_w_AWVALID;
  wire auto_us_to_auto_rs_w_BREADY;
  wire [1:0]auto_us_to_auto_rs_w_BRESP;
  wire auto_us_to_auto_rs_w_BVALID;
  wire [255:0]auto_us_to_auto_rs_w_RDATA;
  wire auto_us_to_auto_rs_w_RLAST;
  wire auto_us_to_auto_rs_w_RREADY;
  wire [1:0]auto_us_to_auto_rs_w_RRESP;
  wire auto_us_to_auto_rs_w_RVALID;
  wire [255:0]auto_us_to_auto_rs_w_WDATA;
  wire auto_us_to_auto_rs_w_WLAST;
  wire auto_us_to_auto_rs_w_WREADY;
  wire [31:0]auto_us_to_auto_rs_w_WSTRB;
  wire auto_us_to_auto_rs_w_WVALID;
  wire [39:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [15:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire [15:0]s00_couplers_to_s00_regslice_ARUSER;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [39:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [15:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire [15:0]s00_couplers_to_s00_regslice_AWUSER;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [15:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [127:0]s00_couplers_to_s00_regslice_RDATA;
  wire [15:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [127:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [15:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [39:0]s00_regslice_to_auto_us_ARADDR;
  wire [1:0]s00_regslice_to_auto_us_ARBURST;
  wire [3:0]s00_regslice_to_auto_us_ARCACHE;
  wire [15:0]s00_regslice_to_auto_us_ARID;
  wire [7:0]s00_regslice_to_auto_us_ARLEN;
  wire [0:0]s00_regslice_to_auto_us_ARLOCK;
  wire [2:0]s00_regslice_to_auto_us_ARPROT;
  wire [3:0]s00_regslice_to_auto_us_ARQOS;
  wire s00_regslice_to_auto_us_ARREADY;
  wire [3:0]s00_regslice_to_auto_us_ARREGION;
  wire [2:0]s00_regslice_to_auto_us_ARSIZE;
  wire s00_regslice_to_auto_us_ARVALID;
  wire [39:0]s00_regslice_to_auto_us_AWADDR;
  wire [1:0]s00_regslice_to_auto_us_AWBURST;
  wire [3:0]s00_regslice_to_auto_us_AWCACHE;
  wire [15:0]s00_regslice_to_auto_us_AWID;
  wire [7:0]s00_regslice_to_auto_us_AWLEN;
  wire [0:0]s00_regslice_to_auto_us_AWLOCK;
  wire [2:0]s00_regslice_to_auto_us_AWPROT;
  wire [3:0]s00_regslice_to_auto_us_AWQOS;
  wire s00_regslice_to_auto_us_AWREADY;
  wire [3:0]s00_regslice_to_auto_us_AWREGION;
  wire [2:0]s00_regslice_to_auto_us_AWSIZE;
  wire s00_regslice_to_auto_us_AWVALID;
  wire [15:0]s00_regslice_to_auto_us_BID;
  wire s00_regslice_to_auto_us_BREADY;
  wire [1:0]s00_regslice_to_auto_us_BRESP;
  wire s00_regslice_to_auto_us_BVALID;
  wire [127:0]s00_regslice_to_auto_us_RDATA;
  wire [15:0]s00_regslice_to_auto_us_RID;
  wire s00_regslice_to_auto_us_RLAST;
  wire s00_regslice_to_auto_us_RREADY;
  wire [1:0]s00_regslice_to_auto_us_RRESP;
  wire s00_regslice_to_auto_us_RVALID;
  wire [127:0]s00_regslice_to_auto_us_WDATA;
  wire s00_regslice_to_auto_us_WLAST;
  wire s00_regslice_to_auto_us_WREADY;
  wire [15:0]s00_regslice_to_auto_us_WSTRB;
  wire s00_regslice_to_auto_us_WVALID;

  assign M_AXI_araddr[39:0] = auto_rs_w_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_rs_w_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_rs_w_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_rs_w_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_rs_w_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_rs_w_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_rs_w_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_rs_w_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_rs_w_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[39:0] = auto_rs_w_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_rs_w_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_rs_w_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_rs_w_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_rs_w_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_rs_w_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_rs_w_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_rs_w_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_rs_w_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_rs_w_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_rs_w_to_s00_couplers_RREADY;
  assign M_AXI_wdata[255:0] = auto_rs_w_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_rs_w_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[31:0] = auto_rs_w_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_rs_w_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[15:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[127:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[15:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_rs_w_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_rs_w_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_rs_w_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_rs_w_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_rs_w_to_s00_couplers_RDATA = M_AXI_rdata[255:0];
  assign auto_rs_w_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_rs_w_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_rs_w_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_rs_w_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[39:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[15:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock;
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARUSER = S_AXI_aruser[15:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[39:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[15:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock;
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWUSER = S_AXI_awuser[15:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[127:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[15:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  design_1_auto_rs_w_1 auto_rs_w
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_rs_w_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_rs_w_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_rs_w_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_rs_w_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_rs_w_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_rs_w_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_rs_w_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_rs_w_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_rs_w_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_rs_w_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_rs_w_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_rs_w_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_rs_w_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_rs_w_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_rs_w_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_rs_w_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_rs_w_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_rs_w_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_rs_w_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_rs_w_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_rs_w_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_rs_w_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_rs_w_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_rs_w_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_rs_w_to_s00_couplers_RLAST),
        .m_axi_rready(auto_rs_w_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_rs_w_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_rs_w_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_rs_w_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_rs_w_to_s00_couplers_WLAST),
        .m_axi_wready(auto_rs_w_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_rs_w_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_rs_w_to_s00_couplers_WVALID),
        .s_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .s_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .s_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .s_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .s_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .s_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .s_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .s_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .s_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .s_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .s_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .s_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .s_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .s_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .s_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .s_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .s_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .s_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .s_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .s_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .s_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .s_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .s_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .s_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .s_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .s_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .s_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .s_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .s_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .s_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .s_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .s_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .s_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .s_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .s_axi_wvalid(auto_us_to_auto_rs_w_WVALID));
  design_1_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_auto_rs_w_ARADDR),
        .m_axi_arburst(auto_us_to_auto_rs_w_ARBURST),
        .m_axi_arcache(auto_us_to_auto_rs_w_ARCACHE),
        .m_axi_arlen(auto_us_to_auto_rs_w_ARLEN),
        .m_axi_arlock(auto_us_to_auto_rs_w_ARLOCK),
        .m_axi_arprot(auto_us_to_auto_rs_w_ARPROT),
        .m_axi_arqos(auto_us_to_auto_rs_w_ARQOS),
        .m_axi_arready(auto_us_to_auto_rs_w_ARREADY),
        .m_axi_arregion(auto_us_to_auto_rs_w_ARREGION),
        .m_axi_arsize(auto_us_to_auto_rs_w_ARSIZE),
        .m_axi_arvalid(auto_us_to_auto_rs_w_ARVALID),
        .m_axi_awaddr(auto_us_to_auto_rs_w_AWADDR),
        .m_axi_awburst(auto_us_to_auto_rs_w_AWBURST),
        .m_axi_awcache(auto_us_to_auto_rs_w_AWCACHE),
        .m_axi_awlen(auto_us_to_auto_rs_w_AWLEN),
        .m_axi_awlock(auto_us_to_auto_rs_w_AWLOCK),
        .m_axi_awprot(auto_us_to_auto_rs_w_AWPROT),
        .m_axi_awqos(auto_us_to_auto_rs_w_AWQOS),
        .m_axi_awready(auto_us_to_auto_rs_w_AWREADY),
        .m_axi_awregion(auto_us_to_auto_rs_w_AWREGION),
        .m_axi_awsize(auto_us_to_auto_rs_w_AWSIZE),
        .m_axi_awvalid(auto_us_to_auto_rs_w_AWVALID),
        .m_axi_bready(auto_us_to_auto_rs_w_BREADY),
        .m_axi_bresp(auto_us_to_auto_rs_w_BRESP),
        .m_axi_bvalid(auto_us_to_auto_rs_w_BVALID),
        .m_axi_rdata(auto_us_to_auto_rs_w_RDATA),
        .m_axi_rlast(auto_us_to_auto_rs_w_RLAST),
        .m_axi_rready(auto_us_to_auto_rs_w_RREADY),
        .m_axi_rresp(auto_us_to_auto_rs_w_RRESP),
        .m_axi_rvalid(auto_us_to_auto_rs_w_RVALID),
        .m_axi_wdata(auto_us_to_auto_rs_w_WDATA),
        .m_axi_wlast(auto_us_to_auto_rs_w_WLAST),
        .m_axi_wready(auto_us_to_auto_rs_w_WREADY),
        .m_axi_wstrb(auto_us_to_auto_rs_w_WSTRB),
        .m_axi_wvalid(auto_us_to_auto_rs_w_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arid(s00_regslice_to_auto_us_ARID),
        .s_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_us_AWID),
        .s_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_us_BID),
        .s_axi_bready(s00_regslice_to_auto_us_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .s_axi_rid(s00_regslice_to_auto_us_RID),
        .s_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .s_axi_rready(s00_regslice_to_auto_us_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .s_axi_wready(s00_regslice_to_auto_us_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_us_WVALID));
  design_1_s00_regslice_51 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_us_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_us_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_us_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_us_ARID),
        .m_axi_arlen(s00_regslice_to_auto_us_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_us_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_us_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_us_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_us_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_us_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_us_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_us_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_us_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_us_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_us_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_us_AWID),
        .m_axi_awlen(s00_regslice_to_auto_us_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_us_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_us_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_us_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_us_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_us_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_us_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_us_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_us_BID),
        .m_axi_bready(s00_regslice_to_auto_us_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_us_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_us_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_us_RDATA),
        .m_axi_rid(s00_regslice_to_auto_us_RID),
        .m_axi_rlast(s00_regslice_to_auto_us_RLAST),
        .m_axi_rready(s00_regslice_to_auto_us_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_us_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_us_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_us_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_us_WLAST),
        .m_axi_wready(s00_regslice_to_auto_us_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_us_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_aruser(s00_couplers_to_s00_regslice_ARUSER),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awuser(s00_couplers_to_s00_regslice_AWUSER),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule
