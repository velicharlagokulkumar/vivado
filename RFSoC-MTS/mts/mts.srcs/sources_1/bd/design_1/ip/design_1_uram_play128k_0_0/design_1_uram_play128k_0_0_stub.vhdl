-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:03:05 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_uram_play128k_0_0/design_1_uram_play128k_0_0_stub.vhdl
-- Design      : design_1_uram_play128k_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_uram_play128k_0_0 is
  Port ( 
    portA_cpu_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    portA_we : out STD_LOGIC_VECTOR ( 31 downto 0 );
    portA_en : out STD_LOGIC;
    portA_cpu_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    portAcpu_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    portA_clk : out STD_LOGIC;
    portA_rst : out STD_LOGIC;
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    axis_tready : in STD_LOGIC;
    axis_tvalid : out STD_LOGIC;
    enable : in STD_LOGIC
  );

end design_1_uram_play128k_0_0;

architecture stub of design_1_uram_play128k_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "portA_cpu_wdata[255:0],portA_we[31:0],portA_en,portA_cpu_rdata[255:0],portAcpu_addr[31:0],portA_clk,portA_rst,axis_clk,axis_aresetn,axis_tdata[255:0],axis_tready,axis_tvalid,enable";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uram_play128k,Vivado 2019.2";
begin
end;
