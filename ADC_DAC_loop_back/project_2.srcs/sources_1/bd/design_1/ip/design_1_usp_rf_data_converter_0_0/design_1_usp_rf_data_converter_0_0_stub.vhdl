-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat Jun  1 15:33:49 2024
-- Host        : wisig-OptiPlex-3060 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wisig/Music/xilinx/ZCU111_dds_ila_2020p2/vv.xpr/vv/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_usp_rf_data_converter_0_0/design_1_usp_rf_data_converter_0_0_stub.vhdl
-- Design      : design_1_usp_rf_data_converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_usp_rf_data_converter_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sysref_in_p : in STD_LOGIC;
    sysref_in_n : in STD_LOGIC;
    adc0_clk_p : in STD_LOGIC;
    adc0_clk_n : in STD_LOGIC;
    clk_adc0 : out STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC;
    m0_axis_aresetn : in STD_LOGIC;
    vin0_01_p : in STD_LOGIC;
    vin0_01_n : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    dac1_clk_p : in STD_LOGIC;
    dac1_clk_n : in STD_LOGIC;
    clk_dac1 : out STD_LOGIC;
    s1_axis_aclk : in STD_LOGIC;
    s1_axis_aresetn : in STD_LOGIC;
    vout13_p : out STD_LOGIC;
    vout13_n : out STD_LOGIC;
    s13_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s13_axis_tvalid : in STD_LOGIC;
    s13_axis_tready : out STD_LOGIC;
    irq : out STD_LOGIC
  );

end design_1_usp_rf_data_converter_0_0;

architecture stub of design_1_usp_rf_data_converter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[17:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[17:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,sysref_in_p,sysref_in_n,adc0_clk_p,adc0_clk_n,clk_adc0,m0_axis_aclk,m0_axis_aresetn,vin0_01_p,vin0_01_n,m00_axis_tdata[15:0],m00_axis_tvalid,m00_axis_tready,dac1_clk_p,dac1_clk_n,clk_dac1,s1_axis_aclk,s1_axis_aresetn,vout13_p,vout13_n,s13_axis_tdata[15:0],s13_axis_tvalid,s13_axis_tready,irq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "usp_rf_data_converter_v2_2_0,Vivado 2019.2";
begin
end;
