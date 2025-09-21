-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:03:05 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_startup_0_0_sim_netlist.vhdl
-- Design      : design_1_startup_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_startup is
  port (
    CFGMCLK_RAW : out STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_startup;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_startup is
  signal NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_EOS_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_PREQ_UNCONNECTED : STD_LOGIC;
  signal NLW_STARTUPE3_inst_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of STARTUPE3_inst : label is "PRIMITIVE";
begin
STARTUPE3_inst: unisim.vcomponents.STARTUPE3
    generic map(
      PROG_USR => "FALSE"
    )
        port map (
      CFGCLK => NLW_STARTUPE3_inst_CFGCLK_UNCONNECTED,
      CFGMCLK => CFGMCLK_RAW,
      DI(3 downto 0) => NLW_STARTUPE3_inst_DI_UNCONNECTED(3 downto 0),
      DO(3 downto 0) => B"0000",
      DTS(3 downto 0) => B"1111",
      EOS => NLW_STARTUPE3_inst_EOS_UNCONNECTED,
      FCSBO => '0',
      FCSBTS => '1',
      GSR => '0',
      GTS => '0',
      KEYCLEARB => '0',
      PACK => '0',
      PREQ => NLW_STARTUPE3_inst_PREQ_UNCONNECTED,
      USRCCLKO => '0',
      USRCCLKTS => '0',
      USRDONEO => '0',
      USRDONETS => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CFGMCLK_RAW : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_startup_0_0,startup,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "startup,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CFGMCLK_RAW : signal is "xilinx.com:signal:clock:1.0 CFGMCLK_RAW CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CFGMCLK_RAW : signal is "XIL_INTERFACENAME CFGMCLK_RAW, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_startup_0_0_CFGMCLK_RAW, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_startup
     port map (
      CFGMCLK_RAW => CFGMCLK_RAW
    );
end STRUCTURE;
