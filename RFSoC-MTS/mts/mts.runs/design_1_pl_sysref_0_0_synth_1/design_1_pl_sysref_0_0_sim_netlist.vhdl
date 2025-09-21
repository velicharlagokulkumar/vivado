-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:03:05 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_pl_sysref_0_0_sim_netlist.vhdl
-- Design      : design_1_pl_sysref_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_sysref is
  port (
    user_sysref_adc : out STD_LOGIC;
    user_sysref_dac : out STD_LOGIC;
    pl_sysref_p : in STD_LOGIC;
    pl_sysref_n : in STD_LOGIC;
    pl_clk : in STD_LOGIC;
    selNeg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_sysref;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_sysref is
  signal ff0 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ff0 : signal is std.standard.true;
  signal ff0_i_1_n_0 : STD_LOGIC;
  signal ff1 : STD_LOGIC;
  attribute DONT_TOUCH of ff1 : signal is std.standard.true;
  signal ff2 : STD_LOGIC;
  attribute DONT_TOUCH of ff2 : signal is std.standard.true;
  signal ffAdc : STD_LOGIC;
  attribute DONT_TOUCH of ffAdc : signal is std.standard.true;
  signal ffDac : STD_LOGIC;
  attribute DONT_TOUCH of ffDac : signal is std.standard.true;
  signal pl_sysref_falling : STD_LOGIC;
  signal pl_sysref_i : STD_LOGIC;
  signal pl_sysref_rising : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_inst : label is "AUTO";
  attribute BOX_TYPE of IDDRE1_inst : label is "PRIMITIVE";
  attribute DONT_TOUCH of ff0_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ff0_reg : label is "yes";
  attribute DONT_TOUCH of ff1_reg : label is std.standard.true;
  attribute KEEP of ff1_reg : label is "yes";
  attribute DONT_TOUCH of ff2_reg : label is std.standard.true;
  attribute KEEP of ff2_reg : label is "yes";
  attribute DONT_TOUCH of ffAdc_reg : label is std.standard.true;
  attribute KEEP of ffAdc_reg : label is "yes";
  attribute DONT_TOUCH of ffDac_reg : label is std.standard.true;
  attribute KEEP of ffDac_reg : label is "yes";
begin
  user_sysref_adc <= ffAdc;
  user_sysref_dac <= ffDac;
IBUFDS_inst: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pl_sysref_p,
      IB => pl_sysref_n,
      O => pl_sysref_i
    );
IDDRE1_inst: unisim.vcomponents.IDDRE1
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      IS_CB_INVERTED => '0',
      IS_C_INVERTED => '0'
    )
        port map (
      C => pl_clk,
      CB => pl_clk,
      D => pl_sysref_i,
      Q1 => pl_sysref_rising,
      Q2 => pl_sysref_falling,
      R => '0'
    );
ff0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pl_sysref_falling,
      I1 => selNeg,
      I2 => pl_sysref_rising,
      O => ff0_i_1_n_0
    );
ff0_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk,
      CE => '1',
      D => ff0_i_1_n_0,
      Q => ff0,
      R => '0'
    );
ff1_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk,
      CE => '1',
      D => ff0,
      Q => ff1,
      R => '0'
    );
ff2_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk,
      CE => '1',
      D => ff1,
      Q => ff2,
      R => '0'
    );
ffAdc_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk,
      CE => '1',
      D => ff2,
      Q => ffAdc,
      R => '0'
    );
ffDac_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk,
      CE => '1',
      D => ff2,
      Q => ffDac,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    pl_clk : in STD_LOGIC;
    pl_sysref_p : in STD_LOGIC;
    pl_sysref_n : in STD_LOGIC;
    selNeg : in STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    user_sysref_dac : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_pl_sysref_0_0,pl_sysref,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pl_sysref,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 384000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_sysref_n : signal is "xilinx.com:interface:diff_clock:1.0 pl_sysref CLK_N";
  attribute X_INTERFACE_PARAMETER of pl_sysref_n : signal is "XIL_INTERFACENAME pl_sysref, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of pl_sysref_p : signal is "xilinx.com:interface:diff_clock:1.0 pl_sysref CLK_P";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pl_sysref
     port map (
      pl_clk => pl_clk,
      pl_sysref_n => pl_sysref_n,
      pl_sysref_p => pl_sysref_p,
      selNeg => selNeg,
      user_sysref_adc => user_sysref_adc,
      user_sysref_dac => user_sysref_dac
    );
end STRUCTURE;
