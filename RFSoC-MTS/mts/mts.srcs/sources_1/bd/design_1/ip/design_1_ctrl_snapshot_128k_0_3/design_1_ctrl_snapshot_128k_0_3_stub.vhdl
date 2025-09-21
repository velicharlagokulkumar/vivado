-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:04:28 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_ctrl_snapshot_128k_0_3/design_1_ctrl_snapshot_128k_0_3_stub.vhdl
-- Design      : design_1_ctrl_snapshot_128k_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ctrl_snapshot_128k_0_3 is
  Port ( 
    bram_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_we : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_en : out STD_LOGIC;
    bram_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    bram_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_clk : out STD_LOGIC;
    bram_rst : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    CAP_AXIS_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    CAP_AXIS_tready : out STD_LOGIC;
    CAP_AXIS_tvalid : in STD_LOGIC;
    PASSTHROUGH_AXIS_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    PASSTHROUGH_AXIS_tready : in STD_LOGIC;
    PASSTHROUGH_AXIS_tvalid : out STD_LOGIC;
    trig_cap : in STD_LOGIC;
    trig_cap_p_2to1_mon : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end design_1_ctrl_snapshot_128k_0_3;

architecture stub of design_1_ctrl_snapshot_128k_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "bram_wdata[255:0],bram_we[31:0],bram_en,bram_rdata[255:0],bram_addr[31:0],bram_clk,bram_rst,axis_clk,axis_aresetn,CAP_AXIS_tdata[255:0],CAP_AXIS_tready,CAP_AXIS_tvalid,PASSTHROUGH_AXIS_tdata[255:0],PASSTHROUGH_AXIS_tready,PASSTHROUGH_AXIS_tvalid,trig_cap,trig_cap_p_2to1_mon[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ctrl_snapshot_128k,Vivado 2019.2";
begin
end;
