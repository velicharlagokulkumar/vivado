-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:03:05 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_uram_play128k_0_0/design_1_uram_play128k_0_0_sim_netlist.vhdl
-- Design      : design_1_uram_play128k_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uram_play128k_0_0_uram_play128k is
  port (
    portA_en : out STD_LOGIC;
    axis_tvalid : out STD_LOGIC;
    portAcpu_addr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    axis_clk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    enable : in STD_LOGIC;
    portA_cpu_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_uram_play128k_0_0_uram_play128k : entity is "uram_play128k";
end design_1_uram_play128k_0_0_uram_play128k;

architecture STRUCTURE of design_1_uram_play128k_0_0_uram_play128k is
  signal \^portacpu_addr\ : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \portAcpu_addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \portAcpu_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_10\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_11\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_12\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_13\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_14\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_15\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \portAcpu_addr_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_10\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_11\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_12\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_13\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_14\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_15\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_8\ : STD_LOGIC;
  signal \portAcpu_addr_reg[20]_i_1_n_9\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_10\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_11\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_12\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_13\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_14\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_15\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_8\ : STD_LOGIC;
  signal \portAcpu_addr_reg[28]_i_1_n_9\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_13\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_14\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_15\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_6\ : STD_LOGIC;
  signal \portAcpu_addr_reg[31]_i_2_n_7\ : STD_LOGIC;
  signal reg_axis_tvalid : STD_LOGIC;
  signal \NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_portAcpu_addr_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of portA_en_reg : label is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of portA_en_reg : label is "no";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[10]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[11]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[12]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[13]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[14]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[15]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[16]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[17]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[18]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[19]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[20]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[21]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[22]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[23]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[24]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[25]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[26]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[27]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[28]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[29]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[30]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[31]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[5]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[6]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[7]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[8]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \portAcpu_addr_reg[9]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute equivalent_register_removal of reg_axis_tvalid_reg : label is "no";
begin
  portAcpu_addr(26 downto 0) <= \^portacpu_addr\(26 downto 0);
portA_en_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_aresetn,
      I1 => enable,
      O => reg_axis_tvalid
    );
portA_en_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => reg_axis_tvalid,
      Q => portA_en,
      R => '0'
    );
\portAcpu_addr[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^portacpu_addr\(0),
      O => \portAcpu_addr[12]_i_2_n_0\
    );
\portAcpu_addr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => enable,
      I1 => axis_aresetn,
      O => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_10\,
      Q => \^portacpu_addr\(5),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_9\,
      Q => \^portacpu_addr\(6),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_8\,
      Q => \^portacpu_addr\(7),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \portAcpu_addr_reg[12]_i_1_n_0\,
      CO(6) => \portAcpu_addr_reg[12]_i_1_n_1\,
      CO(5) => \portAcpu_addr_reg[12]_i_1_n_2\,
      CO(4) => \portAcpu_addr_reg[12]_i_1_n_3\,
      CO(3) => \portAcpu_addr_reg[12]_i_1_n_4\,
      CO(2) => \portAcpu_addr_reg[12]_i_1_n_5\,
      CO(1) => \portAcpu_addr_reg[12]_i_1_n_6\,
      CO(0) => \portAcpu_addr_reg[12]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \portAcpu_addr_reg[12]_i_1_n_8\,
      O(6) => \portAcpu_addr_reg[12]_i_1_n_9\,
      O(5) => \portAcpu_addr_reg[12]_i_1_n_10\,
      O(4) => \portAcpu_addr_reg[12]_i_1_n_11\,
      O(3) => \portAcpu_addr_reg[12]_i_1_n_12\,
      O(2) => \portAcpu_addr_reg[12]_i_1_n_13\,
      O(1) => \portAcpu_addr_reg[12]_i_1_n_14\,
      O(0) => \portAcpu_addr_reg[12]_i_1_n_15\,
      S(7 downto 1) => \^portacpu_addr\(7 downto 1),
      S(0) => \portAcpu_addr[12]_i_2_n_0\
    );
\portAcpu_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_15\,
      Q => \^portacpu_addr\(8),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_14\,
      Q => \^portacpu_addr\(9),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_13\,
      Q => \^portacpu_addr\(10),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_12\,
      Q => \^portacpu_addr\(11),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_11\,
      Q => \^portacpu_addr\(12),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_10\,
      Q => \^portacpu_addr\(13),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_9\,
      Q => \^portacpu_addr\(14),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[20]_i_1_n_8\,
      Q => \^portacpu_addr\(15),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[20]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \portAcpu_addr_reg[12]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \portAcpu_addr_reg[20]_i_1_n_0\,
      CO(6) => \portAcpu_addr_reg[20]_i_1_n_1\,
      CO(5) => \portAcpu_addr_reg[20]_i_1_n_2\,
      CO(4) => \portAcpu_addr_reg[20]_i_1_n_3\,
      CO(3) => \portAcpu_addr_reg[20]_i_1_n_4\,
      CO(2) => \portAcpu_addr_reg[20]_i_1_n_5\,
      CO(1) => \portAcpu_addr_reg[20]_i_1_n_6\,
      CO(0) => \portAcpu_addr_reg[20]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \portAcpu_addr_reg[20]_i_1_n_8\,
      O(6) => \portAcpu_addr_reg[20]_i_1_n_9\,
      O(5) => \portAcpu_addr_reg[20]_i_1_n_10\,
      O(4) => \portAcpu_addr_reg[20]_i_1_n_11\,
      O(3) => \portAcpu_addr_reg[20]_i_1_n_12\,
      O(2) => \portAcpu_addr_reg[20]_i_1_n_13\,
      O(1) => \portAcpu_addr_reg[20]_i_1_n_14\,
      O(0) => \portAcpu_addr_reg[20]_i_1_n_15\,
      S(7 downto 0) => \^portacpu_addr\(15 downto 8)
    );
\portAcpu_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_15\,
      Q => \^portacpu_addr\(16),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_14\,
      Q => \^portacpu_addr\(17),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_13\,
      Q => \^portacpu_addr\(18),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_12\,
      Q => \^portacpu_addr\(19),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_11\,
      Q => \^portacpu_addr\(20),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_10\,
      Q => \^portacpu_addr\(21),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_9\,
      Q => \^portacpu_addr\(22),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[28]_i_1_n_8\,
      Q => \^portacpu_addr\(23),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[28]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \portAcpu_addr_reg[20]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \portAcpu_addr_reg[28]_i_1_n_0\,
      CO(6) => \portAcpu_addr_reg[28]_i_1_n_1\,
      CO(5) => \portAcpu_addr_reg[28]_i_1_n_2\,
      CO(4) => \portAcpu_addr_reg[28]_i_1_n_3\,
      CO(3) => \portAcpu_addr_reg[28]_i_1_n_4\,
      CO(2) => \portAcpu_addr_reg[28]_i_1_n_5\,
      CO(1) => \portAcpu_addr_reg[28]_i_1_n_6\,
      CO(0) => \portAcpu_addr_reg[28]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \portAcpu_addr_reg[28]_i_1_n_8\,
      O(6) => \portAcpu_addr_reg[28]_i_1_n_9\,
      O(5) => \portAcpu_addr_reg[28]_i_1_n_10\,
      O(4) => \portAcpu_addr_reg[28]_i_1_n_11\,
      O(3) => \portAcpu_addr_reg[28]_i_1_n_12\,
      O(2) => \portAcpu_addr_reg[28]_i_1_n_13\,
      O(1) => \portAcpu_addr_reg[28]_i_1_n_14\,
      O(0) => \portAcpu_addr_reg[28]_i_1_n_15\,
      S(7 downto 0) => \^portacpu_addr\(23 downto 16)
    );
\portAcpu_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[31]_i_2_n_15\,
      Q => \^portacpu_addr\(24),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[31]_i_2_n_14\,
      Q => \^portacpu_addr\(25),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[31]_i_2_n_13\,
      Q => \^portacpu_addr\(26),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[31]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \portAcpu_addr_reg[28]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_portAcpu_addr_reg[31]_i_2_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \portAcpu_addr_reg[31]_i_2_n_6\,
      CO(0) => \portAcpu_addr_reg[31]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_portAcpu_addr_reg[31]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2) => \portAcpu_addr_reg[31]_i_2_n_13\,
      O(1) => \portAcpu_addr_reg[31]_i_2_n_14\,
      O(0) => \portAcpu_addr_reg[31]_i_2_n_15\,
      S(7 downto 3) => B"00000",
      S(2 downto 0) => \^portacpu_addr\(26 downto 24)
    );
\portAcpu_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_15\,
      Q => \^portacpu_addr\(0),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_14\,
      Q => \^portacpu_addr\(1),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_13\,
      Q => \^portacpu_addr\(2),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_12\,
      Q => \^portacpu_addr\(3),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\portAcpu_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \portAcpu_addr_reg[12]_i_1_n_11\,
      Q => \^portacpu_addr\(4),
      R => \portAcpu_addr[31]_i_1_n_0\
    );
\reg_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(0),
      Q => axis_tdata(0),
      R => '0'
    );
\reg_axis_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(100),
      Q => axis_tdata(100),
      R => '0'
    );
\reg_axis_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(101),
      Q => axis_tdata(101),
      R => '0'
    );
\reg_axis_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(102),
      Q => axis_tdata(102),
      R => '0'
    );
\reg_axis_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(103),
      Q => axis_tdata(103),
      R => '0'
    );
\reg_axis_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(104),
      Q => axis_tdata(104),
      R => '0'
    );
\reg_axis_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(105),
      Q => axis_tdata(105),
      R => '0'
    );
\reg_axis_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(106),
      Q => axis_tdata(106),
      R => '0'
    );
\reg_axis_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(107),
      Q => axis_tdata(107),
      R => '0'
    );
\reg_axis_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(108),
      Q => axis_tdata(108),
      R => '0'
    );
\reg_axis_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(109),
      Q => axis_tdata(109),
      R => '0'
    );
\reg_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(10),
      Q => axis_tdata(10),
      R => '0'
    );
\reg_axis_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(110),
      Q => axis_tdata(110),
      R => '0'
    );
\reg_axis_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(111),
      Q => axis_tdata(111),
      R => '0'
    );
\reg_axis_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(112),
      Q => axis_tdata(112),
      R => '0'
    );
\reg_axis_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(113),
      Q => axis_tdata(113),
      R => '0'
    );
\reg_axis_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(114),
      Q => axis_tdata(114),
      R => '0'
    );
\reg_axis_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(115),
      Q => axis_tdata(115),
      R => '0'
    );
\reg_axis_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(116),
      Q => axis_tdata(116),
      R => '0'
    );
\reg_axis_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(117),
      Q => axis_tdata(117),
      R => '0'
    );
\reg_axis_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(118),
      Q => axis_tdata(118),
      R => '0'
    );
\reg_axis_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(119),
      Q => axis_tdata(119),
      R => '0'
    );
\reg_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(11),
      Q => axis_tdata(11),
      R => '0'
    );
\reg_axis_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(120),
      Q => axis_tdata(120),
      R => '0'
    );
\reg_axis_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(121),
      Q => axis_tdata(121),
      R => '0'
    );
\reg_axis_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(122),
      Q => axis_tdata(122),
      R => '0'
    );
\reg_axis_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(123),
      Q => axis_tdata(123),
      R => '0'
    );
\reg_axis_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(124),
      Q => axis_tdata(124),
      R => '0'
    );
\reg_axis_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(125),
      Q => axis_tdata(125),
      R => '0'
    );
\reg_axis_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(126),
      Q => axis_tdata(126),
      R => '0'
    );
\reg_axis_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(127),
      Q => axis_tdata(127),
      R => '0'
    );
\reg_axis_tdata_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(128),
      Q => axis_tdata(128),
      R => '0'
    );
\reg_axis_tdata_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(129),
      Q => axis_tdata(129),
      R => '0'
    );
\reg_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(12),
      Q => axis_tdata(12),
      R => '0'
    );
\reg_axis_tdata_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(130),
      Q => axis_tdata(130),
      R => '0'
    );
\reg_axis_tdata_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(131),
      Q => axis_tdata(131),
      R => '0'
    );
\reg_axis_tdata_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(132),
      Q => axis_tdata(132),
      R => '0'
    );
\reg_axis_tdata_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(133),
      Q => axis_tdata(133),
      R => '0'
    );
\reg_axis_tdata_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(134),
      Q => axis_tdata(134),
      R => '0'
    );
\reg_axis_tdata_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(135),
      Q => axis_tdata(135),
      R => '0'
    );
\reg_axis_tdata_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(136),
      Q => axis_tdata(136),
      R => '0'
    );
\reg_axis_tdata_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(137),
      Q => axis_tdata(137),
      R => '0'
    );
\reg_axis_tdata_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(138),
      Q => axis_tdata(138),
      R => '0'
    );
\reg_axis_tdata_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(139),
      Q => axis_tdata(139),
      R => '0'
    );
\reg_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(13),
      Q => axis_tdata(13),
      R => '0'
    );
\reg_axis_tdata_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(140),
      Q => axis_tdata(140),
      R => '0'
    );
\reg_axis_tdata_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(141),
      Q => axis_tdata(141),
      R => '0'
    );
\reg_axis_tdata_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(142),
      Q => axis_tdata(142),
      R => '0'
    );
\reg_axis_tdata_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(143),
      Q => axis_tdata(143),
      R => '0'
    );
\reg_axis_tdata_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(144),
      Q => axis_tdata(144),
      R => '0'
    );
\reg_axis_tdata_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(145),
      Q => axis_tdata(145),
      R => '0'
    );
\reg_axis_tdata_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(146),
      Q => axis_tdata(146),
      R => '0'
    );
\reg_axis_tdata_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(147),
      Q => axis_tdata(147),
      R => '0'
    );
\reg_axis_tdata_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(148),
      Q => axis_tdata(148),
      R => '0'
    );
\reg_axis_tdata_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(149),
      Q => axis_tdata(149),
      R => '0'
    );
\reg_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(14),
      Q => axis_tdata(14),
      R => '0'
    );
\reg_axis_tdata_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(150),
      Q => axis_tdata(150),
      R => '0'
    );
\reg_axis_tdata_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(151),
      Q => axis_tdata(151),
      R => '0'
    );
\reg_axis_tdata_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(152),
      Q => axis_tdata(152),
      R => '0'
    );
\reg_axis_tdata_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(153),
      Q => axis_tdata(153),
      R => '0'
    );
\reg_axis_tdata_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(154),
      Q => axis_tdata(154),
      R => '0'
    );
\reg_axis_tdata_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(155),
      Q => axis_tdata(155),
      R => '0'
    );
\reg_axis_tdata_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(156),
      Q => axis_tdata(156),
      R => '0'
    );
\reg_axis_tdata_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(157),
      Q => axis_tdata(157),
      R => '0'
    );
\reg_axis_tdata_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(158),
      Q => axis_tdata(158),
      R => '0'
    );
\reg_axis_tdata_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(159),
      Q => axis_tdata(159),
      R => '0'
    );
\reg_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(15),
      Q => axis_tdata(15),
      R => '0'
    );
\reg_axis_tdata_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(160),
      Q => axis_tdata(160),
      R => '0'
    );
\reg_axis_tdata_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(161),
      Q => axis_tdata(161),
      R => '0'
    );
\reg_axis_tdata_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(162),
      Q => axis_tdata(162),
      R => '0'
    );
\reg_axis_tdata_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(163),
      Q => axis_tdata(163),
      R => '0'
    );
\reg_axis_tdata_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(164),
      Q => axis_tdata(164),
      R => '0'
    );
\reg_axis_tdata_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(165),
      Q => axis_tdata(165),
      R => '0'
    );
\reg_axis_tdata_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(166),
      Q => axis_tdata(166),
      R => '0'
    );
\reg_axis_tdata_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(167),
      Q => axis_tdata(167),
      R => '0'
    );
\reg_axis_tdata_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(168),
      Q => axis_tdata(168),
      R => '0'
    );
\reg_axis_tdata_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(169),
      Q => axis_tdata(169),
      R => '0'
    );
\reg_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(16),
      Q => axis_tdata(16),
      R => '0'
    );
\reg_axis_tdata_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(170),
      Q => axis_tdata(170),
      R => '0'
    );
\reg_axis_tdata_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(171),
      Q => axis_tdata(171),
      R => '0'
    );
\reg_axis_tdata_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(172),
      Q => axis_tdata(172),
      R => '0'
    );
\reg_axis_tdata_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(173),
      Q => axis_tdata(173),
      R => '0'
    );
\reg_axis_tdata_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(174),
      Q => axis_tdata(174),
      R => '0'
    );
\reg_axis_tdata_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(175),
      Q => axis_tdata(175),
      R => '0'
    );
\reg_axis_tdata_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(176),
      Q => axis_tdata(176),
      R => '0'
    );
\reg_axis_tdata_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(177),
      Q => axis_tdata(177),
      R => '0'
    );
\reg_axis_tdata_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(178),
      Q => axis_tdata(178),
      R => '0'
    );
\reg_axis_tdata_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(179),
      Q => axis_tdata(179),
      R => '0'
    );
\reg_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(17),
      Q => axis_tdata(17),
      R => '0'
    );
\reg_axis_tdata_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(180),
      Q => axis_tdata(180),
      R => '0'
    );
\reg_axis_tdata_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(181),
      Q => axis_tdata(181),
      R => '0'
    );
\reg_axis_tdata_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(182),
      Q => axis_tdata(182),
      R => '0'
    );
\reg_axis_tdata_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(183),
      Q => axis_tdata(183),
      R => '0'
    );
\reg_axis_tdata_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(184),
      Q => axis_tdata(184),
      R => '0'
    );
\reg_axis_tdata_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(185),
      Q => axis_tdata(185),
      R => '0'
    );
\reg_axis_tdata_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(186),
      Q => axis_tdata(186),
      R => '0'
    );
\reg_axis_tdata_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(187),
      Q => axis_tdata(187),
      R => '0'
    );
\reg_axis_tdata_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(188),
      Q => axis_tdata(188),
      R => '0'
    );
\reg_axis_tdata_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(189),
      Q => axis_tdata(189),
      R => '0'
    );
\reg_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(18),
      Q => axis_tdata(18),
      R => '0'
    );
\reg_axis_tdata_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(190),
      Q => axis_tdata(190),
      R => '0'
    );
\reg_axis_tdata_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(191),
      Q => axis_tdata(191),
      R => '0'
    );
\reg_axis_tdata_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(192),
      Q => axis_tdata(192),
      R => '0'
    );
\reg_axis_tdata_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(193),
      Q => axis_tdata(193),
      R => '0'
    );
\reg_axis_tdata_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(194),
      Q => axis_tdata(194),
      R => '0'
    );
\reg_axis_tdata_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(195),
      Q => axis_tdata(195),
      R => '0'
    );
\reg_axis_tdata_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(196),
      Q => axis_tdata(196),
      R => '0'
    );
\reg_axis_tdata_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(197),
      Q => axis_tdata(197),
      R => '0'
    );
\reg_axis_tdata_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(198),
      Q => axis_tdata(198),
      R => '0'
    );
\reg_axis_tdata_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(199),
      Q => axis_tdata(199),
      R => '0'
    );
\reg_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(19),
      Q => axis_tdata(19),
      R => '0'
    );
\reg_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(1),
      Q => axis_tdata(1),
      R => '0'
    );
\reg_axis_tdata_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(200),
      Q => axis_tdata(200),
      R => '0'
    );
\reg_axis_tdata_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(201),
      Q => axis_tdata(201),
      R => '0'
    );
\reg_axis_tdata_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(202),
      Q => axis_tdata(202),
      R => '0'
    );
\reg_axis_tdata_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(203),
      Q => axis_tdata(203),
      R => '0'
    );
\reg_axis_tdata_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(204),
      Q => axis_tdata(204),
      R => '0'
    );
\reg_axis_tdata_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(205),
      Q => axis_tdata(205),
      R => '0'
    );
\reg_axis_tdata_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(206),
      Q => axis_tdata(206),
      R => '0'
    );
\reg_axis_tdata_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(207),
      Q => axis_tdata(207),
      R => '0'
    );
\reg_axis_tdata_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(208),
      Q => axis_tdata(208),
      R => '0'
    );
\reg_axis_tdata_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(209),
      Q => axis_tdata(209),
      R => '0'
    );
\reg_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(20),
      Q => axis_tdata(20),
      R => '0'
    );
\reg_axis_tdata_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(210),
      Q => axis_tdata(210),
      R => '0'
    );
\reg_axis_tdata_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(211),
      Q => axis_tdata(211),
      R => '0'
    );
\reg_axis_tdata_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(212),
      Q => axis_tdata(212),
      R => '0'
    );
\reg_axis_tdata_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(213),
      Q => axis_tdata(213),
      R => '0'
    );
\reg_axis_tdata_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(214),
      Q => axis_tdata(214),
      R => '0'
    );
\reg_axis_tdata_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(215),
      Q => axis_tdata(215),
      R => '0'
    );
\reg_axis_tdata_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(216),
      Q => axis_tdata(216),
      R => '0'
    );
\reg_axis_tdata_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(217),
      Q => axis_tdata(217),
      R => '0'
    );
\reg_axis_tdata_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(218),
      Q => axis_tdata(218),
      R => '0'
    );
\reg_axis_tdata_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(219),
      Q => axis_tdata(219),
      R => '0'
    );
\reg_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(21),
      Q => axis_tdata(21),
      R => '0'
    );
\reg_axis_tdata_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(220),
      Q => axis_tdata(220),
      R => '0'
    );
\reg_axis_tdata_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(221),
      Q => axis_tdata(221),
      R => '0'
    );
\reg_axis_tdata_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(222),
      Q => axis_tdata(222),
      R => '0'
    );
\reg_axis_tdata_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(223),
      Q => axis_tdata(223),
      R => '0'
    );
\reg_axis_tdata_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(224),
      Q => axis_tdata(224),
      R => '0'
    );
\reg_axis_tdata_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(225),
      Q => axis_tdata(225),
      R => '0'
    );
\reg_axis_tdata_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(226),
      Q => axis_tdata(226),
      R => '0'
    );
\reg_axis_tdata_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(227),
      Q => axis_tdata(227),
      R => '0'
    );
\reg_axis_tdata_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(228),
      Q => axis_tdata(228),
      R => '0'
    );
\reg_axis_tdata_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(229),
      Q => axis_tdata(229),
      R => '0'
    );
\reg_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(22),
      Q => axis_tdata(22),
      R => '0'
    );
\reg_axis_tdata_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(230),
      Q => axis_tdata(230),
      R => '0'
    );
\reg_axis_tdata_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(231),
      Q => axis_tdata(231),
      R => '0'
    );
\reg_axis_tdata_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(232),
      Q => axis_tdata(232),
      R => '0'
    );
\reg_axis_tdata_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(233),
      Q => axis_tdata(233),
      R => '0'
    );
\reg_axis_tdata_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(234),
      Q => axis_tdata(234),
      R => '0'
    );
\reg_axis_tdata_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(235),
      Q => axis_tdata(235),
      R => '0'
    );
\reg_axis_tdata_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(236),
      Q => axis_tdata(236),
      R => '0'
    );
\reg_axis_tdata_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(237),
      Q => axis_tdata(237),
      R => '0'
    );
\reg_axis_tdata_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(238),
      Q => axis_tdata(238),
      R => '0'
    );
\reg_axis_tdata_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(239),
      Q => axis_tdata(239),
      R => '0'
    );
\reg_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(23),
      Q => axis_tdata(23),
      R => '0'
    );
\reg_axis_tdata_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(240),
      Q => axis_tdata(240),
      R => '0'
    );
\reg_axis_tdata_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(241),
      Q => axis_tdata(241),
      R => '0'
    );
\reg_axis_tdata_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(242),
      Q => axis_tdata(242),
      R => '0'
    );
\reg_axis_tdata_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(243),
      Q => axis_tdata(243),
      R => '0'
    );
\reg_axis_tdata_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(244),
      Q => axis_tdata(244),
      R => '0'
    );
\reg_axis_tdata_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(245),
      Q => axis_tdata(245),
      R => '0'
    );
\reg_axis_tdata_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(246),
      Q => axis_tdata(246),
      R => '0'
    );
\reg_axis_tdata_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(247),
      Q => axis_tdata(247),
      R => '0'
    );
\reg_axis_tdata_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(248),
      Q => axis_tdata(248),
      R => '0'
    );
\reg_axis_tdata_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(249),
      Q => axis_tdata(249),
      R => '0'
    );
\reg_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(24),
      Q => axis_tdata(24),
      R => '0'
    );
\reg_axis_tdata_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(250),
      Q => axis_tdata(250),
      R => '0'
    );
\reg_axis_tdata_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(251),
      Q => axis_tdata(251),
      R => '0'
    );
\reg_axis_tdata_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(252),
      Q => axis_tdata(252),
      R => '0'
    );
\reg_axis_tdata_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(253),
      Q => axis_tdata(253),
      R => '0'
    );
\reg_axis_tdata_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(254),
      Q => axis_tdata(254),
      R => '0'
    );
\reg_axis_tdata_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(255),
      Q => axis_tdata(255),
      R => '0'
    );
\reg_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(25),
      Q => axis_tdata(25),
      R => '0'
    );
\reg_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(26),
      Q => axis_tdata(26),
      R => '0'
    );
\reg_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(27),
      Q => axis_tdata(27),
      R => '0'
    );
\reg_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(28),
      Q => axis_tdata(28),
      R => '0'
    );
\reg_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(29),
      Q => axis_tdata(29),
      R => '0'
    );
\reg_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(2),
      Q => axis_tdata(2),
      R => '0'
    );
\reg_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(30),
      Q => axis_tdata(30),
      R => '0'
    );
\reg_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(31),
      Q => axis_tdata(31),
      R => '0'
    );
\reg_axis_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(32),
      Q => axis_tdata(32),
      R => '0'
    );
\reg_axis_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(33),
      Q => axis_tdata(33),
      R => '0'
    );
\reg_axis_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(34),
      Q => axis_tdata(34),
      R => '0'
    );
\reg_axis_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(35),
      Q => axis_tdata(35),
      R => '0'
    );
\reg_axis_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(36),
      Q => axis_tdata(36),
      R => '0'
    );
\reg_axis_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(37),
      Q => axis_tdata(37),
      R => '0'
    );
\reg_axis_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(38),
      Q => axis_tdata(38),
      R => '0'
    );
\reg_axis_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(39),
      Q => axis_tdata(39),
      R => '0'
    );
\reg_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(3),
      Q => axis_tdata(3),
      R => '0'
    );
\reg_axis_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(40),
      Q => axis_tdata(40),
      R => '0'
    );
\reg_axis_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(41),
      Q => axis_tdata(41),
      R => '0'
    );
\reg_axis_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(42),
      Q => axis_tdata(42),
      R => '0'
    );
\reg_axis_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(43),
      Q => axis_tdata(43),
      R => '0'
    );
\reg_axis_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(44),
      Q => axis_tdata(44),
      R => '0'
    );
\reg_axis_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(45),
      Q => axis_tdata(45),
      R => '0'
    );
\reg_axis_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(46),
      Q => axis_tdata(46),
      R => '0'
    );
\reg_axis_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(47),
      Q => axis_tdata(47),
      R => '0'
    );
\reg_axis_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(48),
      Q => axis_tdata(48),
      R => '0'
    );
\reg_axis_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(49),
      Q => axis_tdata(49),
      R => '0'
    );
\reg_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(4),
      Q => axis_tdata(4),
      R => '0'
    );
\reg_axis_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(50),
      Q => axis_tdata(50),
      R => '0'
    );
\reg_axis_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(51),
      Q => axis_tdata(51),
      R => '0'
    );
\reg_axis_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(52),
      Q => axis_tdata(52),
      R => '0'
    );
\reg_axis_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(53),
      Q => axis_tdata(53),
      R => '0'
    );
\reg_axis_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(54),
      Q => axis_tdata(54),
      R => '0'
    );
\reg_axis_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(55),
      Q => axis_tdata(55),
      R => '0'
    );
\reg_axis_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(56),
      Q => axis_tdata(56),
      R => '0'
    );
\reg_axis_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(57),
      Q => axis_tdata(57),
      R => '0'
    );
\reg_axis_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(58),
      Q => axis_tdata(58),
      R => '0'
    );
\reg_axis_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(59),
      Q => axis_tdata(59),
      R => '0'
    );
\reg_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(5),
      Q => axis_tdata(5),
      R => '0'
    );
\reg_axis_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(60),
      Q => axis_tdata(60),
      R => '0'
    );
\reg_axis_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(61),
      Q => axis_tdata(61),
      R => '0'
    );
\reg_axis_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(62),
      Q => axis_tdata(62),
      R => '0'
    );
\reg_axis_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(63),
      Q => axis_tdata(63),
      R => '0'
    );
\reg_axis_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(64),
      Q => axis_tdata(64),
      R => '0'
    );
\reg_axis_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(65),
      Q => axis_tdata(65),
      R => '0'
    );
\reg_axis_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(66),
      Q => axis_tdata(66),
      R => '0'
    );
\reg_axis_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(67),
      Q => axis_tdata(67),
      R => '0'
    );
\reg_axis_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(68),
      Q => axis_tdata(68),
      R => '0'
    );
\reg_axis_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(69),
      Q => axis_tdata(69),
      R => '0'
    );
\reg_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(6),
      Q => axis_tdata(6),
      R => '0'
    );
\reg_axis_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(70),
      Q => axis_tdata(70),
      R => '0'
    );
\reg_axis_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(71),
      Q => axis_tdata(71),
      R => '0'
    );
\reg_axis_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(72),
      Q => axis_tdata(72),
      R => '0'
    );
\reg_axis_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(73),
      Q => axis_tdata(73),
      R => '0'
    );
\reg_axis_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(74),
      Q => axis_tdata(74),
      R => '0'
    );
\reg_axis_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(75),
      Q => axis_tdata(75),
      R => '0'
    );
\reg_axis_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(76),
      Q => axis_tdata(76),
      R => '0'
    );
\reg_axis_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(77),
      Q => axis_tdata(77),
      R => '0'
    );
\reg_axis_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(78),
      Q => axis_tdata(78),
      R => '0'
    );
\reg_axis_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(79),
      Q => axis_tdata(79),
      R => '0'
    );
\reg_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(7),
      Q => axis_tdata(7),
      R => '0'
    );
\reg_axis_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(80),
      Q => axis_tdata(80),
      R => '0'
    );
\reg_axis_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(81),
      Q => axis_tdata(81),
      R => '0'
    );
\reg_axis_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(82),
      Q => axis_tdata(82),
      R => '0'
    );
\reg_axis_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(83),
      Q => axis_tdata(83),
      R => '0'
    );
\reg_axis_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(84),
      Q => axis_tdata(84),
      R => '0'
    );
\reg_axis_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(85),
      Q => axis_tdata(85),
      R => '0'
    );
\reg_axis_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(86),
      Q => axis_tdata(86),
      R => '0'
    );
\reg_axis_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(87),
      Q => axis_tdata(87),
      R => '0'
    );
\reg_axis_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(88),
      Q => axis_tdata(88),
      R => '0'
    );
\reg_axis_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(89),
      Q => axis_tdata(89),
      R => '0'
    );
\reg_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(8),
      Q => axis_tdata(8),
      R => '0'
    );
\reg_axis_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(90),
      Q => axis_tdata(90),
      R => '0'
    );
\reg_axis_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(91),
      Q => axis_tdata(91),
      R => '0'
    );
\reg_axis_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(92),
      Q => axis_tdata(92),
      R => '0'
    );
\reg_axis_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(93),
      Q => axis_tdata(93),
      R => '0'
    );
\reg_axis_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(94),
      Q => axis_tdata(94),
      R => '0'
    );
\reg_axis_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(95),
      Q => axis_tdata(95),
      R => '0'
    );
\reg_axis_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(96),
      Q => axis_tdata(96),
      R => '0'
    );
\reg_axis_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(97),
      Q => axis_tdata(97),
      R => '0'
    );
\reg_axis_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(98),
      Q => axis_tdata(98),
      R => '0'
    );
\reg_axis_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(99),
      Q => axis_tdata(99),
      R => '0'
    );
\reg_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => portA_cpu_rdata(9),
      Q => axis_tdata(9),
      R => '0'
    );
reg_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => reg_axis_tvalid,
      Q => axis_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_uram_play128k_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_uram_play128k_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_uram_play128k_0_0 : entity is "design_1_uram_play128k_0_0,uram_play128k,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_uram_play128k_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_uram_play128k_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_uram_play128k_0_0 : entity is "uram_play128k,Vivado 2019.2";
end design_1_uram_play128k_0_0;

architecture STRUCTURE of design_1_uram_play128k_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^axis_clk\ : STD_LOGIC;
  signal \^portacpu_addr\ : STD_LOGIC_VECTOR ( 31 downto 5 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_clk : signal is "xilinx.com:signal:clock:1.0 axis_clk CLK";
  attribute X_INTERFACE_PARAMETER of axis_clk : signal is "XIL_INTERFACENAME axis_clk, ASSOCIATED_BUSIF AXIS, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_tready : signal is "xilinx.com:interface:axis:1.0 axis TREADY";
  attribute X_INTERFACE_INFO of axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axis TVALID";
  attribute X_INTERFACE_PARAMETER of axis_tvalid : signal is "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of portA_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  attribute X_INTERFACE_INFO of portA_en : signal is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  attribute X_INTERFACE_INFO of portA_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_A RST";
  attribute X_INTERFACE_PARAMETER of portA_rst : signal is "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of axis_tdata : signal is "xilinx.com:interface:axis:1.0 axis TDATA";
  attribute X_INTERFACE_INFO of portA_cpu_rdata : signal is "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  attribute X_INTERFACE_INFO of portA_cpu_wdata : signal is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_INFO of portA_we : signal is "xilinx.com:interface:bram:1.0 BRAM_A WE";
  attribute X_INTERFACE_INFO of portAcpu_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
begin
  \^axis_clk\ <= axis_clk;
  portA_clk <= \^axis_clk\;
  portA_cpu_wdata(255) <= \<const0>\;
  portA_cpu_wdata(254) <= \<const0>\;
  portA_cpu_wdata(253) <= \<const0>\;
  portA_cpu_wdata(252) <= \<const0>\;
  portA_cpu_wdata(251) <= \<const0>\;
  portA_cpu_wdata(250) <= \<const0>\;
  portA_cpu_wdata(249) <= \<const0>\;
  portA_cpu_wdata(248) <= \<const0>\;
  portA_cpu_wdata(247) <= \<const0>\;
  portA_cpu_wdata(246) <= \<const0>\;
  portA_cpu_wdata(245) <= \<const0>\;
  portA_cpu_wdata(244) <= \<const0>\;
  portA_cpu_wdata(243) <= \<const0>\;
  portA_cpu_wdata(242) <= \<const0>\;
  portA_cpu_wdata(241) <= \<const0>\;
  portA_cpu_wdata(240) <= \<const0>\;
  portA_cpu_wdata(239) <= \<const0>\;
  portA_cpu_wdata(238) <= \<const0>\;
  portA_cpu_wdata(237) <= \<const0>\;
  portA_cpu_wdata(236) <= \<const0>\;
  portA_cpu_wdata(235) <= \<const0>\;
  portA_cpu_wdata(234) <= \<const0>\;
  portA_cpu_wdata(233) <= \<const0>\;
  portA_cpu_wdata(232) <= \<const0>\;
  portA_cpu_wdata(231) <= \<const0>\;
  portA_cpu_wdata(230) <= \<const0>\;
  portA_cpu_wdata(229) <= \<const0>\;
  portA_cpu_wdata(228) <= \<const0>\;
  portA_cpu_wdata(227) <= \<const0>\;
  portA_cpu_wdata(226) <= \<const0>\;
  portA_cpu_wdata(225) <= \<const0>\;
  portA_cpu_wdata(224) <= \<const0>\;
  portA_cpu_wdata(223) <= \<const0>\;
  portA_cpu_wdata(222) <= \<const0>\;
  portA_cpu_wdata(221) <= \<const0>\;
  portA_cpu_wdata(220) <= \<const0>\;
  portA_cpu_wdata(219) <= \<const0>\;
  portA_cpu_wdata(218) <= \<const0>\;
  portA_cpu_wdata(217) <= \<const0>\;
  portA_cpu_wdata(216) <= \<const0>\;
  portA_cpu_wdata(215) <= \<const0>\;
  portA_cpu_wdata(214) <= \<const0>\;
  portA_cpu_wdata(213) <= \<const0>\;
  portA_cpu_wdata(212) <= \<const0>\;
  portA_cpu_wdata(211) <= \<const0>\;
  portA_cpu_wdata(210) <= \<const0>\;
  portA_cpu_wdata(209) <= \<const0>\;
  portA_cpu_wdata(208) <= \<const0>\;
  portA_cpu_wdata(207) <= \<const0>\;
  portA_cpu_wdata(206) <= \<const0>\;
  portA_cpu_wdata(205) <= \<const0>\;
  portA_cpu_wdata(204) <= \<const0>\;
  portA_cpu_wdata(203) <= \<const0>\;
  portA_cpu_wdata(202) <= \<const0>\;
  portA_cpu_wdata(201) <= \<const0>\;
  portA_cpu_wdata(200) <= \<const0>\;
  portA_cpu_wdata(199) <= \<const0>\;
  portA_cpu_wdata(198) <= \<const0>\;
  portA_cpu_wdata(197) <= \<const0>\;
  portA_cpu_wdata(196) <= \<const0>\;
  portA_cpu_wdata(195) <= \<const0>\;
  portA_cpu_wdata(194) <= \<const0>\;
  portA_cpu_wdata(193) <= \<const0>\;
  portA_cpu_wdata(192) <= \<const0>\;
  portA_cpu_wdata(191) <= \<const0>\;
  portA_cpu_wdata(190) <= \<const0>\;
  portA_cpu_wdata(189) <= \<const0>\;
  portA_cpu_wdata(188) <= \<const0>\;
  portA_cpu_wdata(187) <= \<const0>\;
  portA_cpu_wdata(186) <= \<const0>\;
  portA_cpu_wdata(185) <= \<const0>\;
  portA_cpu_wdata(184) <= \<const0>\;
  portA_cpu_wdata(183) <= \<const0>\;
  portA_cpu_wdata(182) <= \<const0>\;
  portA_cpu_wdata(181) <= \<const0>\;
  portA_cpu_wdata(180) <= \<const0>\;
  portA_cpu_wdata(179) <= \<const0>\;
  portA_cpu_wdata(178) <= \<const0>\;
  portA_cpu_wdata(177) <= \<const0>\;
  portA_cpu_wdata(176) <= \<const0>\;
  portA_cpu_wdata(175) <= \<const0>\;
  portA_cpu_wdata(174) <= \<const0>\;
  portA_cpu_wdata(173) <= \<const0>\;
  portA_cpu_wdata(172) <= \<const0>\;
  portA_cpu_wdata(171) <= \<const0>\;
  portA_cpu_wdata(170) <= \<const0>\;
  portA_cpu_wdata(169) <= \<const0>\;
  portA_cpu_wdata(168) <= \<const0>\;
  portA_cpu_wdata(167) <= \<const0>\;
  portA_cpu_wdata(166) <= \<const0>\;
  portA_cpu_wdata(165) <= \<const0>\;
  portA_cpu_wdata(164) <= \<const0>\;
  portA_cpu_wdata(163) <= \<const0>\;
  portA_cpu_wdata(162) <= \<const0>\;
  portA_cpu_wdata(161) <= \<const0>\;
  portA_cpu_wdata(160) <= \<const0>\;
  portA_cpu_wdata(159) <= \<const0>\;
  portA_cpu_wdata(158) <= \<const0>\;
  portA_cpu_wdata(157) <= \<const0>\;
  portA_cpu_wdata(156) <= \<const0>\;
  portA_cpu_wdata(155) <= \<const0>\;
  portA_cpu_wdata(154) <= \<const0>\;
  portA_cpu_wdata(153) <= \<const0>\;
  portA_cpu_wdata(152) <= \<const0>\;
  portA_cpu_wdata(151) <= \<const0>\;
  portA_cpu_wdata(150) <= \<const0>\;
  portA_cpu_wdata(149) <= \<const0>\;
  portA_cpu_wdata(148) <= \<const0>\;
  portA_cpu_wdata(147) <= \<const0>\;
  portA_cpu_wdata(146) <= \<const0>\;
  portA_cpu_wdata(145) <= \<const0>\;
  portA_cpu_wdata(144) <= \<const0>\;
  portA_cpu_wdata(143) <= \<const0>\;
  portA_cpu_wdata(142) <= \<const0>\;
  portA_cpu_wdata(141) <= \<const0>\;
  portA_cpu_wdata(140) <= \<const0>\;
  portA_cpu_wdata(139) <= \<const0>\;
  portA_cpu_wdata(138) <= \<const0>\;
  portA_cpu_wdata(137) <= \<const0>\;
  portA_cpu_wdata(136) <= \<const0>\;
  portA_cpu_wdata(135) <= \<const0>\;
  portA_cpu_wdata(134) <= \<const0>\;
  portA_cpu_wdata(133) <= \<const0>\;
  portA_cpu_wdata(132) <= \<const0>\;
  portA_cpu_wdata(131) <= \<const0>\;
  portA_cpu_wdata(130) <= \<const0>\;
  portA_cpu_wdata(129) <= \<const0>\;
  portA_cpu_wdata(128) <= \<const0>\;
  portA_cpu_wdata(127) <= \<const0>\;
  portA_cpu_wdata(126) <= \<const0>\;
  portA_cpu_wdata(125) <= \<const0>\;
  portA_cpu_wdata(124) <= \<const0>\;
  portA_cpu_wdata(123) <= \<const0>\;
  portA_cpu_wdata(122) <= \<const0>\;
  portA_cpu_wdata(121) <= \<const0>\;
  portA_cpu_wdata(120) <= \<const0>\;
  portA_cpu_wdata(119) <= \<const0>\;
  portA_cpu_wdata(118) <= \<const0>\;
  portA_cpu_wdata(117) <= \<const0>\;
  portA_cpu_wdata(116) <= \<const0>\;
  portA_cpu_wdata(115) <= \<const0>\;
  portA_cpu_wdata(114) <= \<const0>\;
  portA_cpu_wdata(113) <= \<const0>\;
  portA_cpu_wdata(112) <= \<const0>\;
  portA_cpu_wdata(111) <= \<const0>\;
  portA_cpu_wdata(110) <= \<const0>\;
  portA_cpu_wdata(109) <= \<const0>\;
  portA_cpu_wdata(108) <= \<const0>\;
  portA_cpu_wdata(107) <= \<const0>\;
  portA_cpu_wdata(106) <= \<const0>\;
  portA_cpu_wdata(105) <= \<const0>\;
  portA_cpu_wdata(104) <= \<const0>\;
  portA_cpu_wdata(103) <= \<const0>\;
  portA_cpu_wdata(102) <= \<const0>\;
  portA_cpu_wdata(101) <= \<const0>\;
  portA_cpu_wdata(100) <= \<const0>\;
  portA_cpu_wdata(99) <= \<const0>\;
  portA_cpu_wdata(98) <= \<const0>\;
  portA_cpu_wdata(97) <= \<const0>\;
  portA_cpu_wdata(96) <= \<const0>\;
  portA_cpu_wdata(95) <= \<const0>\;
  portA_cpu_wdata(94) <= \<const0>\;
  portA_cpu_wdata(93) <= \<const0>\;
  portA_cpu_wdata(92) <= \<const0>\;
  portA_cpu_wdata(91) <= \<const0>\;
  portA_cpu_wdata(90) <= \<const0>\;
  portA_cpu_wdata(89) <= \<const0>\;
  portA_cpu_wdata(88) <= \<const0>\;
  portA_cpu_wdata(87) <= \<const0>\;
  portA_cpu_wdata(86) <= \<const0>\;
  portA_cpu_wdata(85) <= \<const0>\;
  portA_cpu_wdata(84) <= \<const0>\;
  portA_cpu_wdata(83) <= \<const0>\;
  portA_cpu_wdata(82) <= \<const0>\;
  portA_cpu_wdata(81) <= \<const0>\;
  portA_cpu_wdata(80) <= \<const0>\;
  portA_cpu_wdata(79) <= \<const0>\;
  portA_cpu_wdata(78) <= \<const0>\;
  portA_cpu_wdata(77) <= \<const0>\;
  portA_cpu_wdata(76) <= \<const0>\;
  portA_cpu_wdata(75) <= \<const0>\;
  portA_cpu_wdata(74) <= \<const0>\;
  portA_cpu_wdata(73) <= \<const0>\;
  portA_cpu_wdata(72) <= \<const0>\;
  portA_cpu_wdata(71) <= \<const0>\;
  portA_cpu_wdata(70) <= \<const0>\;
  portA_cpu_wdata(69) <= \<const0>\;
  portA_cpu_wdata(68) <= \<const0>\;
  portA_cpu_wdata(67) <= \<const0>\;
  portA_cpu_wdata(66) <= \<const0>\;
  portA_cpu_wdata(65) <= \<const0>\;
  portA_cpu_wdata(64) <= \<const0>\;
  portA_cpu_wdata(63) <= \<const0>\;
  portA_cpu_wdata(62) <= \<const0>\;
  portA_cpu_wdata(61) <= \<const0>\;
  portA_cpu_wdata(60) <= \<const0>\;
  portA_cpu_wdata(59) <= \<const0>\;
  portA_cpu_wdata(58) <= \<const0>\;
  portA_cpu_wdata(57) <= \<const0>\;
  portA_cpu_wdata(56) <= \<const0>\;
  portA_cpu_wdata(55) <= \<const0>\;
  portA_cpu_wdata(54) <= \<const0>\;
  portA_cpu_wdata(53) <= \<const0>\;
  portA_cpu_wdata(52) <= \<const0>\;
  portA_cpu_wdata(51) <= \<const0>\;
  portA_cpu_wdata(50) <= \<const0>\;
  portA_cpu_wdata(49) <= \<const0>\;
  portA_cpu_wdata(48) <= \<const0>\;
  portA_cpu_wdata(47) <= \<const0>\;
  portA_cpu_wdata(46) <= \<const0>\;
  portA_cpu_wdata(45) <= \<const0>\;
  portA_cpu_wdata(44) <= \<const0>\;
  portA_cpu_wdata(43) <= \<const0>\;
  portA_cpu_wdata(42) <= \<const0>\;
  portA_cpu_wdata(41) <= \<const0>\;
  portA_cpu_wdata(40) <= \<const0>\;
  portA_cpu_wdata(39) <= \<const0>\;
  portA_cpu_wdata(38) <= \<const0>\;
  portA_cpu_wdata(37) <= \<const0>\;
  portA_cpu_wdata(36) <= \<const0>\;
  portA_cpu_wdata(35) <= \<const0>\;
  portA_cpu_wdata(34) <= \<const0>\;
  portA_cpu_wdata(33) <= \<const0>\;
  portA_cpu_wdata(32) <= \<const0>\;
  portA_cpu_wdata(31) <= \<const0>\;
  portA_cpu_wdata(30) <= \<const0>\;
  portA_cpu_wdata(29) <= \<const0>\;
  portA_cpu_wdata(28) <= \<const0>\;
  portA_cpu_wdata(27) <= \<const0>\;
  portA_cpu_wdata(26) <= \<const0>\;
  portA_cpu_wdata(25) <= \<const0>\;
  portA_cpu_wdata(24) <= \<const0>\;
  portA_cpu_wdata(23) <= \<const0>\;
  portA_cpu_wdata(22) <= \<const0>\;
  portA_cpu_wdata(21) <= \<const0>\;
  portA_cpu_wdata(20) <= \<const0>\;
  portA_cpu_wdata(19) <= \<const0>\;
  portA_cpu_wdata(18) <= \<const0>\;
  portA_cpu_wdata(17) <= \<const0>\;
  portA_cpu_wdata(16) <= \<const0>\;
  portA_cpu_wdata(15) <= \<const0>\;
  portA_cpu_wdata(14) <= \<const0>\;
  portA_cpu_wdata(13) <= \<const0>\;
  portA_cpu_wdata(12) <= \<const0>\;
  portA_cpu_wdata(11) <= \<const0>\;
  portA_cpu_wdata(10) <= \<const0>\;
  portA_cpu_wdata(9) <= \<const0>\;
  portA_cpu_wdata(8) <= \<const0>\;
  portA_cpu_wdata(7) <= \<const0>\;
  portA_cpu_wdata(6) <= \<const0>\;
  portA_cpu_wdata(5) <= \<const0>\;
  portA_cpu_wdata(4) <= \<const0>\;
  portA_cpu_wdata(3) <= \<const0>\;
  portA_cpu_wdata(2) <= \<const0>\;
  portA_cpu_wdata(1) <= \<const0>\;
  portA_cpu_wdata(0) <= \<const0>\;
  portA_we(31) <= \<const0>\;
  portA_we(30) <= \<const0>\;
  portA_we(29) <= \<const0>\;
  portA_we(28) <= \<const0>\;
  portA_we(27) <= \<const0>\;
  portA_we(26) <= \<const0>\;
  portA_we(25) <= \<const0>\;
  portA_we(24) <= \<const0>\;
  portA_we(23) <= \<const0>\;
  portA_we(22) <= \<const0>\;
  portA_we(21) <= \<const0>\;
  portA_we(20) <= \<const0>\;
  portA_we(19) <= \<const0>\;
  portA_we(18) <= \<const0>\;
  portA_we(17) <= \<const0>\;
  portA_we(16) <= \<const0>\;
  portA_we(15) <= \<const0>\;
  portA_we(14) <= \<const0>\;
  portA_we(13) <= \<const0>\;
  portA_we(12) <= \<const0>\;
  portA_we(11) <= \<const0>\;
  portA_we(10) <= \<const0>\;
  portA_we(9) <= \<const0>\;
  portA_we(8) <= \<const0>\;
  portA_we(7) <= \<const0>\;
  portA_we(6) <= \<const0>\;
  portA_we(5) <= \<const0>\;
  portA_we(4) <= \<const0>\;
  portA_we(3) <= \<const0>\;
  portA_we(2) <= \<const0>\;
  portA_we(1) <= \<const0>\;
  portA_we(0) <= \<const0>\;
  portAcpu_addr(31 downto 5) <= \^portacpu_addr\(31 downto 5);
  portAcpu_addr(4) <= \<const0>\;
  portAcpu_addr(3) <= \<const0>\;
  portAcpu_addr(2) <= \<const0>\;
  portAcpu_addr(1) <= \<const0>\;
  portAcpu_addr(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_uram_play128k_0_0_uram_play128k
     port map (
      axis_aresetn => axis_aresetn,
      axis_clk => \^axis_clk\,
      axis_tdata(255 downto 0) => axis_tdata(255 downto 0),
      axis_tvalid => axis_tvalid,
      enable => enable,
      portA_cpu_rdata(255 downto 0) => portA_cpu_rdata(255 downto 0),
      portA_en => portA_en,
      portAcpu_addr(26 downto 0) => \^portacpu_addr\(31 downto 5)
    );
portA_rst_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => portA_rst
    );
end STRUCTURE;
