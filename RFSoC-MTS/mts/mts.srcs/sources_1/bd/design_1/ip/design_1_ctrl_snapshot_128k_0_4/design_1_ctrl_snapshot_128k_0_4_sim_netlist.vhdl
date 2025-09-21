-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Sun Sep 21 13:04:29 2025
-- Host        : ibm-server.iith.ac.in running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/wisig/Videos/MTS/RFSoC-MTS/mts/mts.srcs/sources_1/bd/design_1/ip/design_1_ctrl_snapshot_128k_0_4/design_1_ctrl_snapshot_128k_0_4_sim_netlist.vhdl
-- Design      : design_1_ctrl_snapshot_128k_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ctrl_snapshot_128k_0_4_ctrl_snapshot_128k is
  port (
    trig_cap_p_2to1_mon : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bram_wdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_en_reg_0 : out STD_LOGIC;
    bram_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    PASSTHROUGH_AXIS_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    PASSTHROUGH_AXIS_tvalid : out STD_LOGIC;
    bram_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    axis_aresetn : in STD_LOGIC;
    CAP_AXIS_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    axis_clk : in STD_LOGIC;
    trig_cap : in STD_LOGIC;
    CAP_AXIS_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ctrl_snapshot_128k_0_4_ctrl_snapshot_128k : entity is "ctrl_snapshot_128k";
end design_1_ctrl_snapshot_128k_0_4_ctrl_snapshot_128k;

architecture STRUCTURE of design_1_ctrl_snapshot_128k_0_4_ctrl_snapshot_128k is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \bram_addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr[16]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[16]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[12]_i_1_n_9\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[16]_i_3_n_7\ : STD_LOGIC;
  signal bram_en_i_1_n_0 : STD_LOGIC;
  signal \^bram_en_reg_0\ : STD_LOGIC;
  signal \^bram_we\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bram_we[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_we[31]_i_2_n_0\ : STD_LOGIC;
  signal \bram_we[31]_i_3_n_0\ : STD_LOGIC;
  signal \bram_we[31]_i_4_n_0\ : STD_LOGIC;
  signal \bram_we[31]_i_5_n_0\ : STD_LOGIC;
  signal trig_cap_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute async_reg : string;
  attribute async_reg of trig_cap_p : signal is "true";
  signal \NLW_bram_addr_reg[16]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_bram_addr_reg[16]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[100]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[101]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[102]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[103]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[104]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[105]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[106]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[107]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[108]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[109]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[10]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[110]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[111]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[112]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[113]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[114]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[115]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[116]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[117]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[118]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[119]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[11]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[120]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[121]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[122]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[123]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[124]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[125]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[126]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[127]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[128]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[129]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[12]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[130]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[131]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[132]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[133]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[134]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[135]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[136]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[137]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[138]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[139]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[13]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[140]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[141]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[142]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[143]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[144]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[145]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[146]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[147]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[148]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[149]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[14]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[150]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[151]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[152]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[153]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[154]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[155]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[156]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[157]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[158]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[159]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[15]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[160]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[161]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[162]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[163]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[164]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[165]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[166]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[167]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[168]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[169]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[16]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[170]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[171]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[172]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[173]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[174]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[175]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[176]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[177]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[178]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[179]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[17]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[180]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[181]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[182]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[183]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[184]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[185]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[186]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[187]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[188]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[189]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[18]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[190]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[191]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[192]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[193]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[194]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[195]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[196]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[197]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[198]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[199]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[19]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[200]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[201]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[202]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[203]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[204]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[205]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[206]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[207]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[208]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[209]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[20]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[210]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[211]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[212]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[213]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[214]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[215]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[216]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[217]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[218]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[219]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[21]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[220]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[221]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[222]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[223]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[224]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[225]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[226]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[227]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[228]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[229]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[22]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[230]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[231]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[232]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[233]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[234]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[235]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[236]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[237]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[238]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[239]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[23]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[240]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[241]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[242]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[243]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[244]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[245]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[246]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[247]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[248]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[249]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[24]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[250]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[251]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[252]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[253]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[254]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[255]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[25]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[26]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[27]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[28]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[29]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[2]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[30]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[31]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[32]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[33]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[34]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[35]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[36]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[37]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[38]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[39]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[3]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[40]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[41]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[42]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[43]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[44]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[45]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[46]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[47]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[48]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[49]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[4]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[50]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[51]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[52]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[53]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[54]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[55]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[56]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[57]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[58]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[59]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[5]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[60]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[61]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[62]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[63]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[64]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[65]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[66]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[67]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[68]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[69]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[6]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[70]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[71]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[72]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[73]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[74]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[75]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[76]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[77]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[78]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[79]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[7]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[80]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[81]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[82]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[83]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[84]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[85]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[86]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[87]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[88]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[89]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[8]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[90]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[91]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[92]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[93]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[94]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[95]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[96]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[97]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[98]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[99]\ : label is "no";
  attribute equivalent_register_removal of \PASSTHROUGH_AXIS_tdata_reg[9]\ : label is "no";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \bram_addr_reg[10]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[11]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[12]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[13]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[14]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[15]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[16]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[5]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[6]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[7]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[8]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of \bram_addr_reg[9]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of bram_en_reg : label is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[0]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[0]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[0]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[100]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[100]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[100]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[101]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[101]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[101]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[102]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[102]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[102]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[103]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[103]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[103]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[104]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[104]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[104]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[105]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[105]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[105]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[106]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[106]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[106]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[107]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[107]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[107]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[108]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[108]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[108]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[109]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[109]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[109]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[10]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[10]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[10]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[110]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[110]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[110]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[111]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[111]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[111]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[112]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[112]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[112]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[113]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[113]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[113]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[114]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[114]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[114]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[115]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[115]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[115]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[116]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[116]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[116]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[117]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[117]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[117]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[118]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[118]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[118]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[119]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[119]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[119]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[11]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[11]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[11]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[120]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[120]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[120]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[121]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[121]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[121]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[122]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[122]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[122]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[123]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[123]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[123]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[124]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[124]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[124]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[125]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[125]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[125]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[126]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[126]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[126]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[127]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[127]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[127]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[128]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[128]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[128]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[129]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[129]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[129]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[12]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[12]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[12]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[130]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[130]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[130]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[131]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[131]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[131]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[132]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[132]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[132]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[133]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[133]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[133]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[134]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[134]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[134]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[135]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[135]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[135]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[136]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[136]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[136]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[137]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[137]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[137]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[138]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[138]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[138]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[139]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[139]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[139]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[13]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[13]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[13]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[140]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[140]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[140]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[141]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[141]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[141]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[142]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[142]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[142]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[143]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[143]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[143]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[144]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[144]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[144]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[145]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[145]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[145]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[146]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[146]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[146]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[147]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[147]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[147]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[148]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[148]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[148]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[149]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[149]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[149]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[14]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[14]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[14]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[150]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[150]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[150]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[151]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[151]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[151]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[152]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[152]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[152]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[153]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[153]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[153]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[154]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[154]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[154]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[155]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[155]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[155]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[156]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[156]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[156]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[157]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[157]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[157]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[158]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[158]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[158]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[159]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[159]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[159]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[15]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[15]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[15]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[160]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[160]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[160]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[161]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[161]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[161]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[162]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[162]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[162]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[163]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[163]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[163]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[164]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[164]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[164]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[165]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[165]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[165]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[166]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[166]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[166]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[167]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[167]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[167]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[168]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[168]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[168]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[169]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[169]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[169]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[16]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[16]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[16]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[170]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[170]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[170]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[171]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[171]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[171]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[172]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[172]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[172]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[173]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[173]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[173]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[174]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[174]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[174]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[175]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[175]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[175]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[176]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[176]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[176]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[177]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[177]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[177]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[178]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[178]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[178]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[179]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[179]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[179]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[17]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[17]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[17]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[180]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[180]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[180]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[181]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[181]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[181]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[182]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[182]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[182]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[183]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[183]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[183]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[184]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[184]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[184]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[185]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[185]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[185]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[186]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[186]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[186]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[187]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[187]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[187]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[188]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[188]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[188]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[189]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[189]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[189]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[18]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[18]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[18]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[190]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[190]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[190]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[191]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[191]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[191]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[192]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[192]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[192]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[193]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[193]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[193]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[194]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[194]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[194]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[195]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[195]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[195]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[196]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[196]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[196]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[197]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[197]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[197]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[198]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[198]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[198]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[199]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[199]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[199]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[19]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[19]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[19]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[1]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[1]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[1]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[200]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[200]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[200]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[201]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[201]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[201]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[202]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[202]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[202]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[203]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[203]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[203]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[204]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[204]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[204]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[205]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[205]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[205]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[206]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[206]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[206]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[207]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[207]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[207]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[208]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[208]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[208]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[209]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[209]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[209]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[20]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[20]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[20]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[210]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[210]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[210]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[211]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[211]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[211]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[212]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[212]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[212]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[213]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[213]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[213]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[214]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[214]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[214]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[215]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[215]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[215]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[216]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[216]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[216]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[217]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[217]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[217]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[218]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[218]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[218]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[219]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[219]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[219]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[21]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[21]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[21]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[220]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[220]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[220]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[221]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[221]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[221]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[222]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[222]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[222]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[223]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[223]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[223]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[224]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[224]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[224]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[225]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[225]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[225]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[226]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[226]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[226]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[227]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[227]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[227]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[228]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[228]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[228]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[229]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[229]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[229]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[22]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[22]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[22]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[230]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[230]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[230]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[231]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[231]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[231]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[232]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[232]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[232]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[233]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[233]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[233]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[234]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[234]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[234]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[235]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[235]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[235]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[236]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[236]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[236]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[237]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[237]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[237]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[238]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[238]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[238]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[239]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[239]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[239]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[23]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[23]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[23]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[240]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[240]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[240]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[241]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[241]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[241]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[242]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[242]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[242]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[243]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[243]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[243]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[244]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[244]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[244]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[245]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[245]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[245]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[246]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[246]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[246]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[247]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[247]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[247]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[248]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[248]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[248]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[249]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[249]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[249]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[24]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[24]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[24]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[250]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[250]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[250]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[251]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[251]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[251]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[252]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[252]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[252]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[253]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[253]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[253]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[254]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[254]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[254]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[255]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[255]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[255]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[25]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[25]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[25]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[26]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[26]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[26]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[27]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[27]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[27]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[28]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[28]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[28]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[29]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[29]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[29]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[2]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[2]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[2]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[30]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[30]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[30]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[31]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[31]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[31]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[32]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[32]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[32]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[33]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[33]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[33]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[34]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[34]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[34]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[35]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[35]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[35]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[36]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[36]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[36]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[37]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[37]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[37]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[38]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[38]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[38]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[39]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[39]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[39]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[3]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[3]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[3]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[40]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[40]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[40]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[41]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[41]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[41]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[42]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[42]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[42]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[43]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[43]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[43]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[44]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[44]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[44]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[45]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[45]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[45]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[46]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[46]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[46]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[47]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[47]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[47]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[48]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[48]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[48]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[49]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[49]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[49]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[4]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[4]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[4]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[50]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[50]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[50]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[51]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[51]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[51]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[52]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[52]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[52]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[53]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[53]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[53]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[54]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[54]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[54]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[55]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[55]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[55]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[56]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[56]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[56]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[57]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[57]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[57]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[58]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[58]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[58]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[59]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[59]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[59]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[5]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[5]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[5]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[60]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[60]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[60]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[61]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[61]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[61]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[62]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[62]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[62]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[63]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[63]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[63]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[64]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[64]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[64]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[65]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[65]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[65]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[66]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[66]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[66]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[67]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[67]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[67]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[68]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[68]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[68]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[69]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[69]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[69]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[6]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[6]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[6]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[70]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[70]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[70]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[71]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[71]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[71]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[72]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[72]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[72]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[73]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[73]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[73]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[74]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[74]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[74]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[75]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[75]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[75]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[76]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[76]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[76]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[77]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[77]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[77]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[78]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[78]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[78]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[79]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[79]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[79]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[7]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[7]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[7]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[80]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[80]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[80]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[81]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[81]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[81]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[82]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[82]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[82]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[83]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[83]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[83]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[84]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[84]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[84]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[85]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[85]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[85]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[86]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[86]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[86]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[87]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[87]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[87]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[88]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[88]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[88]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[89]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[89]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[89]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[8]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[8]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[8]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[90]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[90]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[90]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[91]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[91]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[91]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[92]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[92]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[92]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[93]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[93]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[93]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[94]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[94]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[94]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[95]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[95]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[95]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[96]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[96]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[96]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[97]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[97]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[97]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[98]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[98]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[98]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[99]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[99]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[99]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_wdata_reg[9]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_PARAMETER of \bram_wdata_reg[9]\ : label is "MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256";
  attribute equivalent_register_removal of \bram_wdata_reg[9]\ : label is "no";
  attribute X_INTERFACE_INFO of \bram_we_reg[31]\ : label is "xilinx.com:interface:bram:1.0 BRAM_A WE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \trig_cap_p_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \trig_cap_p_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \trig_cap_p_reg[1]\ : label is std.standard.true;
  attribute KEEP of \trig_cap_p_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \trig_cap_p_reg[2]\ : label is std.standard.true;
  attribute KEEP of \trig_cap_p_reg[2]\ : label is "yes";
begin
  SR(0) <= \^sr\(0);
  bram_addr(11 downto 0) <= \^bram_addr\(11 downto 0);
  bram_en_reg_0 <= \^bram_en_reg_0\;
  bram_we(0) <= \^bram_we\(0);
  trig_cap_p_2to1_mon(1 downto 0) <= trig_cap_p(2 downto 1);
\PASSTHROUGH_AXIS_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(0),
      Q => PASSTHROUGH_AXIS_tdata(0),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(100),
      Q => PASSTHROUGH_AXIS_tdata(100),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(101),
      Q => PASSTHROUGH_AXIS_tdata(101),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(102),
      Q => PASSTHROUGH_AXIS_tdata(102),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(103),
      Q => PASSTHROUGH_AXIS_tdata(103),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(104),
      Q => PASSTHROUGH_AXIS_tdata(104),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(105),
      Q => PASSTHROUGH_AXIS_tdata(105),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(106),
      Q => PASSTHROUGH_AXIS_tdata(106),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(107),
      Q => PASSTHROUGH_AXIS_tdata(107),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(108),
      Q => PASSTHROUGH_AXIS_tdata(108),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(109),
      Q => PASSTHROUGH_AXIS_tdata(109),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(10),
      Q => PASSTHROUGH_AXIS_tdata(10),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(110),
      Q => PASSTHROUGH_AXIS_tdata(110),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(111),
      Q => PASSTHROUGH_AXIS_tdata(111),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(112),
      Q => PASSTHROUGH_AXIS_tdata(112),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(113),
      Q => PASSTHROUGH_AXIS_tdata(113),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(114),
      Q => PASSTHROUGH_AXIS_tdata(114),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(115),
      Q => PASSTHROUGH_AXIS_tdata(115),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(116),
      Q => PASSTHROUGH_AXIS_tdata(116),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(117),
      Q => PASSTHROUGH_AXIS_tdata(117),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(118),
      Q => PASSTHROUGH_AXIS_tdata(118),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(119),
      Q => PASSTHROUGH_AXIS_tdata(119),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(11),
      Q => PASSTHROUGH_AXIS_tdata(11),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(120),
      Q => PASSTHROUGH_AXIS_tdata(120),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(121),
      Q => PASSTHROUGH_AXIS_tdata(121),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(122),
      Q => PASSTHROUGH_AXIS_tdata(122),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(123),
      Q => PASSTHROUGH_AXIS_tdata(123),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(124),
      Q => PASSTHROUGH_AXIS_tdata(124),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(125),
      Q => PASSTHROUGH_AXIS_tdata(125),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(126),
      Q => PASSTHROUGH_AXIS_tdata(126),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(127),
      Q => PASSTHROUGH_AXIS_tdata(127),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(128),
      Q => PASSTHROUGH_AXIS_tdata(128),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(129),
      Q => PASSTHROUGH_AXIS_tdata(129),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(12),
      Q => PASSTHROUGH_AXIS_tdata(12),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(130),
      Q => PASSTHROUGH_AXIS_tdata(130),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(131),
      Q => PASSTHROUGH_AXIS_tdata(131),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(132),
      Q => PASSTHROUGH_AXIS_tdata(132),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(133),
      Q => PASSTHROUGH_AXIS_tdata(133),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(134),
      Q => PASSTHROUGH_AXIS_tdata(134),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(135),
      Q => PASSTHROUGH_AXIS_tdata(135),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(136),
      Q => PASSTHROUGH_AXIS_tdata(136),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(137),
      Q => PASSTHROUGH_AXIS_tdata(137),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(138),
      Q => PASSTHROUGH_AXIS_tdata(138),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(139),
      Q => PASSTHROUGH_AXIS_tdata(139),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(13),
      Q => PASSTHROUGH_AXIS_tdata(13),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(140),
      Q => PASSTHROUGH_AXIS_tdata(140),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(141),
      Q => PASSTHROUGH_AXIS_tdata(141),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(142),
      Q => PASSTHROUGH_AXIS_tdata(142),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(143),
      Q => PASSTHROUGH_AXIS_tdata(143),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(144),
      Q => PASSTHROUGH_AXIS_tdata(144),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(145),
      Q => PASSTHROUGH_AXIS_tdata(145),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(146),
      Q => PASSTHROUGH_AXIS_tdata(146),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(147),
      Q => PASSTHROUGH_AXIS_tdata(147),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(148),
      Q => PASSTHROUGH_AXIS_tdata(148),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(149),
      Q => PASSTHROUGH_AXIS_tdata(149),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(14),
      Q => PASSTHROUGH_AXIS_tdata(14),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(150),
      Q => PASSTHROUGH_AXIS_tdata(150),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(151),
      Q => PASSTHROUGH_AXIS_tdata(151),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(152),
      Q => PASSTHROUGH_AXIS_tdata(152),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(153),
      Q => PASSTHROUGH_AXIS_tdata(153),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(154),
      Q => PASSTHROUGH_AXIS_tdata(154),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(155),
      Q => PASSTHROUGH_AXIS_tdata(155),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(156),
      Q => PASSTHROUGH_AXIS_tdata(156),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(157),
      Q => PASSTHROUGH_AXIS_tdata(157),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(158),
      Q => PASSTHROUGH_AXIS_tdata(158),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(159),
      Q => PASSTHROUGH_AXIS_tdata(159),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(15),
      Q => PASSTHROUGH_AXIS_tdata(15),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(160),
      Q => PASSTHROUGH_AXIS_tdata(160),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(161),
      Q => PASSTHROUGH_AXIS_tdata(161),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(162),
      Q => PASSTHROUGH_AXIS_tdata(162),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(163),
      Q => PASSTHROUGH_AXIS_tdata(163),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(164),
      Q => PASSTHROUGH_AXIS_tdata(164),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(165),
      Q => PASSTHROUGH_AXIS_tdata(165),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(166),
      Q => PASSTHROUGH_AXIS_tdata(166),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(167),
      Q => PASSTHROUGH_AXIS_tdata(167),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(168),
      Q => PASSTHROUGH_AXIS_tdata(168),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(169),
      Q => PASSTHROUGH_AXIS_tdata(169),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(16),
      Q => PASSTHROUGH_AXIS_tdata(16),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(170),
      Q => PASSTHROUGH_AXIS_tdata(170),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(171),
      Q => PASSTHROUGH_AXIS_tdata(171),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(172),
      Q => PASSTHROUGH_AXIS_tdata(172),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(173),
      Q => PASSTHROUGH_AXIS_tdata(173),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(174),
      Q => PASSTHROUGH_AXIS_tdata(174),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(175),
      Q => PASSTHROUGH_AXIS_tdata(175),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(176),
      Q => PASSTHROUGH_AXIS_tdata(176),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(177),
      Q => PASSTHROUGH_AXIS_tdata(177),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(178),
      Q => PASSTHROUGH_AXIS_tdata(178),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(179),
      Q => PASSTHROUGH_AXIS_tdata(179),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(17),
      Q => PASSTHROUGH_AXIS_tdata(17),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(180),
      Q => PASSTHROUGH_AXIS_tdata(180),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(181),
      Q => PASSTHROUGH_AXIS_tdata(181),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(182),
      Q => PASSTHROUGH_AXIS_tdata(182),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(183),
      Q => PASSTHROUGH_AXIS_tdata(183),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(184),
      Q => PASSTHROUGH_AXIS_tdata(184),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(185),
      Q => PASSTHROUGH_AXIS_tdata(185),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(186),
      Q => PASSTHROUGH_AXIS_tdata(186),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(187),
      Q => PASSTHROUGH_AXIS_tdata(187),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(188),
      Q => PASSTHROUGH_AXIS_tdata(188),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(189),
      Q => PASSTHROUGH_AXIS_tdata(189),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(18),
      Q => PASSTHROUGH_AXIS_tdata(18),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(190),
      Q => PASSTHROUGH_AXIS_tdata(190),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(191),
      Q => PASSTHROUGH_AXIS_tdata(191),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(192),
      Q => PASSTHROUGH_AXIS_tdata(192),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(193),
      Q => PASSTHROUGH_AXIS_tdata(193),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(194),
      Q => PASSTHROUGH_AXIS_tdata(194),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(195),
      Q => PASSTHROUGH_AXIS_tdata(195),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(196),
      Q => PASSTHROUGH_AXIS_tdata(196),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(197),
      Q => PASSTHROUGH_AXIS_tdata(197),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(198),
      Q => PASSTHROUGH_AXIS_tdata(198),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(199),
      Q => PASSTHROUGH_AXIS_tdata(199),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(19),
      Q => PASSTHROUGH_AXIS_tdata(19),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(1),
      Q => PASSTHROUGH_AXIS_tdata(1),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(200),
      Q => PASSTHROUGH_AXIS_tdata(200),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(201),
      Q => PASSTHROUGH_AXIS_tdata(201),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(202),
      Q => PASSTHROUGH_AXIS_tdata(202),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(203),
      Q => PASSTHROUGH_AXIS_tdata(203),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(204),
      Q => PASSTHROUGH_AXIS_tdata(204),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(205),
      Q => PASSTHROUGH_AXIS_tdata(205),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(206),
      Q => PASSTHROUGH_AXIS_tdata(206),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(207),
      Q => PASSTHROUGH_AXIS_tdata(207),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(208),
      Q => PASSTHROUGH_AXIS_tdata(208),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(209),
      Q => PASSTHROUGH_AXIS_tdata(209),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(20),
      Q => PASSTHROUGH_AXIS_tdata(20),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(210),
      Q => PASSTHROUGH_AXIS_tdata(210),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(211),
      Q => PASSTHROUGH_AXIS_tdata(211),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(212),
      Q => PASSTHROUGH_AXIS_tdata(212),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(213),
      Q => PASSTHROUGH_AXIS_tdata(213),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(214),
      Q => PASSTHROUGH_AXIS_tdata(214),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(215),
      Q => PASSTHROUGH_AXIS_tdata(215),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(216),
      Q => PASSTHROUGH_AXIS_tdata(216),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(217),
      Q => PASSTHROUGH_AXIS_tdata(217),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(218),
      Q => PASSTHROUGH_AXIS_tdata(218),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(219),
      Q => PASSTHROUGH_AXIS_tdata(219),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(21),
      Q => PASSTHROUGH_AXIS_tdata(21),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(220),
      Q => PASSTHROUGH_AXIS_tdata(220),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(221),
      Q => PASSTHROUGH_AXIS_tdata(221),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(222),
      Q => PASSTHROUGH_AXIS_tdata(222),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(223),
      Q => PASSTHROUGH_AXIS_tdata(223),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(224),
      Q => PASSTHROUGH_AXIS_tdata(224),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(225),
      Q => PASSTHROUGH_AXIS_tdata(225),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(226),
      Q => PASSTHROUGH_AXIS_tdata(226),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(227),
      Q => PASSTHROUGH_AXIS_tdata(227),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(228),
      Q => PASSTHROUGH_AXIS_tdata(228),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(229),
      Q => PASSTHROUGH_AXIS_tdata(229),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(22),
      Q => PASSTHROUGH_AXIS_tdata(22),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(230),
      Q => PASSTHROUGH_AXIS_tdata(230),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(231),
      Q => PASSTHROUGH_AXIS_tdata(231),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(232),
      Q => PASSTHROUGH_AXIS_tdata(232),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(233),
      Q => PASSTHROUGH_AXIS_tdata(233),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(234),
      Q => PASSTHROUGH_AXIS_tdata(234),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(235),
      Q => PASSTHROUGH_AXIS_tdata(235),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(236),
      Q => PASSTHROUGH_AXIS_tdata(236),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(237),
      Q => PASSTHROUGH_AXIS_tdata(237),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(238),
      Q => PASSTHROUGH_AXIS_tdata(238),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(239),
      Q => PASSTHROUGH_AXIS_tdata(239),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(23),
      Q => PASSTHROUGH_AXIS_tdata(23),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(240),
      Q => PASSTHROUGH_AXIS_tdata(240),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(241),
      Q => PASSTHROUGH_AXIS_tdata(241),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(242),
      Q => PASSTHROUGH_AXIS_tdata(242),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(243),
      Q => PASSTHROUGH_AXIS_tdata(243),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(244),
      Q => PASSTHROUGH_AXIS_tdata(244),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(245),
      Q => PASSTHROUGH_AXIS_tdata(245),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(246),
      Q => PASSTHROUGH_AXIS_tdata(246),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(247),
      Q => PASSTHROUGH_AXIS_tdata(247),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(248),
      Q => PASSTHROUGH_AXIS_tdata(248),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(249),
      Q => PASSTHROUGH_AXIS_tdata(249),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(24),
      Q => PASSTHROUGH_AXIS_tdata(24),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(250),
      Q => PASSTHROUGH_AXIS_tdata(250),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(251),
      Q => PASSTHROUGH_AXIS_tdata(251),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(252),
      Q => PASSTHROUGH_AXIS_tdata(252),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(253),
      Q => PASSTHROUGH_AXIS_tdata(253),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(254),
      Q => PASSTHROUGH_AXIS_tdata(254),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(255),
      Q => PASSTHROUGH_AXIS_tdata(255),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(25),
      Q => PASSTHROUGH_AXIS_tdata(25),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(26),
      Q => PASSTHROUGH_AXIS_tdata(26),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(27),
      Q => PASSTHROUGH_AXIS_tdata(27),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(28),
      Q => PASSTHROUGH_AXIS_tdata(28),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(29),
      Q => PASSTHROUGH_AXIS_tdata(29),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(2),
      Q => PASSTHROUGH_AXIS_tdata(2),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(30),
      Q => PASSTHROUGH_AXIS_tdata(30),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(31),
      Q => PASSTHROUGH_AXIS_tdata(31),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(32),
      Q => PASSTHROUGH_AXIS_tdata(32),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(33),
      Q => PASSTHROUGH_AXIS_tdata(33),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(34),
      Q => PASSTHROUGH_AXIS_tdata(34),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(35),
      Q => PASSTHROUGH_AXIS_tdata(35),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(36),
      Q => PASSTHROUGH_AXIS_tdata(36),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(37),
      Q => PASSTHROUGH_AXIS_tdata(37),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(38),
      Q => PASSTHROUGH_AXIS_tdata(38),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(39),
      Q => PASSTHROUGH_AXIS_tdata(39),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(3),
      Q => PASSTHROUGH_AXIS_tdata(3),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(40),
      Q => PASSTHROUGH_AXIS_tdata(40),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(41),
      Q => PASSTHROUGH_AXIS_tdata(41),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(42),
      Q => PASSTHROUGH_AXIS_tdata(42),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(43),
      Q => PASSTHROUGH_AXIS_tdata(43),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(44),
      Q => PASSTHROUGH_AXIS_tdata(44),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(45),
      Q => PASSTHROUGH_AXIS_tdata(45),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(46),
      Q => PASSTHROUGH_AXIS_tdata(46),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(47),
      Q => PASSTHROUGH_AXIS_tdata(47),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(48),
      Q => PASSTHROUGH_AXIS_tdata(48),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(49),
      Q => PASSTHROUGH_AXIS_tdata(49),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(4),
      Q => PASSTHROUGH_AXIS_tdata(4),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(50),
      Q => PASSTHROUGH_AXIS_tdata(50),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(51),
      Q => PASSTHROUGH_AXIS_tdata(51),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(52),
      Q => PASSTHROUGH_AXIS_tdata(52),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(53),
      Q => PASSTHROUGH_AXIS_tdata(53),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(54),
      Q => PASSTHROUGH_AXIS_tdata(54),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(55),
      Q => PASSTHROUGH_AXIS_tdata(55),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(56),
      Q => PASSTHROUGH_AXIS_tdata(56),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(57),
      Q => PASSTHROUGH_AXIS_tdata(57),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(58),
      Q => PASSTHROUGH_AXIS_tdata(58),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(59),
      Q => PASSTHROUGH_AXIS_tdata(59),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(5),
      Q => PASSTHROUGH_AXIS_tdata(5),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(60),
      Q => PASSTHROUGH_AXIS_tdata(60),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(61),
      Q => PASSTHROUGH_AXIS_tdata(61),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(62),
      Q => PASSTHROUGH_AXIS_tdata(62),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(63),
      Q => PASSTHROUGH_AXIS_tdata(63),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(64),
      Q => PASSTHROUGH_AXIS_tdata(64),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(65),
      Q => PASSTHROUGH_AXIS_tdata(65),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(66),
      Q => PASSTHROUGH_AXIS_tdata(66),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(67),
      Q => PASSTHROUGH_AXIS_tdata(67),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(68),
      Q => PASSTHROUGH_AXIS_tdata(68),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(69),
      Q => PASSTHROUGH_AXIS_tdata(69),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(6),
      Q => PASSTHROUGH_AXIS_tdata(6),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(70),
      Q => PASSTHROUGH_AXIS_tdata(70),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(71),
      Q => PASSTHROUGH_AXIS_tdata(71),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(72),
      Q => PASSTHROUGH_AXIS_tdata(72),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(73),
      Q => PASSTHROUGH_AXIS_tdata(73),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(74),
      Q => PASSTHROUGH_AXIS_tdata(74),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(75),
      Q => PASSTHROUGH_AXIS_tdata(75),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(76),
      Q => PASSTHROUGH_AXIS_tdata(76),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(77),
      Q => PASSTHROUGH_AXIS_tdata(77),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(78),
      Q => PASSTHROUGH_AXIS_tdata(78),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(79),
      Q => PASSTHROUGH_AXIS_tdata(79),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(7),
      Q => PASSTHROUGH_AXIS_tdata(7),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(80),
      Q => PASSTHROUGH_AXIS_tdata(80),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(81),
      Q => PASSTHROUGH_AXIS_tdata(81),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(82),
      Q => PASSTHROUGH_AXIS_tdata(82),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(83),
      Q => PASSTHROUGH_AXIS_tdata(83),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(84),
      Q => PASSTHROUGH_AXIS_tdata(84),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(85),
      Q => PASSTHROUGH_AXIS_tdata(85),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(86),
      Q => PASSTHROUGH_AXIS_tdata(86),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(87),
      Q => PASSTHROUGH_AXIS_tdata(87),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(88),
      Q => PASSTHROUGH_AXIS_tdata(88),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(89),
      Q => PASSTHROUGH_AXIS_tdata(89),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(8),
      Q => PASSTHROUGH_AXIS_tdata(8),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(90),
      Q => PASSTHROUGH_AXIS_tdata(90),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(91),
      Q => PASSTHROUGH_AXIS_tdata(91),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(92),
      Q => PASSTHROUGH_AXIS_tdata(92),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(93),
      Q => PASSTHROUGH_AXIS_tdata(93),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(94),
      Q => PASSTHROUGH_AXIS_tdata(94),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(95),
      Q => PASSTHROUGH_AXIS_tdata(95),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(96),
      Q => PASSTHROUGH_AXIS_tdata(96),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(97),
      Q => PASSTHROUGH_AXIS_tdata(97),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(98),
      Q => PASSTHROUGH_AXIS_tdata(98),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(99),
      Q => PASSTHROUGH_AXIS_tdata(99),
      R => '0'
    );
\PASSTHROUGH_AXIS_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(9),
      Q => PASSTHROUGH_AXIS_tdata(9),
      R => '0'
    );
PASSTHROUGH_AXIS_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tvalid,
      Q => PASSTHROUGH_AXIS_tvalid,
      R => '0'
    );
\bram_addr[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_addr\(0),
      O => \bram_addr[12]_i_2_n_0\
    );
\bram_addr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => trig_cap_p(2),
      I1 => trig_cap_p(1),
      I2 => axis_aresetn,
      O => \bram_addr[16]_i_1_n_0\
    );
\bram_addr[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \bram_we[31]_i_4_n_0\,
      I1 => \bram_we[31]_i_3_n_0\,
      I2 => \bram_we[31]_i_2_n_0\,
      I3 => \^bram_en_reg_0\,
      O => \bram_addr[16]_i_2_n_0\
    );
\bram_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_10\,
      Q => \^bram_addr\(5),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_9\,
      Q => \^bram_addr\(6),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_8\,
      Q => \^bram_addr\(7),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[12]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \bram_addr_reg[12]_i_1_n_0\,
      CO(6) => \bram_addr_reg[12]_i_1_n_1\,
      CO(5) => \bram_addr_reg[12]_i_1_n_2\,
      CO(4) => \bram_addr_reg[12]_i_1_n_3\,
      CO(3) => \bram_addr_reg[12]_i_1_n_4\,
      CO(2) => \bram_addr_reg[12]_i_1_n_5\,
      CO(1) => \bram_addr_reg[12]_i_1_n_6\,
      CO(0) => \bram_addr_reg[12]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \bram_addr_reg[12]_i_1_n_8\,
      O(6) => \bram_addr_reg[12]_i_1_n_9\,
      O(5) => \bram_addr_reg[12]_i_1_n_10\,
      O(4) => \bram_addr_reg[12]_i_1_n_11\,
      O(3) => \bram_addr_reg[12]_i_1_n_12\,
      O(2) => \bram_addr_reg[12]_i_1_n_13\,
      O(1) => \bram_addr_reg[12]_i_1_n_14\,
      O(0) => \bram_addr_reg[12]_i_1_n_15\,
      S(7 downto 1) => \^bram_addr\(7 downto 1),
      S(0) => \bram_addr[12]_i_2_n_0\
    );
\bram_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[16]_i_3_n_15\,
      Q => \^bram_addr\(8),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[16]_i_3_n_14\,
      Q => \^bram_addr\(9),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[16]_i_3_n_13\,
      Q => \^bram_addr\(10),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[16]_i_3_n_12\,
      Q => \^bram_addr\(11),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[16]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_reg[12]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 3) => \NLW_bram_addr_reg[16]_i_3_CO_UNCONNECTED\(7 downto 3),
      CO(2) => \bram_addr_reg[16]_i_3_n_5\,
      CO(1) => \bram_addr_reg[16]_i_3_n_6\,
      CO(0) => \bram_addr_reg[16]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 4) => \NLW_bram_addr_reg[16]_i_3_O_UNCONNECTED\(7 downto 4),
      O(3) => \bram_addr_reg[16]_i_3_n_12\,
      O(2) => \bram_addr_reg[16]_i_3_n_13\,
      O(1) => \bram_addr_reg[16]_i_3_n_14\,
      O(0) => \bram_addr_reg[16]_i_3_n_15\,
      S(7 downto 4) => B"0000",
      S(3 downto 0) => \^bram_addr\(11 downto 8)
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_15\,
      Q => \^bram_addr\(0),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_14\,
      Q => \^bram_addr\(1),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_13\,
      Q => \^bram_addr\(2),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_12\,
      Q => \^bram_addr\(3),
      R => \bram_addr[16]_i_1_n_0\
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => \bram_addr[16]_i_2_n_0\,
      D => \bram_addr_reg[12]_i_1_n_11\,
      Q => \^bram_addr\(4),
      R => \bram_addr[16]_i_1_n_0\
    );
bram_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FEFFFE00FE00"
    )
        port map (
      I0 => \bram_we[31]_i_2_n_0\,
      I1 => \bram_we[31]_i_3_n_0\,
      I2 => \bram_we[31]_i_4_n_0\,
      I3 => \^bram_en_reg_0\,
      I4 => trig_cap_p(2),
      I5 => trig_cap_p(1),
      O => bram_en_i_1_n_0
    );
bram_en_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => bram_en_i_1_n_0,
      Q => \^bram_en_reg_0\,
      R => \^sr\(0)
    );
bram_rst_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => \^sr\(0)
    );
\bram_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(0),
      Q => bram_wdata(0),
      R => '0'
    );
\bram_wdata_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(100),
      Q => bram_wdata(100),
      R => '0'
    );
\bram_wdata_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(101),
      Q => bram_wdata(101),
      R => '0'
    );
\bram_wdata_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(102),
      Q => bram_wdata(102),
      R => '0'
    );
\bram_wdata_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(103),
      Q => bram_wdata(103),
      R => '0'
    );
\bram_wdata_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(104),
      Q => bram_wdata(104),
      R => '0'
    );
\bram_wdata_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(105),
      Q => bram_wdata(105),
      R => '0'
    );
\bram_wdata_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(106),
      Q => bram_wdata(106),
      R => '0'
    );
\bram_wdata_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(107),
      Q => bram_wdata(107),
      R => '0'
    );
\bram_wdata_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(108),
      Q => bram_wdata(108),
      R => '0'
    );
\bram_wdata_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(109),
      Q => bram_wdata(109),
      R => '0'
    );
\bram_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(10),
      Q => bram_wdata(10),
      R => '0'
    );
\bram_wdata_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(110),
      Q => bram_wdata(110),
      R => '0'
    );
\bram_wdata_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(111),
      Q => bram_wdata(111),
      R => '0'
    );
\bram_wdata_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(112),
      Q => bram_wdata(112),
      R => '0'
    );
\bram_wdata_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(113),
      Q => bram_wdata(113),
      R => '0'
    );
\bram_wdata_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(114),
      Q => bram_wdata(114),
      R => '0'
    );
\bram_wdata_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(115),
      Q => bram_wdata(115),
      R => '0'
    );
\bram_wdata_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(116),
      Q => bram_wdata(116),
      R => '0'
    );
\bram_wdata_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(117),
      Q => bram_wdata(117),
      R => '0'
    );
\bram_wdata_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(118),
      Q => bram_wdata(118),
      R => '0'
    );
\bram_wdata_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(119),
      Q => bram_wdata(119),
      R => '0'
    );
\bram_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(11),
      Q => bram_wdata(11),
      R => '0'
    );
\bram_wdata_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(120),
      Q => bram_wdata(120),
      R => '0'
    );
\bram_wdata_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(121),
      Q => bram_wdata(121),
      R => '0'
    );
\bram_wdata_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(122),
      Q => bram_wdata(122),
      R => '0'
    );
\bram_wdata_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(123),
      Q => bram_wdata(123),
      R => '0'
    );
\bram_wdata_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(124),
      Q => bram_wdata(124),
      R => '0'
    );
\bram_wdata_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(125),
      Q => bram_wdata(125),
      R => '0'
    );
\bram_wdata_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(126),
      Q => bram_wdata(126),
      R => '0'
    );
\bram_wdata_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(127),
      Q => bram_wdata(127),
      R => '0'
    );
\bram_wdata_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(128),
      Q => bram_wdata(128),
      R => '0'
    );
\bram_wdata_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(129),
      Q => bram_wdata(129),
      R => '0'
    );
\bram_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(12),
      Q => bram_wdata(12),
      R => '0'
    );
\bram_wdata_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(130),
      Q => bram_wdata(130),
      R => '0'
    );
\bram_wdata_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(131),
      Q => bram_wdata(131),
      R => '0'
    );
\bram_wdata_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(132),
      Q => bram_wdata(132),
      R => '0'
    );
\bram_wdata_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(133),
      Q => bram_wdata(133),
      R => '0'
    );
\bram_wdata_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(134),
      Q => bram_wdata(134),
      R => '0'
    );
\bram_wdata_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(135),
      Q => bram_wdata(135),
      R => '0'
    );
\bram_wdata_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(136),
      Q => bram_wdata(136),
      R => '0'
    );
\bram_wdata_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(137),
      Q => bram_wdata(137),
      R => '0'
    );
\bram_wdata_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(138),
      Q => bram_wdata(138),
      R => '0'
    );
\bram_wdata_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(139),
      Q => bram_wdata(139),
      R => '0'
    );
\bram_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(13),
      Q => bram_wdata(13),
      R => '0'
    );
\bram_wdata_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(140),
      Q => bram_wdata(140),
      R => '0'
    );
\bram_wdata_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(141),
      Q => bram_wdata(141),
      R => '0'
    );
\bram_wdata_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(142),
      Q => bram_wdata(142),
      R => '0'
    );
\bram_wdata_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(143),
      Q => bram_wdata(143),
      R => '0'
    );
\bram_wdata_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(144),
      Q => bram_wdata(144),
      R => '0'
    );
\bram_wdata_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(145),
      Q => bram_wdata(145),
      R => '0'
    );
\bram_wdata_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(146),
      Q => bram_wdata(146),
      R => '0'
    );
\bram_wdata_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(147),
      Q => bram_wdata(147),
      R => '0'
    );
\bram_wdata_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(148),
      Q => bram_wdata(148),
      R => '0'
    );
\bram_wdata_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(149),
      Q => bram_wdata(149),
      R => '0'
    );
\bram_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(14),
      Q => bram_wdata(14),
      R => '0'
    );
\bram_wdata_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(150),
      Q => bram_wdata(150),
      R => '0'
    );
\bram_wdata_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(151),
      Q => bram_wdata(151),
      R => '0'
    );
\bram_wdata_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(152),
      Q => bram_wdata(152),
      R => '0'
    );
\bram_wdata_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(153),
      Q => bram_wdata(153),
      R => '0'
    );
\bram_wdata_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(154),
      Q => bram_wdata(154),
      R => '0'
    );
\bram_wdata_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(155),
      Q => bram_wdata(155),
      R => '0'
    );
\bram_wdata_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(156),
      Q => bram_wdata(156),
      R => '0'
    );
\bram_wdata_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(157),
      Q => bram_wdata(157),
      R => '0'
    );
\bram_wdata_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(158),
      Q => bram_wdata(158),
      R => '0'
    );
\bram_wdata_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(159),
      Q => bram_wdata(159),
      R => '0'
    );
\bram_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(15),
      Q => bram_wdata(15),
      R => '0'
    );
\bram_wdata_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(160),
      Q => bram_wdata(160),
      R => '0'
    );
\bram_wdata_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(161),
      Q => bram_wdata(161),
      R => '0'
    );
\bram_wdata_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(162),
      Q => bram_wdata(162),
      R => '0'
    );
\bram_wdata_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(163),
      Q => bram_wdata(163),
      R => '0'
    );
\bram_wdata_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(164),
      Q => bram_wdata(164),
      R => '0'
    );
\bram_wdata_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(165),
      Q => bram_wdata(165),
      R => '0'
    );
\bram_wdata_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(166),
      Q => bram_wdata(166),
      R => '0'
    );
\bram_wdata_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(167),
      Q => bram_wdata(167),
      R => '0'
    );
\bram_wdata_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(168),
      Q => bram_wdata(168),
      R => '0'
    );
\bram_wdata_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(169),
      Q => bram_wdata(169),
      R => '0'
    );
\bram_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(16),
      Q => bram_wdata(16),
      R => '0'
    );
\bram_wdata_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(170),
      Q => bram_wdata(170),
      R => '0'
    );
\bram_wdata_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(171),
      Q => bram_wdata(171),
      R => '0'
    );
\bram_wdata_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(172),
      Q => bram_wdata(172),
      R => '0'
    );
\bram_wdata_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(173),
      Q => bram_wdata(173),
      R => '0'
    );
\bram_wdata_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(174),
      Q => bram_wdata(174),
      R => '0'
    );
\bram_wdata_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(175),
      Q => bram_wdata(175),
      R => '0'
    );
\bram_wdata_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(176),
      Q => bram_wdata(176),
      R => '0'
    );
\bram_wdata_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(177),
      Q => bram_wdata(177),
      R => '0'
    );
\bram_wdata_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(178),
      Q => bram_wdata(178),
      R => '0'
    );
\bram_wdata_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(179),
      Q => bram_wdata(179),
      R => '0'
    );
\bram_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(17),
      Q => bram_wdata(17),
      R => '0'
    );
\bram_wdata_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(180),
      Q => bram_wdata(180),
      R => '0'
    );
\bram_wdata_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(181),
      Q => bram_wdata(181),
      R => '0'
    );
\bram_wdata_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(182),
      Q => bram_wdata(182),
      R => '0'
    );
\bram_wdata_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(183),
      Q => bram_wdata(183),
      R => '0'
    );
\bram_wdata_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(184),
      Q => bram_wdata(184),
      R => '0'
    );
\bram_wdata_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(185),
      Q => bram_wdata(185),
      R => '0'
    );
\bram_wdata_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(186),
      Q => bram_wdata(186),
      R => '0'
    );
\bram_wdata_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(187),
      Q => bram_wdata(187),
      R => '0'
    );
\bram_wdata_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(188),
      Q => bram_wdata(188),
      R => '0'
    );
\bram_wdata_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(189),
      Q => bram_wdata(189),
      R => '0'
    );
\bram_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(18),
      Q => bram_wdata(18),
      R => '0'
    );
\bram_wdata_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(190),
      Q => bram_wdata(190),
      R => '0'
    );
\bram_wdata_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(191),
      Q => bram_wdata(191),
      R => '0'
    );
\bram_wdata_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(192),
      Q => bram_wdata(192),
      R => '0'
    );
\bram_wdata_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(193),
      Q => bram_wdata(193),
      R => '0'
    );
\bram_wdata_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(194),
      Q => bram_wdata(194),
      R => '0'
    );
\bram_wdata_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(195),
      Q => bram_wdata(195),
      R => '0'
    );
\bram_wdata_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(196),
      Q => bram_wdata(196),
      R => '0'
    );
\bram_wdata_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(197),
      Q => bram_wdata(197),
      R => '0'
    );
\bram_wdata_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(198),
      Q => bram_wdata(198),
      R => '0'
    );
\bram_wdata_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(199),
      Q => bram_wdata(199),
      R => '0'
    );
\bram_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(19),
      Q => bram_wdata(19),
      R => '0'
    );
\bram_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(1),
      Q => bram_wdata(1),
      R => '0'
    );
\bram_wdata_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(200),
      Q => bram_wdata(200),
      R => '0'
    );
\bram_wdata_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(201),
      Q => bram_wdata(201),
      R => '0'
    );
\bram_wdata_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(202),
      Q => bram_wdata(202),
      R => '0'
    );
\bram_wdata_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(203),
      Q => bram_wdata(203),
      R => '0'
    );
\bram_wdata_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(204),
      Q => bram_wdata(204),
      R => '0'
    );
\bram_wdata_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(205),
      Q => bram_wdata(205),
      R => '0'
    );
\bram_wdata_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(206),
      Q => bram_wdata(206),
      R => '0'
    );
\bram_wdata_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(207),
      Q => bram_wdata(207),
      R => '0'
    );
\bram_wdata_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(208),
      Q => bram_wdata(208),
      R => '0'
    );
\bram_wdata_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(209),
      Q => bram_wdata(209),
      R => '0'
    );
\bram_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(20),
      Q => bram_wdata(20),
      R => '0'
    );
\bram_wdata_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(210),
      Q => bram_wdata(210),
      R => '0'
    );
\bram_wdata_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(211),
      Q => bram_wdata(211),
      R => '0'
    );
\bram_wdata_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(212),
      Q => bram_wdata(212),
      R => '0'
    );
\bram_wdata_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(213),
      Q => bram_wdata(213),
      R => '0'
    );
\bram_wdata_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(214),
      Q => bram_wdata(214),
      R => '0'
    );
\bram_wdata_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(215),
      Q => bram_wdata(215),
      R => '0'
    );
\bram_wdata_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(216),
      Q => bram_wdata(216),
      R => '0'
    );
\bram_wdata_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(217),
      Q => bram_wdata(217),
      R => '0'
    );
\bram_wdata_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(218),
      Q => bram_wdata(218),
      R => '0'
    );
\bram_wdata_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(219),
      Q => bram_wdata(219),
      R => '0'
    );
\bram_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(21),
      Q => bram_wdata(21),
      R => '0'
    );
\bram_wdata_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(220),
      Q => bram_wdata(220),
      R => '0'
    );
\bram_wdata_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(221),
      Q => bram_wdata(221),
      R => '0'
    );
\bram_wdata_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(222),
      Q => bram_wdata(222),
      R => '0'
    );
\bram_wdata_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(223),
      Q => bram_wdata(223),
      R => '0'
    );
\bram_wdata_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(224),
      Q => bram_wdata(224),
      R => '0'
    );
\bram_wdata_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(225),
      Q => bram_wdata(225),
      R => '0'
    );
\bram_wdata_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(226),
      Q => bram_wdata(226),
      R => '0'
    );
\bram_wdata_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(227),
      Q => bram_wdata(227),
      R => '0'
    );
\bram_wdata_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(228),
      Q => bram_wdata(228),
      R => '0'
    );
\bram_wdata_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(229),
      Q => bram_wdata(229),
      R => '0'
    );
\bram_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(22),
      Q => bram_wdata(22),
      R => '0'
    );
\bram_wdata_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(230),
      Q => bram_wdata(230),
      R => '0'
    );
\bram_wdata_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(231),
      Q => bram_wdata(231),
      R => '0'
    );
\bram_wdata_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(232),
      Q => bram_wdata(232),
      R => '0'
    );
\bram_wdata_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(233),
      Q => bram_wdata(233),
      R => '0'
    );
\bram_wdata_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(234),
      Q => bram_wdata(234),
      R => '0'
    );
\bram_wdata_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(235),
      Q => bram_wdata(235),
      R => '0'
    );
\bram_wdata_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(236),
      Q => bram_wdata(236),
      R => '0'
    );
\bram_wdata_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(237),
      Q => bram_wdata(237),
      R => '0'
    );
\bram_wdata_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(238),
      Q => bram_wdata(238),
      R => '0'
    );
\bram_wdata_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(239),
      Q => bram_wdata(239),
      R => '0'
    );
\bram_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(23),
      Q => bram_wdata(23),
      R => '0'
    );
\bram_wdata_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(240),
      Q => bram_wdata(240),
      R => '0'
    );
\bram_wdata_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(241),
      Q => bram_wdata(241),
      R => '0'
    );
\bram_wdata_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(242),
      Q => bram_wdata(242),
      R => '0'
    );
\bram_wdata_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(243),
      Q => bram_wdata(243),
      R => '0'
    );
\bram_wdata_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(244),
      Q => bram_wdata(244),
      R => '0'
    );
\bram_wdata_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(245),
      Q => bram_wdata(245),
      R => '0'
    );
\bram_wdata_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(246),
      Q => bram_wdata(246),
      R => '0'
    );
\bram_wdata_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(247),
      Q => bram_wdata(247),
      R => '0'
    );
\bram_wdata_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(248),
      Q => bram_wdata(248),
      R => '0'
    );
\bram_wdata_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(249),
      Q => bram_wdata(249),
      R => '0'
    );
\bram_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(24),
      Q => bram_wdata(24),
      R => '0'
    );
\bram_wdata_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(250),
      Q => bram_wdata(250),
      R => '0'
    );
\bram_wdata_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(251),
      Q => bram_wdata(251),
      R => '0'
    );
\bram_wdata_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(252),
      Q => bram_wdata(252),
      R => '0'
    );
\bram_wdata_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(253),
      Q => bram_wdata(253),
      R => '0'
    );
\bram_wdata_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(254),
      Q => bram_wdata(254),
      R => '0'
    );
\bram_wdata_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(255),
      Q => bram_wdata(255),
      R => '0'
    );
\bram_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(25),
      Q => bram_wdata(25),
      R => '0'
    );
\bram_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(26),
      Q => bram_wdata(26),
      R => '0'
    );
\bram_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(27),
      Q => bram_wdata(27),
      R => '0'
    );
\bram_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(28),
      Q => bram_wdata(28),
      R => '0'
    );
\bram_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(29),
      Q => bram_wdata(29),
      R => '0'
    );
\bram_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(2),
      Q => bram_wdata(2),
      R => '0'
    );
\bram_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(30),
      Q => bram_wdata(30),
      R => '0'
    );
\bram_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(31),
      Q => bram_wdata(31),
      R => '0'
    );
\bram_wdata_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(32),
      Q => bram_wdata(32),
      R => '0'
    );
\bram_wdata_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(33),
      Q => bram_wdata(33),
      R => '0'
    );
\bram_wdata_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(34),
      Q => bram_wdata(34),
      R => '0'
    );
\bram_wdata_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(35),
      Q => bram_wdata(35),
      R => '0'
    );
\bram_wdata_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(36),
      Q => bram_wdata(36),
      R => '0'
    );
\bram_wdata_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(37),
      Q => bram_wdata(37),
      R => '0'
    );
\bram_wdata_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(38),
      Q => bram_wdata(38),
      R => '0'
    );
\bram_wdata_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(39),
      Q => bram_wdata(39),
      R => '0'
    );
\bram_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(3),
      Q => bram_wdata(3),
      R => '0'
    );
\bram_wdata_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(40),
      Q => bram_wdata(40),
      R => '0'
    );
\bram_wdata_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(41),
      Q => bram_wdata(41),
      R => '0'
    );
\bram_wdata_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(42),
      Q => bram_wdata(42),
      R => '0'
    );
\bram_wdata_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(43),
      Q => bram_wdata(43),
      R => '0'
    );
\bram_wdata_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(44),
      Q => bram_wdata(44),
      R => '0'
    );
\bram_wdata_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(45),
      Q => bram_wdata(45),
      R => '0'
    );
\bram_wdata_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(46),
      Q => bram_wdata(46),
      R => '0'
    );
\bram_wdata_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(47),
      Q => bram_wdata(47),
      R => '0'
    );
\bram_wdata_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(48),
      Q => bram_wdata(48),
      R => '0'
    );
\bram_wdata_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(49),
      Q => bram_wdata(49),
      R => '0'
    );
\bram_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(4),
      Q => bram_wdata(4),
      R => '0'
    );
\bram_wdata_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(50),
      Q => bram_wdata(50),
      R => '0'
    );
\bram_wdata_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(51),
      Q => bram_wdata(51),
      R => '0'
    );
\bram_wdata_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(52),
      Q => bram_wdata(52),
      R => '0'
    );
\bram_wdata_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(53),
      Q => bram_wdata(53),
      R => '0'
    );
\bram_wdata_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(54),
      Q => bram_wdata(54),
      R => '0'
    );
\bram_wdata_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(55),
      Q => bram_wdata(55),
      R => '0'
    );
\bram_wdata_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(56),
      Q => bram_wdata(56),
      R => '0'
    );
\bram_wdata_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(57),
      Q => bram_wdata(57),
      R => '0'
    );
\bram_wdata_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(58),
      Q => bram_wdata(58),
      R => '0'
    );
\bram_wdata_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(59),
      Q => bram_wdata(59),
      R => '0'
    );
\bram_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(5),
      Q => bram_wdata(5),
      R => '0'
    );
\bram_wdata_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(60),
      Q => bram_wdata(60),
      R => '0'
    );
\bram_wdata_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(61),
      Q => bram_wdata(61),
      R => '0'
    );
\bram_wdata_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(62),
      Q => bram_wdata(62),
      R => '0'
    );
\bram_wdata_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(63),
      Q => bram_wdata(63),
      R => '0'
    );
\bram_wdata_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(64),
      Q => bram_wdata(64),
      R => '0'
    );
\bram_wdata_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(65),
      Q => bram_wdata(65),
      R => '0'
    );
\bram_wdata_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(66),
      Q => bram_wdata(66),
      R => '0'
    );
\bram_wdata_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(67),
      Q => bram_wdata(67),
      R => '0'
    );
\bram_wdata_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(68),
      Q => bram_wdata(68),
      R => '0'
    );
\bram_wdata_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(69),
      Q => bram_wdata(69),
      R => '0'
    );
\bram_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(6),
      Q => bram_wdata(6),
      R => '0'
    );
\bram_wdata_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(70),
      Q => bram_wdata(70),
      R => '0'
    );
\bram_wdata_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(71),
      Q => bram_wdata(71),
      R => '0'
    );
\bram_wdata_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(72),
      Q => bram_wdata(72),
      R => '0'
    );
\bram_wdata_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(73),
      Q => bram_wdata(73),
      R => '0'
    );
\bram_wdata_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(74),
      Q => bram_wdata(74),
      R => '0'
    );
\bram_wdata_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(75),
      Q => bram_wdata(75),
      R => '0'
    );
\bram_wdata_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(76),
      Q => bram_wdata(76),
      R => '0'
    );
\bram_wdata_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(77),
      Q => bram_wdata(77),
      R => '0'
    );
\bram_wdata_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(78),
      Q => bram_wdata(78),
      R => '0'
    );
\bram_wdata_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(79),
      Q => bram_wdata(79),
      R => '0'
    );
\bram_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(7),
      Q => bram_wdata(7),
      R => '0'
    );
\bram_wdata_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(80),
      Q => bram_wdata(80),
      R => '0'
    );
\bram_wdata_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(81),
      Q => bram_wdata(81),
      R => '0'
    );
\bram_wdata_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(82),
      Q => bram_wdata(82),
      R => '0'
    );
\bram_wdata_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(83),
      Q => bram_wdata(83),
      R => '0'
    );
\bram_wdata_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(84),
      Q => bram_wdata(84),
      R => '0'
    );
\bram_wdata_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(85),
      Q => bram_wdata(85),
      R => '0'
    );
\bram_wdata_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(86),
      Q => bram_wdata(86),
      R => '0'
    );
\bram_wdata_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(87),
      Q => bram_wdata(87),
      R => '0'
    );
\bram_wdata_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(88),
      Q => bram_wdata(88),
      R => '0'
    );
\bram_wdata_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(89),
      Q => bram_wdata(89),
      R => '0'
    );
\bram_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(8),
      Q => bram_wdata(8),
      R => '0'
    );
\bram_wdata_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(90),
      Q => bram_wdata(90),
      R => '0'
    );
\bram_wdata_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(91),
      Q => bram_wdata(91),
      R => '0'
    );
\bram_wdata_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(92),
      Q => bram_wdata(92),
      R => '0'
    );
\bram_wdata_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(93),
      Q => bram_wdata(93),
      R => '0'
    );
\bram_wdata_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(94),
      Q => bram_wdata(94),
      R => '0'
    );
\bram_wdata_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(95),
      Q => bram_wdata(95),
      R => '0'
    );
\bram_wdata_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(96),
      Q => bram_wdata(96),
      R => '0'
    );
\bram_wdata_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(97),
      Q => bram_wdata(97),
      R => '0'
    );
\bram_wdata_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(98),
      Q => bram_wdata(98),
      R => '0'
    );
\bram_wdata_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(99),
      Q => bram_wdata(99),
      R => '0'
    );
\bram_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => CAP_AXIS_tdata(9),
      Q => bram_wdata(9),
      R => '0'
    );
\bram_we[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFFFEFFFE00"
    )
        port map (
      I0 => \bram_we[31]_i_2_n_0\,
      I1 => \bram_we[31]_i_3_n_0\,
      I2 => \bram_we[31]_i_4_n_0\,
      I3 => \^bram_en_reg_0\,
      I4 => \bram_we[31]_i_5_n_0\,
      I5 => \^bram_we\(0),
      O => \bram_we[31]_i_1_n_0\
    );
\bram_we[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^bram_addr\(5),
      I1 => \^bram_addr\(4),
      I2 => \^bram_addr\(7),
      I3 => \^bram_addr\(6),
      O => \bram_we[31]_i_2_n_0\
    );
\bram_we[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^bram_addr\(9),
      I1 => \^bram_addr\(8),
      I2 => \^bram_addr\(11),
      I3 => \^bram_addr\(10),
      O => \bram_we[31]_i_3_n_0\
    );
\bram_we[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^bram_addr\(1),
      I1 => \^bram_addr\(0),
      I2 => \^bram_addr\(3),
      I3 => \^bram_addr\(2),
      O => \bram_we[31]_i_4_n_0\
    );
\bram_we[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => trig_cap_p(1),
      I1 => trig_cap_p(2),
      O => \bram_we[31]_i_5_n_0\
    );
\bram_we_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => \bram_we[31]_i_1_n_0\,
      Q => \^bram_we\(0),
      R => \^sr\(0)
    );
\trig_cap_p_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => trig_cap,
      Q => trig_cap_p(0),
      R => \^sr\(0)
    );
\trig_cap_p_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => trig_cap_p(0),
      Q => trig_cap_p(1),
      R => \^sr\(0)
    );
\trig_cap_p_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_clk,
      CE => '1',
      D => trig_cap_p(1),
      Q => trig_cap_p(2),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ctrl_snapshot_128k_0_4 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ctrl_snapshot_128k_0_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ctrl_snapshot_128k_0_4 : entity is "design_1_ctrl_snapshot_128k_0_4,ctrl_snapshot_128k,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ctrl_snapshot_128k_0_4 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_ctrl_snapshot_128k_0_4 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ctrl_snapshot_128k_0_4 : entity is "ctrl_snapshot_128k,Vivado 2019.2";
end design_1_ctrl_snapshot_128k_0_4;

architecture STRUCTURE of design_1_ctrl_snapshot_128k_0_4 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^axis_clk\ : STD_LOGIC;
  signal \^bram_addr\ : STD_LOGIC_VECTOR ( 16 downto 5 );
  signal \^bram_we\ : STD_LOGIC_VECTOR ( 30 to 30 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CAP_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 CAP_AXIS TREADY";
  attribute X_INTERFACE_INFO of CAP_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 CAP_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CAP_AXIS_tvalid : signal is "XIL_INTERFACENAME CAP_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of PASSTHROUGH_AXIS_tready : signal is "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TREADY";
  attribute X_INTERFACE_INFO of PASSTHROUGH_AXIS_tvalid : signal is "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TVALID";
  attribute X_INTERFACE_PARAMETER of PASSTHROUGH_AXIS_tvalid : signal is "XIL_INTERFACENAME PASSTHROUGH_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_clk : signal is "xilinx.com:signal:clock:1.0 axis_clk CLK";
  attribute X_INTERFACE_PARAMETER of axis_clk : signal is "XIL_INTERFACENAME axis_clk, ASSOCIATED_RESET axis_aresetn, ASSOCIATED_BUSIF CAP_AXIS:PASSTHROUGH_AXIS, FREQ_HZ 192000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_1_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of bram_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_A CLK";
  attribute X_INTERFACE_INFO of bram_en : signal is "xilinx.com:interface:bram:1.0 BRAM_A EN";
  attribute X_INTERFACE_INFO of bram_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_A RST";
  attribute X_INTERFACE_PARAMETER of bram_rst : signal is "XIL_INTERFACENAME BRAM_A, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ, MEM_SIZE 131072, MEM_WIDTH 256, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of CAP_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 CAP_AXIS TDATA";
  attribute X_INTERFACE_INFO of PASSTHROUGH_AXIS_tdata : signal is "xilinx.com:interface:axis:1.0 PASSTHROUGH_AXIS TDATA";
  attribute X_INTERFACE_INFO of bram_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_A ADDR";
  attribute X_INTERFACE_INFO of bram_rdata : signal is "xilinx.com:interface:bram:1.0 BRAM_A DOUT";
  attribute X_INTERFACE_INFO of bram_wdata : signal is "xilinx.com:interface:bram:1.0 BRAM_A DIN";
  attribute X_INTERFACE_INFO of bram_we : signal is "xilinx.com:interface:bram:1.0 BRAM_A WE";
begin
  CAP_AXIS_tready <= \<const1>\;
  \^axis_clk\ <= axis_clk;
  bram_addr(31) <= \<const0>\;
  bram_addr(30) <= \<const0>\;
  bram_addr(29) <= \<const0>\;
  bram_addr(28) <= \<const0>\;
  bram_addr(27) <= \<const0>\;
  bram_addr(26) <= \<const0>\;
  bram_addr(25) <= \<const0>\;
  bram_addr(24) <= \<const0>\;
  bram_addr(23) <= \<const0>\;
  bram_addr(22) <= \<const0>\;
  bram_addr(21) <= \<const0>\;
  bram_addr(20) <= \<const0>\;
  bram_addr(19) <= \<const0>\;
  bram_addr(18) <= \<const0>\;
  bram_addr(17) <= \<const0>\;
  bram_addr(16 downto 5) <= \^bram_addr\(16 downto 5);
  bram_addr(4) <= \<const0>\;
  bram_addr(3) <= \<const0>\;
  bram_addr(2) <= \<const0>\;
  bram_addr(1) <= \<const0>\;
  bram_addr(0) <= \<const0>\;
  bram_clk <= \^axis_clk\;
  bram_we(31) <= \^bram_we\(30);
  bram_we(30) <= \^bram_we\(30);
  bram_we(29) <= \^bram_we\(30);
  bram_we(28) <= \^bram_we\(30);
  bram_we(27) <= \^bram_we\(30);
  bram_we(26) <= \^bram_we\(30);
  bram_we(25) <= \^bram_we\(30);
  bram_we(24) <= \^bram_we\(30);
  bram_we(23) <= \^bram_we\(30);
  bram_we(22) <= \^bram_we\(30);
  bram_we(21) <= \^bram_we\(30);
  bram_we(20) <= \^bram_we\(30);
  bram_we(19) <= \^bram_we\(30);
  bram_we(18) <= \^bram_we\(30);
  bram_we(17) <= \^bram_we\(30);
  bram_we(16) <= \^bram_we\(30);
  bram_we(15) <= \^bram_we\(30);
  bram_we(14) <= \^bram_we\(30);
  bram_we(13) <= \^bram_we\(30);
  bram_we(12) <= \^bram_we\(30);
  bram_we(11) <= \^bram_we\(30);
  bram_we(10) <= \^bram_we\(30);
  bram_we(9) <= \^bram_we\(30);
  bram_we(8) <= \^bram_we\(30);
  bram_we(7) <= \^bram_we\(30);
  bram_we(6) <= \^bram_we\(30);
  bram_we(5) <= \^bram_we\(30);
  bram_we(4) <= \^bram_we\(30);
  bram_we(3) <= \^bram_we\(30);
  bram_we(2) <= \^bram_we\(30);
  bram_we(1) <= \^bram_we\(30);
  bram_we(0) <= \^bram_we\(30);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_ctrl_snapshot_128k_0_4_ctrl_snapshot_128k
     port map (
      CAP_AXIS_tdata(255 downto 0) => CAP_AXIS_tdata(255 downto 0),
      CAP_AXIS_tvalid => CAP_AXIS_tvalid,
      PASSTHROUGH_AXIS_tdata(255 downto 0) => PASSTHROUGH_AXIS_tdata(255 downto 0),
      PASSTHROUGH_AXIS_tvalid => PASSTHROUGH_AXIS_tvalid,
      SR(0) => bram_rst,
      axis_aresetn => axis_aresetn,
      axis_clk => \^axis_clk\,
      bram_addr(11 downto 0) => \^bram_addr\(16 downto 5),
      bram_en_reg_0 => bram_en,
      bram_wdata(255 downto 0) => bram_wdata(255 downto 0),
      bram_we(0) => \^bram_we\(30),
      trig_cap => trig_cap,
      trig_cap_p_2to1_mon(1 downto 0) => trig_cap_p_2to1_mon(1 downto 0)
    );
end STRUCTURE;
