-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sat Jun  1 15:33:24 2024
-- Host        : wisig-OptiPlex-3060 running 64-bit Ubuntu 20.04.6 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wisig/Music/xilinx/ZCU111_dds_ila_2020p2/vv.xpr/vv/project_2/project_2.srcs/sources_1/bd/design_1/ip/design_1_dds_compiler_0_0/design_1_dds_compiler_0_0_stub.vhdl
-- Design      : design_1_dds_compiler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dds_compiler_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_dds_compiler_0_0;

architecture stub of design_1_dds_compiler_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,m_axis_data_tvalid,m_axis_data_tdata[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dds_compiler_v6_0_19,Vivado 2019.2";
begin
end;
