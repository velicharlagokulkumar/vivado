-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:03:05 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_pl_sysref_0_0/design_1_pl_sysref_0_0_stub.vhdl
-- Design      : design_1_pl_sysref_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_pl_sysref_0_0 is
  Port ( 
    pl_clk : in STD_LOGIC;
    pl_sysref_p : in STD_LOGIC;
    pl_sysref_n : in STD_LOGIC;
    selNeg : in STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    user_sysref_dac : out STD_LOGIC
  );

end design_1_pl_sysref_0_0;

architecture stub of design_1_pl_sysref_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "pl_clk,pl_sysref_p,pl_sysref_n,selNeg,user_sysref_adc,user_sysref_dac";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pl_sysref,Vivado 2019.2";
begin
end;
