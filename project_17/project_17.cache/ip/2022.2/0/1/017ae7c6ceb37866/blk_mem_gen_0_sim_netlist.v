// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan 12 11:16:00 2024
// Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [5:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [5:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [5:0]addra;
  wire [5:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [5:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [5:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "6" *) 
  (* C_ADDRB_WIDTH = "6" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     1.375111 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "64" *) 
  (* C_READ_DEPTH_B = "64" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "64" *) 
  (* C_WRITE_DEPTH_B = "64" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[5:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[5:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21824)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
