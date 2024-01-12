// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Jan 12 11:16:02 2024
// Host        : GOKUL-KUMAR running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/velic/project_17/project_17.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_5 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21808)
`pragma protect data_block
oYDBgYXy3U/eOwrKmbNWfuaGyQsFQWIV1SS7gCyXEF1RX3LJLtYAcZs7tFxynZG5NW/5Q6LkWjm/
ujkzitmr8OI3l/GUJcJVdG/g4ny0atfC7j8p+cec9wZdyU4vdwpYHa8UAK7XJDuCoxPHqzRWLFsx
Uswpua/UCvTAXJ/9xRlk1Se0bk5+XlFgIWQ8ydJMZvheygVHwVqM9UHNRthRnZY66fDxh8mF+CzA
VW3C3qbkfkLkGKEqPYE9GvbGHJzobuKlemko8ycqeGbWStrt8Cbq1x5MS+HdNq4LttdAs9h1G2ch
cGAKY+m+xibPM5K8MACV+i4ACgrbVYI/uTF1RQH6gd+k4jJV+CtKGe+ECLapxkuG9DgYMINS8KJw
/A4eXeWMymtiRsCjTrgcYh8GU4ZIPfMeCGKTGwWzfuetdsnm25+U9EoXhw9zwQMYEMcFHAcYp9yv
YnS3pOVUJDKi/e6egWLzWUgI6CymF5/2x9FLIpTeQINbAD5MMJNgDG9GLHv36X1P/z4nsGUXSOxp
IdlgGecJQLp8Rv/USTId688OqIZEOHg077aWsOX1AZkKVN/mZHlYjTqqVxs/v7uMnBlTPvakfpOF
zqrOERmDKwxUhWckuj6ZfD0A7J3Z6WphSZ/BQZ8j0+05l9MsPKtbUpGvtj12mjb8Xs+kwTEpQ5ob
x2aFb8SOho6VJ27Jx1hFXb7zpAq+zd22ZLOb8TP3X9NJQkLev207JyxIuuBVKq62Zj7AQkPxzfpO
k7QJE+Fn47DR/cWsHw5HUCO5CRN/qMf6NzsJs5TZtHDIwZGb0FNmRwzWTg1UeOkMw0moqjf4uJAh
iPyX6rZVfmQgxEF3U195LjIxYzsU+T3/mbtGk9nB2n62ckpk+PKQz7Qb/t6wVM66CASzH7TxDMdO
1EeCoqElY6SHLp3OEFGdIavbLPM17UDOXmOdX1/U+suKHy6lqPXvSTsMUOK+NErU2GQSGJqslp01
rJzsxLQEyLw3xGXWQmTGmhP1/b8ZViB5SKjHyhPovotkPwr/HXFaw4B/Ww+7vZCTRhPw6wk1z4U0
WynwoIQAqfxwmkDJkK/DDeCCBlDRDpCQuCyXOaFzzA8hTmbThC28NVLPqoeKRA59octFaozjvaWv
ER9tHekb0Vn/iy/wPsLaT5Eh/9F+KIBvfnsRudx79MHoIE0Q5TrpkvS8yL549Vx9t0jur0fmHp8I
wPRF0ZOPWgeJBwZK772moJLRV4RC5O1yi8Bl4U2Csbbkid6ws2TBvrZm6BaUNm98yfqGc55xRdaD
vxfRDifq5WWNm9lNmCgFlbpQ26WFV6uD5vFyZVPdPi8uPmzRcqoZwEoHQtyladuxUuSG/lE2lWLW
BOx5Y39WIZH7wyZ5GJHSA6j4xn+hm0/9TW08NgpS3ScKUYYJfvSKNTDAfyLe0B6jowq0OnU8lIkd
xCQJXzgokj1RtxGvbJWXL10PEzexAQKqGEQH+gLlZNj2z3b5jMzFLvmCpireHxOsF4QTRyn7xUGS
1caDJStFlJMmuRNoMYsxCmodj1XaibQMf1fAkvKKx4lqm7xcxAGZYNoItP5eQk9vZWx5W0V15jzI
ojV+qFT6CybC1966Y9ZUjjELsLEQQVe5+gy5DOBAADiE/uHU+tiHJ+Byd4CcUB+ntAEeyUvZY5a/
tsKQbpXG08xvN88qv2vd/9DgXzFF6IMk2SZX8yGrF6ZPC66vggFvxWDONngoXzjLTi8lDBlPRdqI
V1dVtKDQUJfVX4sn3MtWCg63dt2PApEiAZZO/P9VGrkxPF8RZOFuPiMK59M7qcXvNYFOEOMGsp1/
fHhHkhyNYt5WUs5OeahQpADcrPGOagIEcViIzvQATlI1l3FPSvhXGsuHCqLhfUbfuBDlZDfW6+r9
3qa9S0KQyc4Yvr7jnO+HWEO0FK6Yyt37Txvmh/G+h/eE5h34ROmcAM3W+R3yTY0WdWd2s33Xk+N3
1qPbTuPOthGN4SDxahZVIFRtxZg0kx+R5GlzDfVjk3DNfbN/Cly/8GIPtZZwvHV9LuAL+hwxBUMF
HkrhjOGAhQHb++em9S5z5+MxS7UYpvWDEJUdyUtO9Glu3Vm1kVXJaanrCryKK0pEC1BeokrObnPw
oFSKA8GDNKx6BCzbRPrF28LmwC8QOjQ+sn6fe0jpGbhm07pXmnnFdDjgvq03RUSv9O2vE+s8aKKA
dyNDonSivSM/oWzHmvaLPGGNpOd0CbSTIieQmSKMOsB8sJk9DMN5ZSM3NrME+6EBak1kKstwDRYz
cYQfW7zVBhvj5UFo6wqvYWyyUcA6Yz40dtfEd/0w+xwk/Q+jVzEABQ04EDQPeVDA39X+Cx7DMKVd
yX31MEiVvYGTbv3jc1EDshazCiiPy/Iqki1/wp7J2qYzZGkjfjwcmhjGfvY5WYmgj0+Skkrl3NLG
8sUkGoXcFRJrb2G3dhjyILqI/cy+dV2Dx3Idecc/T86Q+o4CXUAM3Vd95Fn0P3gfgvH/Rz4GZ27X
0kgp1VwunHY4KD5F9z+gJYZoCSL1nM9X+1ehS3RqcfaX0NxjodwIiuCQgRhepV5BWEVWxSZYWAh5
AQOJXlos+xkJU+Mx75qeNg3mEVjNyptYw5bumeqofWXYbMLQpYvHbflwTHrwoLRbV7rAUIPiz2R8
J2ZEyY3ALC0BDLpPnFPn4We3JZLejHX6LTuiAnQZvUg16mTSzpOPS6GERbECzs2tdWSys8Q07y/4
T8PFy5vvoc903XQkhas1V/3Ecf3HA85HCgMs8fSX7GfnN6/hjls3BxYmAzuP7J3aphsJWkoS8i8Z
9kx4oQnocQJ2OG+DdFKEeE5cfWK9AD3x5O2pxX8tm2ome/cKt6fVOKV/da6Zd81kbf/1n5i6FxaY
sGAvHM2qQq0ogG/kv7IbFaC2yChGXdjnpGZR7iHAMnn+XzSlaSTYZ1QnrbPufJCLlMlgr8Vwlz19
fdYNMy/zTLjnNAIfWHg9F9rAIBNcKgqB/EnYZYtrFY79TQZBmZy8Ps/+AtTnVhTpQedHNWT85FCS
zG9y4ESm3Mp2dT8bAwvGuWOGzYYxHM3UNOZEw46RdSw4V+RQHAyaQALBCJm3iy1tdJFUSu6mmJyb
z9gpMj0GfrcHh6h54YIMym/PkGLCgD3bMDo1EePtC3wLghD4FN2V0RsTcT6EhasDw4hr2SlERrFh
S1KcVTHKXQchxiYI8O2t5gEyBqqNS0MBkNCPbUwdVdj7YZwLjn9RJw3evGwyu+9xn+DQY04TNhXk
0dyK+9HgsGuu2AZynDdFOWcx+iXkG5KFjnorojVbZozIe8JJ8flCjFeoUjG0iOLD7fkNw8iUngfu
nZVwjvhxFgz5rX9T6VCheGmhersNfuRFU5FXZ8pQf/aTy2y4eR8Yh9Amwl34latY6yD7eaXfycf6
YMWDsj4b2y0SxzNAMoBYKqq3boaR1G235jTYJfIMlME6nxvFKZ/b/r3RI/e73Ygf3q2zzE3vsL7l
vck0K4EULv3S52GzLsDQyNC8b4pdUOEHq6spOZcLzUJmPygldJeztkvOHfk84Z596J8bsj7z5rMN
zp/YKF8s8TCiyUh4To7vj5LAuGJM+Wif8y+/y02tvXYHzPIfT7bwNTJ5u8sTVpdnl2tD9TjQeZV0
ERvF95S2hanL2aw+CJEeqk0+X2jhMevL1XbZ/4quBcaniB4Jay+/RLdpq7ZcMsQCpEIY6CEDvAuX
pTJh7KxWEFU5QTDjyanmuLO2E8Y+plOILHLvGu4cHIV2G7gjIlFbTuMy/xHmk2h0HtCh3mPg0yGa
eL9T456iNpFmnQqfH+qjb0Mcv604FzbZWtMyBipddpg3TFcgWbh3y+bjj3kJG8jj0PUCvQR7cumx
nND2yf3aR0lR4SFKiT9Y+ckEEbRoxt6TfUH6jnZrav0mwGYvBLhOq+e8yNEmO2OjYPj8TM2ieG9i
dLlsOIfePuP7pkQNgIJX1J/iuJGCXB3RBukFoT11RD2EKAoVetaG9YFRjr/Ptni+IidjDKLEYhAB
tJEYLaKtz191VOPLL9m2xaHDzJNoCjK8HYT5y1phxl5nzE+CpSxgzHAG3Sef2AYgjPnFgGpm13YG
dJDScjJnhZAeR4Qec4hCJOQ3X8MtA8U3pJZFL5T1ToxCqarD+TMo4RnT075hlFeAsLZaYagYlfUw
qz7nWdTvAd5sOeoV6M2OnEkd00oEIBbPbizEug0HUyKEpPM7o4DNNTadC0rA7KgHKGffYMjOVeWn
xUFfHZQTqIVUELb3j//uNGJx7w4G0G0YFL0jiEUn3GeJyNHpCfAKvLaoNGatBZzTbFm1Z/We74UA
jkqvUZf3xDd6kIa8O/7TioLgQOxux0McLyRusHlXLdKd3K8eu86WrtN5OW0Jl87oHl9GSyPFxb3r
0WF2YlPEIKNI0sqqh2GGU390OognWhYiGwTyof1fh7YEs8y5Tbv9cnPnadVPmenMHeXA8X+hmYgl
zZ2ROXajJnYIwFnNop9uGkpfXsKNxjSEd/zD6M+xYN/RWCiSh7VRctt6pwGRfrvCsrEsf3Nl/Hp3
+Q6++j72QFDSLQTHvW2oShjOoZZml5GYARd87rfSWWrHR0AEdC9OpNngAyFwNBPgwY+TuRbgS3Ur
bs4j3kMFv7igFmoyClpLVrXI7gUPmAl5bPi1o08nm18EOSekOZlY5MHycB53HrYD6A5erM5c5jgN
L3N7us6NR5raM+vp1BmVXnUCMWcWkMigXHqgd5F1iusLR9SG82R9K35+JG664Oxce/xM/bTYMNjR
r6xHldLCiBHbbmRk8N7L8adQSHY0/C1GxQp+JzQv7p8ul5HxD5kJyQOjvaa0ZKHBc59gBX4Ug76D
VYDL1JcrhW6ABP3eHK1IJmUC1Mr1TeqSH/I4/2bxyl6r55ktjJ/B1u+4utOE0xDBybNgEqA8iEEt
ens+JkCFVXdFoPeHUplRhzpAxBupBLtAHrIyuhkSa2nwCuauRobk9N2g2hlGaUGvhPY1tNzZZCyX
t+gDa8zLRHVR7eiUhS0Ax1U9md6hbS6+00JGgtmSeVYBFcwTHeGvg8ri58bMa1mM1FjYPgPNyF5C
XuI0k75Ylf0dIdacNcYUOoPLdEKZAmhdAPTd0f4ukMpXAZbCcO8bF3n7gaHKcRVlaMp26zBcZ3kS
9feye7A1vgmxsythxQaZ1QvZ9Wi67kUOi9iHFj2KCKgzLKf3MGLx1+tFb6xcwRt/f/9aaBK28XUk
9zfEOdIeaQnNsM6AP0g6HheZSz9/1sVUGKnrnf+lzoWtJuE0uUzZXKuZVu1SLKEXhE0mCpl1qKZT
2rFF409Z21lrrBLGBCOTyld+EA5F6npnZZOuuLb8mqiV9wcs94fZAuVJotWCfdprPhSOC3axVSHg
F+6vRPQJ3EZqvxCvE2/YwGnFTWPrKOLX8cIqAisUHr5j5czIQiLrLXSGbojucMCo8B4Hdy9GUidF
3J89KUgPFC0OyOs6bJEovywmkQ8HUwvBXKGN53x2r0UM6NJqEQs1oWjw+2LUuGi8ksSiBYDX4GuU
8PDZQG2PkxZmVNDqIMhp0fTzpydclDrGItN+H6VYL+guvs79em7yf9fNh5Xmun2dqgqJbaogT86A
Mi7UPWc7xWSoOtBlhG8xzAYNnxkUZ3P/xiO1hPziy4oMHTvt0JSkc5iY6lgvWZe/S4jAOXnJPm01
XEBf5CGaQALMfreJcWuepSqCNmggDpd3eeB4ROU5Z/9pUtsmjRLQcURxTcL63sANvU2i9qzac0sG
KVmmpwLbaBQZCYI9CLB9jOPro8rmC8g4on1ngGUpUGEy8ZdKZInsQh5zIo27CRm4t6cV8JpW5H2Z
jiNdY3MGlhaQWbf0g9Lsm5P5juX4wNPWBt6jnld8pEEwJxSr0st+n0UCEAW4LIVpdXdO1Lw/4EBn
0Ot1mV34Ur5HSE353frRilP4papvB5ihwx/wJZiYhOFins20oWB+06TF9mpZ53Yt493kI+64HTtl
wN0l7gCb1/DsCv/j2YSxyMEGrOfKM9nixxotp9BRcDAyoEeD3ywmonU80UrGrWT6aoKE1F6p5C5t
tFmMFXy06scr2GUCy2Sle9IGbxLFl5Lu66NddV+/4UPNsEkOwxECioJy027v8RI6lIM89tLSvaPE
MsWuhiWjNNpYVETwoQLdxQP8KBX1Dwzru/xMVDpBmSsuozw1U1QjuyGtNcZy0+TW8l8Trnoa5UVJ
mdJEfig+VWVwPL80Ru8am1KwgeeBbOEc6HboyFOt+GFDgvjKzRQP/wPaSIw/RDW7ghI3RGkHyIlH
ujve31RMhENOgDmNTeSwZyrKm42JebM7TVJ66agvc75s2P3TZnONTeaClLdKNTjmvjjJpl5wqkMU
t2YcKwOcdh64wsQI4QtZwCX7DoT1YTvL+lysEL2sZ0r2nsxQBTy7MzJhSDz1rrHlyitv11x2d0eq
do6ywH8RFQoKKRUyoRL/t9LCEHdrAH5AEj2a0Fz7c07/SSpE5VcpDsAW44tWJ7hLu46QwVUqvlOS
BkB1YLB10hB40guIbDcTrN92fIuOmbTi5if1T1n56GJi+4Cl88/zrUKTsah1DyyqnGBU/DLPqCox
u7w71TsQE6+B5doPaYRwqoOpZEGDUYN/3zJpC6Oc3El1KUssuGXHzAOBxJq/ED1kcaiH/Yeg/rZ7
Ic1lLoIExA6v+Lfi0Qmwsnc5eSvBK5/pEM+RjJZvrK2C2HNPCl6hz6NAWAQxeYP/qPpXeByF0Q10
1I7NYWkTR97V4KZaQGouVqc9k7OOxMNUXRlHdWZQWeF+gbuPfz4Wd+Y+yjfX6ptzKTrRk0mPkUgG
VkI76tqor9eZyAGiUHm6HlqG0Dq8e+Jxvn1I/JoSOTBfsxiZ9aMRnFTl4jCmi0N+OR9oy5M+SJ9w
VgKMC1IY+FCUodPzA+EOo6TJNbVqtUX9xXtuG8SkjQmi3FzeiNNcgt/sHeaOjMhIoHFPMOFKyQmg
pLjHXQsUcFTpeayu8JVzf4iJv6JyeDf1wa2U+FlrixfYAxkDxZzHYThmzmN2VTJNUuBXA0pn6KsG
R3eFsCJss7wKhx14WDsJABlq8RB6T9DbDdlVXFaAeO1dn8CUV63cdusVuRumtVIENfBFlTpsJY2O
FyZV2N1VBTUVY+fKCrw1FRvdPp1Bg6+YxsXKZPN0VLX6E8xPRkiMoLqvsQVQY7+xtsrZNGx1FuF9
eJvRyQXfOVlhcFV/U+sSrVOqCzTNLgHIjUuqiqTmUo3A5Klq/7IdAcxoVEmWawmgb85Ii5S8UFST
4OFMzPgzxu7RFgmgHp9HeHEP060UgabMMcLoM8DmRdiy2VKhLmPh/xHCSJmn9gok56LLOcgCJJ7Z
55hdfIMRXQdLdIIbuI4kvE08K5ppllZI3iplL8MlJkHFAu5CKEXG6zGktHhiHK7BGF1KoVlcA5Vc
ctQEfHU/AyOAGRy3YML1hc/00+1cF+csbAZQBpvl6ux8N88FIxzmahHKpb9lkjKwu0dhmNEMC5nN
Nv+7C8bsdR755Rr86xlRxyCO3VzNqla9bT+l0vvSnEKhDM8T3KSSJPkIZZE0UA/2sRvi0PkHrlqi
MCzpFkh9JrpsHWgcmp2zH3vp6ZO9GVK8JfStuVd8v5IuTj4fgyLLdVxo/7jjdBAQjA/LrdF8EdZs
kccRTUhvheTPFrbReICNRaFloAQratZCwnTTAhu9WE9tNr2fABiI0OAzmxsgGMHgQXAIXcW8s6O5
vAYsHN+kE3DnPP/jwQ1LQcdQnZ1O5CxfluQNDQzulCiPJbsAOfe8rexijQj8sljB4EdCrJ7qQuRB
RxlS5dbkpDbxrSMjF4/RtE5gnhAPzvDNXLqBxQ63sI7RPqxaoUetIhga9erTGFnWZe4Oiqyr4F80
jRvdJNJUBK+w4Yxhqebx+sNINRQ6Lf027wocSpu2Z90IIqgT2qb6fMLMVTTodS9w3zA/E/Uxpd8W
X18wp9fV40rXwQVcqHGUjlBeOdQG/6TYXJIwhXH1zrQ0l9ylAIK8FXk/4R1fnUgibbOKpGJ4qoSL
mF7+2mNnjHNN6yq8w7qc8GCCA6ldsVGjzmTuivcswOV130X5FwHlcb42dCXh3NSLO7pxBLDYe7qk
0qdUzsDVbC+7SKZOqLRd/Fh0Ji8WIaPTHBaQ7smDSjZp4ULdn/w2v1pwS1uCqltHe0z99FHROUhW
UTgIOAP/qAHfDKJ4oEMnYsXOSclwIGuQcDMc/ucljm6uJvfKWdZNscrzJvhN4L+Cec5r6ldIU5Pl
4n8NqiWHt79W83dcDovf7BdJ83pytqahsuWjxjN66IjiJMMpoGD1tjHp1WfLWzlDq0uQGKkTWiLb
rGuTR1kBV3o0EQbHBh+rHqHvll258KMo+usoWOoQiilh6ig+rYR0wGj/zyJRRxmyByyV3HxcLm8b
O8xZTkgsCPvAM8LmbCxEXyKjeYMXyyT0oMgOQ7Qp2EXaseqRKPerYz/CYfsKPg2xJzRDwtFyHpmp
KmqhVEU7z9z+TqRHYfKjW7pcKVuOfdQHhNmdh8/xaZybgVM5cSMDHr2nx7vd6ieMWVplFt8TaGg/
5MIuPJVSMN6PiCbiIajnbXQX2JIOWHguQJ9VsuR8s+tw8SlVnvdSPrPw5nQBefU9TXT4akb4jlLX
rzkWOrG6OolV6frNgPOdlbo2vHijaj8z+mUxon3NYsqb41HDySGOzCQIPcUyjHY184Ojpx5eAcDI
RF5LIKBvaQi9rhbJJyihbUOrL2OMRCWUjvCdItUc59G801uPpSwoLSkyT+ueK+xaXBr19OoWngzn
M9CYaxp7hrRL7HQvdFd5KVA/coLSDMrlkL68jtzabVPhlKwDjwkA0CLTH/wsMBkLStQH0TGb4V4i
2wSTT+tbDuUaGjvjsSuSMLrYmfR9lhBIlSTravaZjeYIhNQG4oZhDgdli8i1KHJ6SmtHtjE2utgV
yH7IgZrP/anxoMdWWRZrnTCOdrUSgB84PASk3FdfkXDdZsizezINYnD2GfxlOU7Izar2CWDGbo4f
0N9ZoiT3ieOTL5H3Ye801EZjGMQcD660P3/TfFtDxdaauwFg+eRObDXi+fryubfVx02yKSQ083qM
DJPMxJXDZfi5gX9LNIhwyTI/FXwdpz5/cCUl+i0HnwkDKEjQaUfVa3icxbhl6bjcafsPCqyRFURq
DS/sz6phwLbM/ZA+7OLxhL+qrm7zDqPnRVJABhPYZa84nY7TM0lUqzUo8uxt5EW6/jbNxecnU3H4
OjiYOB9c4R07hY53S/Y7cfLHmOoDWSf4FJ/Ojny/O/pFiMrhdr5gs2aFNXHF+V7tYCnFqQvBz33C
CSCdJ470iabHZeJLpKdjz7QhUkTdAf+tNu1DpAW9k0eEGYKLX9MvFoRp+4nXAKh/yaesxLbXU0A/
FqUyBUbGtYxkDVjM2gBka0jS337GZjtQMY6tq8+FhoWQvM+tx5JoG0AjRfHto19gan6ccKZBznH3
cXtJcFsy6yv9Bjkor+H0JeIdiIDhO1z1fwt4EPPkFUUEcrErgmmOn3sEb4E9+kBwm8bycJzM6l01
b3zMiyj67TtG+aAFGK46bFMCQL+IT0J2rmN7M2phubIQv/N3M2le8UjQfAhA2cvIPUBxDIFH6FAK
pYUhrpbskZYz5y7nHpSSqhb4B0fV15tl1UfwfQKEWfumpqRjiHGeSok6jxxKvRfGWVvlKTY+6Kv+
Kf/kENh/6psv6WGsiT2khu+sTPI9bcJLfDuhRCyaf8/JfSWYYofSdAQ2631+mgs7FZUfP7GhPL9B
n+enHr+isioqYr/rb/M1gOtIdkv8RJgtJ559LQRvjvYpy2WkxL5ASt/kNZtr/qpOX8LGN52viDpT
DecjJpc+rn8BvtW/a677i4g5grM2FzLuFdELw3ghwsutomHezv+qvP73mweOZgdWFL/2dFBc1J4p
G3tPUEyMUS1B8xElyIuaZuqxVQKimqRPY//psNP9jv+bpWjukCaA7UzvFOnBokci1ylOOJSRUcCG
zlx5vy4YKeDNxsficd9oyj1pxzleHRNMcNgGZiM/P3tyHhW76Wsl/Qoy/PymBsyuRfL3F7Ct7QAH
ZWZ8kOD2uJr2HesQGsip56RmMv72MuvBE0FgXeCfqSylLrdPseWYd11ZxYAQsNc77zTN1pOUF4z1
Vw/77V3MbFYcVO6BMKha2Jn9EdfDJUCTkbURo1As4ctc5BacvqJ1vdc3Ej8azxJYID2kEVBcHM2g
wVHsdumRgdD1LJ6PHdWdZIX8GTtLQhhzrOkmJwKsqfWoKVo8KtS7PLG9vfHKleTvkX9DkOJt7QXf
5dpV5u6o4+tP/vz67s1xiJqWAzJOzTI/KOK2tFzuwwktuUsWNWlr0wXtKIJgIffywtyQGysxooVQ
kzKvGkyt51dRrwXqqrfV7DThz4V8M3OsbsGGGyMdwMAtClA5/jGOIC1ctQFQNZXAvr3R7Dkz/tFe
+ogd/34uJU3lMPJp0uUA5o/SM8HcP7k756KPmXqCQ56XLaqHOoFSo5CgsQiDYPkHTJBnT7FVaTXs
Emy1gnYgtJkXUrXD8954E0cfleao6+WmRE8z3PARQMhhRwYZhzAj+jD3mnac0im4s5KhoR++7ZTV
LEj8EdbJ2113nrDgmS4n8n/0ZixMbz8ZJdkmUoL4nWtdDdZLNA9jzSL8ZNAaCkbdJ1DdE0o7OBNQ
ldurmr0h2761V2RS0ENIe3oF5IsBstQGdnTK2GaG1uYktTeuJX6oINdciY0FiN/i7fe2bZr+ZzU3
s3JMYm2IyeBvNUYNxPzlhSl+HHwVThhbBpNRhXK8OrBmB0Lflov9wlzuzurR/UJbxzk1uI62Mub1
84j4gpFfi4KPxWY9TZQ/YOSBEgSyYY+Y5PMW7Si2Rio+iIrvNnK5ajY62XYWBsNlZThcHTLVVIdJ
Ek66AipfSwGysP1R+0USxTE1AQ9rRnPoUMU5oofY6ry71VHmDgyRMETHCLd0OPNeVSwl8zPwKttq
KwQ8Nkr9UmDTO40HPFXPpmrjHCF9BPooiL8UtgBorxUfYyPwsLAb9GQxOmZ4StdVOVZa+W7Cma5l
MqHvcB0RwSdUkdqZSmQwJI3d2xyz7TQjlavxnWXpENrhJ/BeQS/4VWeHiBCv0sKYZC56AGpEcG66
wVD7ACDZhNvy+fKAREzvhno32OZ4Nk+FFFVSD7bBqrQa3nRSWL2L8HybHnVfkcvmEXILphmauRZz
aN4vwjd+hBVBVpo5rKTmYyOF5rTg/nENY42mi3D+FcSxoAXal0ILIoBVm8wIdbTA6hKX72BL3vp5
NOyv44U/wxE8uVfa6dTZczzpWuVuuO+IyiEwJKHXzeG4LEFeHP8IrUrhXa1+Qj0amQ6YEDQ3MVnX
fqqAyKoZo081HwsOB910lzDogXnKCe2kLqXeIGS5amB+CALMKL11ze3rHhzuTBfQ4txnsSUvTWsO
TwzMZKfQ25DTZKk4VaoBg8PstkxeejZzoWYDbnVLM85/b5vAvGhPL8isQdXXVe1sgZCoh18t19OE
gIcRWIiIFrgYooYy2pRoD/bXTl2CKbefIsF3+dRdy81j8VcdUnXNxhbSOHqquZEgM3YewR5rvmzw
ftgGF4Qx2iorFTyHgQXlbJkcNFCD6KqDbXoyYzJEzJzYs+ulQ1C1dyg7zR6tSPaGGvHgKXRuM5f+
NJxiXMBfc+mYlUBxV0UEpqjpt5zMuaKE/KoxUjBuIfL/aCVMULxOoT+hjlXpTgWqdJKB/GJlECc7
sHPiIUxPO6FNSDu5IH8SWzfD/zIhBR4Y3D5M5cQe23jfH/eCkDq8/knqNf92JNBX7zTxk0YQqi7L
ggEEAP2oi/v9ojNYAuk4F7eJ+KrQN5a1xnPnAi8T1k4R2aCof4n3J4nFE10GTbiAdTCo/lUIwYLG
+PCQWmyEcUMcoNnY3D2k1w2SgkygH6jhArPVubas6eCO77Dohivo/yS4xB1xV2EcJ7KbTEYQ3CgQ
ymqw7q40sLcVipE5wMMuEFxBjSt0LuADkFhAUYfrVrck+q6bXr9rGlPLy1D9HsjxpZxZ0a/dtrTb
j3QrPCvNrTOB3sqSunn2ppC5sBQZeiePnfK9mCu/zTlHbNAoa+pbO+h3LhJZuI1/qZYPoA5aK5ti
BJ3sSVAtAfQrNJq5/rgZEVGiv0Gj5yGTj/wEfUzvTaHLYPjKmBZehEQuOxO4FSD1xXat52gfFmy4
HfA7OHW5osAsVbOYbQXtiM8zoHNZwkhyc18wfhk0dnyc2wG6BVVCXc7rTTbkoUXxxRz61N01l5o4
VO3anUKopmKrynKlb9ycfOEZQ3eleZcpX1ZnzYjsClszgWHm6Te448306Bm1PZ2rlfCVDChgDKt/
mBW9sgya/DfZQNDzdB1XxIO/krsXPIl2tJKmLr21puOpT2mYDXoOvh+vgd/AO1R+al3INzdjfEfu
RU9kHwoHeF4PPq6PSO84eefhJ01z9VGi33Qi16wP1Q/bX74Ayim44RbzmIjrKLFt8ZuEpmxLMGwL
t9Jr3tLbAlo3HRUP42ZGFF3FZ6b5aFetiX+BcVjfgm8OMvjL1e+S2o/GAc4QGd826nQY/7Kv0/00
jJ8hZtRpS5jEBEF9Bpqq7bfF/7F36zNYk4XV20xrVzoPSTr+GYWXYvf+G6z/B0svgnCUIZzSY4c/
zGWjMceutnYzl/pxhD9BSZOxjqFlJKA2jkS3G25MfDi6GWPaiZifGtxnkw+Y4ZNjeRS4Ih2FCX7M
8ldPDxF8YwLZnaYwFYuZ53VUBgBk/+kTYR9Ywx4g/2Dei19SYKzb5yA2QNRy5j9fY/xiUWIhcBq/
tDUAeS2MZsenNzQYvX80jzM+hPP1Ipq0yrdQXJCKWj/DGDdLMipjCSF6TZMo29cuzDCAfGtSRnwp
ZR6IvJuN2vpaWyORd95omjNC9Ahpx+JQrteV4i1VucwJ6nK3Lnqry7lKcSjaFDMQYracxzd2fE1X
vF4rjOwd+ZpNj8Df3muyGJlJZXHZ2e0Z/8QWZli6cNoB6ImgnmKjcmSRpInjknIheao1nGKoMsdh
zS4+S/9miPjzNp0KJL90Pixt9RjoSX7+sKETQVeHIDQhIDbBGY7nhVwrNcNFv/6yv0I3PDnwliGf
7cPABNPGPMaP2xtO2pqjvklMsqq1aTsOarxoaVNIGPshDILTlf2GlF7dS7FlDLqTuLarI7zQ3lW3
qpC8jhPo8llluW0PJmLw0YwwJ4oS2XvbWC+yOuEXaiWrrvsNuwV6b25Or8G7+vz02hR2RW4BOV7d
pDeH1I22G7gD55AXtDAR6sKnllPisDFl10CiIslquPfwut47wQSzxKYKBKT5Vcjy1L61g0jkYFEI
V8Zl297BdTZigvaaP2Vw78KlXKG00S0NDINg1Gv2MX/wbNB2jMyViM8YhaQwJ74QadM9MK+BRy+0
eKtV7//5IsNzgvniGUMXvDkfQ+a1wZwjTls/81puyfTRnr4MA0VtpV0pjz9gkKZi/06r1Nhj4eMz
lFXUB71fzfF63K6/e9CHfMFbl2SyydKAG8h6EQXxTQS7HyaOjV4yc3mWYZarCULwROhj8rqHlQ5l
4L0kJMj7AMI2MD/nSRQedJoOkwsEsCbHHYOZzg8zexYUAPGJvj4LSen/ovomo+E5CxiWc9eVnsCI
u5CD2+Gr+ckivhS33wRd/P16DWdd92QdifmC9A0WTrliQ5oFzbsdQjCY3Qmx1camwk9jSKP3uSHl
G4+M7Cfz22xF0U76qGhhrdNJJLClefIKjdh5TxSVmTFQzrxEFbCqBXF7Ht3IA7GI+5Qvy77t+e1v
tQ9Q7erXPiI6TDyn8K5dKpdpY0WcRDDHDICwIqK58t4eu3bm6DbgOMiCUu/PXtMQDtkXABwyAw0Q
waRQh9+bQQFiWvEXDFShz9576JtqqvgeOyd8B5AXzEdRgr5ZrEwgCgxkEGqrA0VIeL5+J3Q0OpYs
MlFZDKkFEOIbZPKAhhjucGf8Tyki/+mwcSZUmcA7oJYuAd0hBgbntLZObyp80lN/B9g1qq8aMSTR
6JPfeZM46cqg90YEkDHbN8qZYsGX8WWwYwmVwPLQJVSzrK9HqABv1O7CZTSH1ejqzMQiMnHqD8DC
FtihfUibrMhvnyrRRe2VcOwN6cmFoW9tJo31nzlpKvqEIjKheNuc5vyyopD4ZXKUMAyzJ6cwbdc9
hfuY7S0nmxs2ZfNDhssgi+sPfb36Ja9peYPSFCWOvdEpd8sdhXl5Cj8L9BzmtXIszYGO9BJu1ubQ
F+ZcPv5aYmYAfuHI77DtUQLuz3DgbUGu2pKUnbQT9ZLl0SJb65sEqERJng1aD0IqXjqrI0MXy4w0
NKHyeliQKXLCrR4MwcCQQJ47KGy2jfPkq3+nvqz5VbhtJ2HHJXFyqSLWavpNqX9JB0CpJLx/jFib
iFs5ubU46Q3JcpX8pL7HmIghHGV33lEANaJtB/XFkDVI71HZZpxSpCsWQhUtjm0R+PMFICwe+i45
675ZHVcf6SkMWT7PoutP5Fcse0L2JGQJkBhmZ2eacXiRAmWYAhAo0faFFlbgbwh0XJNp/5Vc3H4T
B96GSdazO/gdbyT59LM/TnHqafXkfTgjZuXiOrdh++/dAMgSMx+lp/Qm6MbgabysiayrdYoeJzfn
WEbFLvDJBSAWCIPI7vwMO6SShqbdDVW6c3WyKv/de3CFHdzN2nXs51YRmxJB5Lq1pWbP+ICWtL24
UbKYxDEB9vVniekN7qnofvgi5rCp7clMLYiP5vu7wFhRzmO31nS4kLpZx5xhAlRt7snFUOksdc9J
PaptO2uystbesfVEbD1GkCqGOt0YufKHJ1On1EBnHkPKxCENo25SG+AOozDs9dYr5BGeUv0mxTHo
6G7iKSMirLlciXeNhirXrriqWeEdk5XC8kt7Tpj8K6HyHCkn3+SAOzOGB1xRlOp6+1ikPcAST4SO
CI5Tmj9CZrFgBB6GS8sIS1c7+n9GxS0ES6wgekvKFbU+aKBAbudr/5EMIeuOQOJ2zahxavKJVkuK
dAkh5j4pYbbxc9LIk+U3LBUPrByra48HsV5zsxMxfWYvERIkuFAE8zS9TyZi4tv3/e22MFGxIHdI
r4XommlzuG1zXwBdF03UI/hP2ULXWfYYU0vqf4iPHgqoWd5RLcVNmHwN/0YeYOLTy3U+ULttrigL
bKRrHuaL111w78PEiySzDNfFPrcuExiZSEhPno/I4Cp3uRVkIEpCpey68S5rOLELWTzzqB4nrmZF
GNLK+DSj62bBcSLIu2jHXqFSswKKL4Q7bIjTE15O9ankLjGhFjm1U1BchtiEtW4LMqUvQayLBw3O
+5zieExxqBuBBLfY9Y+s17D6sBal+oWgN7DbzdEybKuav2Tb0iH8NNvSR8nm31xFoN2lqy1KQAya
95p+R9GHnPveHtl63DR0cDeRp+ID0NZVvUa+VO5L8ojzZ8oIesPb0UKgiot1CL0OqdwbvLYNt/En
EzNYFVq+pP3+Lazm4ApHC+JY4vbITP6ZonaDikGILKx6dQnC32H60h/Bx3n0Iox6EdQGPUe7AuuR
HJ+/IFq/uCJOJtCYZ8g5KcapSCzIxB5Gd3c1G+AbKCe1ogd+cg+A5+4dZBZemh2YAd+yJozDeq46
IDlxgverItC0foODIYzNTrFPnMsxXLjeKs6hWikqd3uQsz7rsHVMfusjpqr2unPtF4K1C0WQ9T0U
Zv4xQ0Q+CwA4vZ/uooxyoGq57bCFWhTy5p7s8BtHNPwI4vQtde2Ul/QYOy7783MdmSMifT+OkVA0
JIurGTAbzeQ1UwUCAGPkuqvaeygLmUx650kpGaDicqZil4bViFfJhUCvCGEyJmoPBlMe/E3P+48p
xh9L3xST0G1LuBHjWlJSPuacVmH13AlPKfh7fEBH76iV/9RGd/J9bl0KcRFhpDE2w8oXR0ONZKjZ
h86G1i/TGxjuoV+47r7BdOuophSK9g1uESojDd1/ibCWCuYU/wPDiut49vovewfWBNNylxJmkLTN
v2e0uRNqMrx/J3x+EZaUfsU5j8BjRoD2EtKK/qAXO1fM4PH6beu2tI48kdmHXBhyRosneuODsqLG
5556sDcGO6IaLORCKy9t/VRFx+F2SaBycD3DsVf6Rf9Uh76GNTN+3l1OBZIwU3ekPLSf0os/3dOm
dvkcyQS/uvPmVV4FvkqU0RMjL8u+60i6Wvq351tXRy5uTIeWDlk2ngPAdx6bt8vplWMFIZILTwU+
rYiaoi/E4RKvUZ2iVvPyPhvJM/UGHnSLRK0NzlE8aM9paqdLkLxOSe1dS8oL4H0BZe579EWZsz/g
Fi+cNn/NBRGK8ebpf13D8nNjvXXtQXQBh+gA9klUEVhzYzkz5AWlSROnDI69D0v4Ji4ugF7xQeaQ
gTZhmZ1GGMH79V9gDfRKuDL5E84kCzzTYlupz/8lt3Gip/2mIB5vMVZiQ/v8fS7s7FliDEgoXPEc
WNvQnuLK3YBYQDegQevC9jEcgHwZqen5xV7Kd+tnUMbr6e8EMog+DQdygtZgBlwYqeowr3IktxUT
GEjt90MNVz6EcD6pYqFI7PnfA+yKkgWBTTI4/wB223M/gwA0P2zPF+x3qkPXA/AtiHb9MeYqNt8u
hE0E4TbHt0EwhLI3VMlW4BH3n6hH6xBUJFCHRjd4Dn21RTzFjy1RLamCVYEDBvU6GKsWfu8alH2P
P2u3KIG813JgV5BwORKLvICSJ2gT8xYQzFTKhpTDZKmUndYcVowOc7dE5FMw73P5MBFRn0evu7Iu
ORL/juJM40YPLEM9AxEB593BBi5/qnTCJDTaOSQBuKavu+1noPqJeuLKnDBMWbol7WdyKf0PiK81
1ZeshRmUd+a+D4wujdbKOMGNS5TuewccYtcRVu6xkac3u/WB8yY904MO63YH7XyZS8XZJNeulFuo
bWB4AfLcfd6utxVgvWd1HwrlL70VHjf5EPtg3bVITe+OtDwz2vLSiBJS7zFShgoy8yQvvxP+W2rp
4ng/8/c219fJICUs/RqvEZluK5ncwYdOzgLfiVLWYktxS03gHBnDD6tDnSpAyzk0rRbkoE2IYZLX
f8WxkXI2mMM6Fqg8AliX7KW+FfNiXOIyToSLqk4qIFve8YeHUp4ASCLQVf1cSOSSF8awOboHeoy5
HXcun3oI7TQx7YEemsduxqqDqj6G8t8TBViZfl9oAbURjjLa3/wjBHbiaBwm+twla/9tzNy1Ag+7
7wZ3QG9xaiJaqf6iAFMavhkLWCeQRsrnm77m6dpkFfgQk5xYyZ0U70KAlhNZy5f/+Mf21yj4iBv3
R1WdBGLZVzm1UWTV5jGZzKeTokgkwEWjZVH3EwBLpihwlUjlmTj/bXNfjRdZmMcKCLa2wyDxtXrt
q4pyEu5yh77jqS2d8RCh9QBewE0dBSM2LDCCjdDSbnc0RmNKfGRFIFE32jA6HIAvm3tRnsvfjGMu
0SW56Py0kq5OLotzS+4IR/BwVa6Rqo5esKiDbzbD79j0bTZB7NCqajePA6JAMI9UaP7D6xdcZq67
srjcs0f7aEJSQCcjSJ5xSgPgoFu6YV+xy0ThvO12/GaWUem/gtvuhPecQOGrfCYx00BBay7fPm2h
ZJ/ExhEfI+Fb/DQ/hSEJKoMtLHDuYwCFAlp4r4+pzUMrc/Yrk5chmGl9Exds4rdLq0KEZhChriIP
NGFIzQF//Ey7g9UcvVRkISYv8KsIexBuswpxYPfncH7zsHyyZUBRynL7QOI04UVQn/v4EbM+mNn0
1aqmr/qOJDizcIi7KNq9a55XYavoHLjT7ZRcug7D23ksKC0yhZnTDLoZwhrjdRnEWA8rU+5DQfwB
okGjo++pBVt30Nw7a9DrCnlc8WtCBjtjqkDhSOzMLHz5I19Z4guAs2V9TSffh8Bbo4E70J/53avv
BG3Ri2ww3rMeezFJoZKM6A8AewVTMA5IeWaGl+Edi1tin/U9JtJ3V2QlUjGD+nisVrrZfcS71Jp1
+rxlCeJJYbJOOJzXuGtqL9ukocdgvlPngGYkgkpaXta2WBSCgQCbBar65/FB42BjVc1JRrayYs9q
NznJOH88ggsMCbvGdQXyjO3xKMSripLJLiRa+nXJkzavD8QMiPObXPe0Pshbhp58y5NcrdToXCLT
M/pB2HPF6yKNcvnnwjX0K0fX5R4w1fgIwH0dTM8yGOC6+u5Eu8+RqwSqnIzJ6L7ehp6KZBUg8d3y
z48AViatJ0KdfyTANRRaFCds4t8rrPDUyjOw/CSsCkaLFHw/3JjQ1Bi+hBgbNhLV7J1Bv+6zLDOB
hf/G2Z45VYHO58fRa6gysa+p/5bplS53zmWgLmGZ5OOsls1gLP283PWBfAeICCv0xyv72yki2vPp
/6SCAi8bE3eKKa5mpcGpzkZPNKBtcmYBV8QJW5G070d7i/eQoBjIOC/6u9v0sA21Ncp4vV4I7gMM
C5NErjDMoNEdQFdtQJmDNcBKaP7DbR0Itc5Gy/taKTIQcMPzmTUK7KRhpQY4AdDamz9d0ydeWj9f
oCc1q8EuPy6rVCZUB+amI20ily63p2YgikmZ1yiEXCoI7mgxHEeILmNSGQPwIo2y06qxQmCB0g7f
uOhrbf5B1/YNPUZa/anF44Ml+f60LHtE1OoPFlriXe+Umf0qu0TivY9p5yUnFlqeYZJZTjfCSoag
aBTjmxfASOcjGSnmIN7XXIMw3n90SEWuKm9T/tdjdYFFdRHU7Eu9eK672K5reN0RwONFY3wcGWjg
fsb39LYyn1S8VfZsXmGG8ztVzfyxjQE7hrQSYJk7s+XI/pKkL6BFvyUDKixC5PtOcMyK6Vg2/CDp
PdcUex3mcCBslHC17x7bTSvDiUWeootV9EUR7juehHeFOplatm03CZT7zk0C6Nfyge28jaxIRGcy
Tyz6+GT9qAyO6+KuBDrVpHru2DB1Q3rJDLK4jLV5aG70qv+f7CbKU0l4OqPX7MKNfMx9OS7O2use
LJ41tiIRD7YPKQbho0UELuxgo6CKpFofvVx7WLJX6JVTtY3AA7yxeqXtHW9fYAadVjrc7+vh9nYB
g7TMJQbEGKQt8Q1Ezd5PthLdwg0+qw6/HBJl89HWOHnOsLn2pmjDifV3MrghGC+b3yIqz5Y9fgNU
FC6lwGsnb3Be0aZ5KKTZNAwqrg0rk0lKgHOOvDn0KRF1uj22dlttIQLBZ2/OEa4WAk3fPkpZ88t+
YkY2UtAJt5CgfmGtRt6T2d9yLkR5RsmmDtiJaP75JgLJyMJjXUVJWpqJursikjGv2Sbk5mHDosN/
XCYjvVxsmwbKncAMmvgpm/qX0pl+a6azMCYP2oAoeR9E0cI94Mo6S6Onmpe39pFROqYnsfRGwYri
8qf+lAimuH6DV3DSXppvjBW2t+GSJjb12iQbpkneSO6jjl1V8GnvoC/XM1w8yL+2JK+37lGoQu8f
i/cKTRJuJ9h96ZCjr7pgIyFcgkQNFvSqprUgdgQ8lVPEq6tzTxMRUEWbFa2CwjB8blJeO8iOfc1U
42PK5GRhf/V9CeujlSjiWaI6lrOmLFxII7CY/MS+tGvhPEl9vXynkop0Y3AgW9iI3fGYj/TVS4ic
4OOF+QVQFhwNnwZrFkUli2bZth92m5PaG6gWiOluOCcTd4XV/A6ENH3bgK0l9sppZc9hQQ8v1KMa
wGrh0yiskkF9BKF6UV1V3nSbf/z33qXkJbg8PBQzjfkvxeBTO/fBz3WP4xC3mOWSfpGlW4Abw4ua
TVvxXeLzQtlOHQX4Ue4Z/AUbuQBxrQsbx2tyjDYmMNT3ZOIAanJiVwDyTpF7QiWxjnhb6+C7GiND
x9eySM7A+gweTnBw3GzEKbxGGuL2/X/aAf8IxkUTKlhCL7/zlYZXxSJLUdfYOYH5NckGc78lFP1+
qaJpXoO3yy5ayKMsVH7TvXO6NI537WUuGRF0GP+xGfSJlRWEqflfdxv72z2SWIlKCUBjhNXGUVtz
ofSxUUrJQo/PobUCH7ExTZ9GfDqTtc6AzSwxY0R+QS/FVKRWjdEujEyppMy21w5+5XTe/ZfjO+NG
bC+WW1cgFNiAWjD4D5t2mD0fGx6E3UFD2ciPMtI6u0ICXrtocuqDpJClNuaAPD91fgJ15IBUH5vV
tQduGk3Rrrh4SfSObs9s1Ep214zifi5M+jaYGVsXni6JYHmoxTGS426iET2dFWGCLKA8fsQXqxRy
knkPrx3MxwDhG4MO4JZzAqm9hu43Wmw72pSY+qj/bBh3SmN0ldJ19stXZz3QceEuduE+WjPBnwPa
ObwnF6qpkUl1cc48QdrzAjqzHKc6wbBLuj0+ZncQ6XPrSZ6qrxc/C49MOqNZ+8UhyuXEWi5nNlA8
PwkTljluPG12LuEiltckKUe/agUcpuhRYqmIquO7GGAxeajaJLOC6v84WP+bjKfsWijbdcl7Tf+P
tjmthPWH//gJAnd2R6oDUh+XRaQ/YouatADMOKXlfeTKf9IpBQ0sPhnmnZyxXn1kHvMoJaOpZRRB
PBGdT5K4T3Z8D3CPjaQXIj1p6ztCbUsAZkyRIhsVAYrNv+sJCzac8zyeS9Bq2IazY1UP/2zd4+Bw
c2WFHOqBYJJM3T8pU2urm1SW/ihOKm4WlxRXU/nrp5OxTQXDzxQ8tqTUsXYLf62PE4s3QJyjFrnF
w5apokPU87EMWe1uTonuz+i0SQ5nuIs3vVU4UCvVHfwLo3/zKtNk6MyK41ZIyYeSlMxXBgyoSbhy
2geua5ESJf/+xi+MDGDBICX1weXxJeRTvhzQdaPjcEJYeBlpYq/+18APRU0mwQVFLd22mihzCuq7
rs1B3Xfqmab1kX4sdqxWEVVIe3HVb8adKbNgsWn3hCy5mXsGX3gl0FeXHszvwjRZZFWkpPANvpIz
Ex6HW3qRfZvSA0TkgR3FRcPjBiIBdA8zQfG7U607Q06uTLOadvM2c9lciseaPJiWNnOTfrUNg0mz
upJuxYnhhOFxgg8xitNqTO7xPEw4y2eZjuSPqfjKYGEekd+Yo2dropbYtx8jtNEVjMgRhXi72qSd
pS9Nv03qDWJQbBhAkPfrehIOmAEunabzHe4e5Yo7QTZFI/FdZ0n5CL295SX195nFQDmZboF0iIzV
IZr7S0KOl0OtLCdvyMutUpCMdKhV2z6MI8DFnN5CR6NmZLbRzYzZTyudN5rJKK+rWCEHVjeVb1vV
qj4vEjNeSST4myh35ySRf0+okJGM52EgKqn6Hn7cqEu/VsP9sdfkQmeySJP5v+vffubxFqa9yONI
QCswfeFfbkMGtBNXKM5aloMx+Gc3bRwkPkuu6Qns4OarlA9WiaUu5eYarxmE0SW32DIlkeWSZ/DW
UcUYN2Wlfc4SxxYvxqw1nJkkf2ahz3qSwKv46/uZHWtxU0acJUM2LdLJonmlyywKe9awpiBM+CYT
v5J32bjEYM65qbrAynNT1aQ++lcQFUWaK7y7cWBvrjyDbo9jOfHt1Xy65cHUZtnTt41wmXnTZJwd
NiRnK/yQhNltvX+txefEgCjlyKFNY38PRqnxpbZ5Lb8kCvbh54GNmLliEaLs0ZxtQ3Wt/funGiet
k0gUbQb5X0UAO5qVduJ7MGLAiA8/HVGQp08v6vmLBMmtvEPzeJhRkahgfL7kwHUhH1Mi/7ch58z7
Fa8EnBsr9Fw09c3sGRD4d37xdNctZoHMI2j2Ln4zN9CkG9J6nlMtRjqfbBdatGLPxfJIq52HhJ/E
czWCFfx4tW+VoYLsO1tMP2jo66bJVbKr+RtTajERI9Kjeav8mi7qpcO5ajdBy9vDUxQNcUnW+fVh
sgPAcYPEUK9b1R+KJh696ZrDWfKjvYPwev/04agcyXeIfLuHoBQ5x9hrU9mrFwGNQxxgSN5E8i0k
uUPD6yYUd6l91krso6aKYE2hw2SvWSKZTV7lUknd3P+ak+R6bLzMTm7AMlC9mvFZHM+WQAiHwHNV
1OkEsjMWcs4MVjFow4SZz1+v/wrMhUKzjvEzKINiaq29yttXWrEozMilW2sPdEy7BAqq2M4Fc7zs
bGoaz8NPsLVralVjXFud7iRDRWqQeqBLbEQpjObKQsrpLXSdrGgC3Kf6vTf74p1oOAJdL3SIK/Kl
U9GLYytyqApX9AEVgVqslW+QjdMZlxYEsiJSKTRJWP+9YSXl8AA+hghUeZ0YDwdkav2PJFUW2UOL
ehIHNlOYBw+o3lkwGKps4JhY9PWv5Dn3Sbu6UIiYr8tvpocx/SvOmF1dWserD3RQPprawH2IvhXE
aUcxIBgcm2Yn++0btUklWiPNLgvpdgPI8UGu/NTFQypfegl+tmYcG9X6HhYQAc193J2PvS80sMht
v2qpXc17AqQM3KkktvA0chjGvduDYX64AS3X5lV4A2KXEp+cu/yDN2nf/bAorZvqJGRrKUJ9lUof
F2Twtfkj5QJJsyKVegH1rAYN6pgHEBotD1ro1HVHUtXJ8jsZyHWxNfwwzhxEAe1+B8BskXDsFEsa
Q12zyjzGAvJmlTPrgGeK6tiFKpaTcidGgCS3yuXMLEHzSACpurdFvMMck9mYIJ6Q4MPDHnrZcND6
YPf21ehYZTGiuT2LUJcssxr7elJ+GjJtLpOCCcm+2rwL9/+nEit8JtH4t45savKBc/sh6X9apz9P
nccNji6ZehagcTKGWU4lXwGGkzZihSnIQLqISOmrr3CZzvtYuJzPDnGNVHdDTG8yTwXsA8DdcMwG
RlLUtzTYF6o7qXKFXXTm1LyeWZyp1hNtwuIlO9ZLjllpQHbBnYFyasZ9RoX2HzIcs6dMwqG8DaR0
C3FrFIykdMZgeQJNNFe5+ovd2pTuZqYQZK41H20p/LHdjucYvUq8YOejtoVKpGtgIIc9+QveMkKl
anTNd9dUS6YvoTDJf/yQ8FIKfpOpD6YoeCMx1bpptkd0ZSPxPZYfE/f+lV+NVinYEboaroqeHFXM
4EP24HUPO1UA89D2MWWqkTR7O9fkn1b2mzH1mS6DZYMA4poJl8zFp2Ai0k3+7/gxikhF0eFnpQw3
H8yVvfAbGIHh76OA+fTlBg3rT3moQPxx9Ei77/klJ0bn6y/UzKNo2Sh0rWFLPCmgojy0o/KU+rq1
uMlOVzvsuEd09VuZhZ0ZbyQgxht/6aT2dPueRm+ducj9a2e4xhQRUd6Y905F9I6+VGkVf7wRpf8C
Vo7Yc/2ATgcLLxWhWsATQQqV8EolRvGi1oxAhRW/xDddFEuyWT/BykYGMo3M99PcXjmt8KBsg3A6
4OVU8KWBlNnhZQwAmiim6s1j4WEKD4vfRW1kroCx/eYSeny8WhvDq+6ny4cEL8wyF9EhjVEPVvn0
zbQLR6D3xz49G9rZI3G12/HuPh4Lbb1mgJ0a56+bUaTH/valK/T7pc+T/GbwnsSmP3GVAcoSFDOK
3iXsCu86TMiFp0w349nSdLy1+zG4UZ6YkK30W5ZW5rrzaygmiTSj+YkCNfEzIz8/658fwHPWSGZv
h1erMFg8Nm8HzobU1rlgMPyKGkNRvV3/jcAYB8pS1RtiY5F5QBDBOON3N+AqfWnP+2kdhNBoeM1n
hvcycPPH/TRjK5vFoT/ecjq3Z/sLo9myKg+Fbh2oiYgD+azGBuqKuyvD1eLyuQZr4E66ghKNQvML
IRjEW4s/TSZuZuUtm9VAEp9m0VhZ5zlgghZv9ibr7nZylpFsiNIDYQ3p4v98V9PWd2TkZNQZX7x9
6Ktz5Tw1EmHHVFURz75ErzppS6/eab7OD3gkHAqawuNLVxE+OBXgBVtkQc5ZzwlXwSEbzHB2y1Sm
gSsgTl2FWXn9ZeTkdbsn1Oihw9WOZQenEwh1goXgLlCSj5SxKUrBu3HJXic9EMTeeDqbF+Dyny2R
4fZB8S6G13WO5OaPYEuTA6cMzjokyrA9FwYiYOlkGVqVO3YOOiaZZfldRWo9IZBQLicUt+DXTlr/
NKAfCox9v8i/JYThfXTWWy9XAcRj2yix8ayOS3z8tt6nX0Rm1WYdoI0Ge1fmQOs/eYnQiyPXP5z3
DDMr6x9mjWNKMaqOkpX4XFtU0G4oujwkZEFxDY+dWQiYekqdkZD9GCXrACCp0xlk6XzB+HUJCh6m
W/EAZeDZ2B7zCPg+VxP2WRRPowZuWkQdlXAgmwrzO9OdjLgjWsEzG4opH7ibSIaiVL/R0rXxg7Cv
GBAA+2w2H76/12Vlrkukwg91YQNPwqyYuJEvofOpvYO+rIc3gMerOAxzVJgLPVi9X4NGuJ9ZLutA
ruFMJLWpNdxr0ywTPATI4bsgEEgTnYLpQCu5W5fZGZGN7fpoNf2M41tqaGfZrqy/tl0jO0lLOsU9
ZvVxcTjCY3vJVHpy9jsrpZFe+LHW8qAI223Hb0FClIpLAdXV2ow6fz1NIsiN2rdYYjVsCvgCA6hM
Wl+zY8Q8zMbUFRhSgD8HRHksv3b8vLfRv52obQ+ogCvH4CgAWAsR9JiPfXhcjRAXkRBFYTL9zr6a
X58ODOG0tkcY/sdsAk3fL3MSqN3A26AwfLwyOmi79EkM4TkRIjhCXy0BrDX5WS0WPP2oIVEb5wK7
bJKrkV3SVONcfyfwPg2kMTvFxRXpCJ5Zho2ICc1p2O1Q5GIZ7fJgytxlwTd4cfVxthq/UQfcj1wb
LKgZ0ruhiPZbLcTdBRZCcWSwZxjLPAZ2ao298EVj5vnV0QRTZHmgv9VdBwfsGFZQOR14lHU/7OXf
dVKiQAOtqPVBR2HTfVvP0rYNZuyBfBdoEqHU8qArDP+daypL29aylP/qV0X0l2yE6tNVgnJgLt5n
OJ28E2nC51UXOcZlPhlILpBCXNiQO73oQDHYiIh171/mzCNu4BKqtYiG+lgr9EuTmOrhoHPDAMha
xrdjQ7H4v40KA9lmjgIyILtOx6clGPvLSeZSHWo6f9Yr0WTjJYq+C8pvqibk4QqI1aYX+dLKVZrP
/vqMinpzgB9+cW2HIvX4Pc9e2PZFgtp9/yDDFxpFZIAkEO3iU1rwm/B4cobdgt0Wd3EWqsCcag3U
cBfo5ELZDEndEGC1+CgUWvjf5q14Vl1COfOtdsXCiTOTDPid2/vbrV2vjEwXc/9wIuh2qO8f0BJ+
9vkuoOMRvESnp/My2xbpnuoNXNPVqlaGOTWb/wJanCh7LQV4So+I5VwVVDy8/EUxPlgjXFUP7SYu
vEj6mOBPYrLIC5doM5wTeXBSFbIRiGfVGxqqxGJPulc8rqoDk/FTjdVhwttcNreGC7vTGFizYrd0
Uv/BxpzRwEpCVN5fL+hbcg9WmWrnTURLBNipNkMenziBf6/qMjoCJYOytGovyfAtBvql1Y2Mww7C
Nb+NtH33Ajnc5IId6QPjE3cWjkc6HM26Qpx5ovjp+NpMiyNrNy55jMDm7PTp4xv7TUB0RRAxWlmm
spbhaORUq05rB22TaLVwBV9YJg875SeHk1nWP81FMjLngETdJyyAyR8Ppti8mi+RrRooVOvgWnYV
7NlD8QuPoy8Nu1RLhgf0zbefc80nLRmy5DiFo89Z9FO7mRfyYt0JHl3onppT03jWRaIWqOkGmJ5z
XTTZb1nijZe/WUr8lG8g2TTZRhUVkY2eEeMYi2hOJ+ef4mQ8lGd5m4OEwjxtnC5CSKpvUfIIACni
PNBWaLZOqqX9DhjT9gbjT20DGF2AtUpzfYKK0py38SWhxfgXyp3W7++w70Hu6hoKqTrpKQjfkwXP
rpff93V0b+wlGqRZuwQwnLCNk65DRa4O3/Vsy2SGaE+7gcrEnjUu+nPCQMu7isInpo7yUcG6xlRW
s42PXCQC1Npv2DlNbHA+E6bFPaVt0meFUo0HSSAdYJcUUPLE7ljc5VoxkMMfcAw+Y5aQpBXB/r5S
vkKXi6p46Oa1lJgv+iu//K3jdUQGuHvG6obpCjW/DNO/TdAcLTKRkhTIJ4JwCQStMCDU0U1nAMeU
7cMDbFMZvL+6YjNjvn3Ox9vRgWz5YOJtKXmWDKB77jR2EsYoimO2relAx/fke+gHOUNMtllRyyEF
Z2NZnldmwqVvbhw40efTdukosSkRiRuYs9D3UGsujIjZaUVzAVwfThrBT2dmwJpzQ5qq/ELJIItW
b//juFn3NHAqysbo/1uY5WerJV1zWgwAfmVg4AG811QNYxrSHhDkTTf4aPn7f30hLvTgxCdq7XXI
4+hXaz704jE4VZoB2uU+4H4X05Xi45HmB0zOZKqojsx2sJxTZY68YtXN+ZrJLKOzCREaZpiV5h92
rFv8IXlnyNAD+EU5a9P+E/uy4FzIL/kaKY/sunxo5ZgB9HBJgRGoYOWTAw0BCzkTobVbbPCz0Htl
IOycBuALup1/3Y6fvhkf3hec8KZ/cZpOWo0zkUNjPaD5ryIwf3QpFAU1z0FIGWjMqNdIsJuLZXhK
N6wNCJ83Ok1oqz925cGzYAaJCPMdjIYTORC7ZV2kD3zoif8EPix4A2WkEawjwBaNGVeGxQAh4aj2
UetVDHXMi+AsrhIxHCHlajcBAh/OlGHJV1aRo5AfhwsI6xD2rjujiJLraBZ/1LXdUjpDhvrl94jP
2Q3SWcqKiFcvkqsuf9oyrjnJfBdnYNte2nZcGbKWjgFwPRgWEnDTt5dJvLSFHIvtC8EJOb7iWqEH
jW6fxOwjUcld2wwprAe7xBAt03/s9h5Z+idBPe/k8NSZY4LhPcdm75IpE8FYW5+a5pP+l1X2TSUX
wP7QcDPXdJQcDq3d9vjbbJwxGIPudYvqXFHrdPXSNR/EpCrv+nbNVVpmb07gHq+AYSMmUdyW7qEC
ODpDdGdWATxl+16fupO3NILq3eaeJlsttRiKkZGxQ4iAuN6azcqfm5GC0HZb9ekweKhAFDWLyDjx
5X+YSEO3ZMV7cjclt//wzt82nrnpvnV1th+tJjKT5bDr9q9cmKLueFLCYuj+OPjosyu1krFD8+gG
EqyB8Zszb7sw7vX3LfnjG/oEMmekENSYwxtE9C7ovOs2IlmFwomxLsNPr5qLYYnHzLQJw8tVLd9s
A35nHnDzGAkNy3FArP3Fc45Lk99dF5kQDPQa6e03VBwp7Il7SLEeoO1dmudJSW4e8wwGl34lsiVi
1NrQuScYlxlQo+CkDZWpxlI4L7zbxJUGZ0u1u5v+AoijjCaFrJmaPxM7PdEPsy3FKSeIjhemkGun
MNRSwAnG4lmVozfW+sWjQTbq1jSK4YYhBGMXbOxNI1RkFwMFMSfaLcfb22i7GJX4Hm5owr/zHxgP
Qa/QMDIFMaBlq4YYpKaz4nAtXSB0mIQwNzYVpx4rNuFZsr1v7xUGVyySqTg2pwCHOUyzbvseDtk7
7+feCp0AW+wt7j8zJ0YooUKxiMaSV54yBl8CmOQAjF1r9DRhw1PIdsUpKBzDQtsl+nKw43/ZK/pf
K7ePxJmic5fRwAsQz80jbj4eIsVcmULVRtwtZdX6yFfGQrXht8BiRn5PPC9gi46QYlIgRK1Jn9IU
q58NvNNqCKwAmAgD3oijfcdKRkCRLLR61OROgrXq7oIchRXiqtXjh9oHFr0Uu7ltc/+SEgkkm9Us
ZSrS7VP+DK3yOL2zq+ngQwuICZFsan99UhPIxCcO5BP13/SCHtpS7+QrI7ArjDw7yFR+x2l7zNk4
TLlGu42gVU/umaibEIJq/SQYwUMEn+sh6qgE+XdLXmKUVVVwLSAMoWsvVEid72q9q0DgyiwmD4mK
t4M7ArfdgCJU0+MUhffySX0rOoPs1PFwSJnQe7f8flMBDkCwPBBaKA2V4e0YJH0XYFhMHBZC1mnz
Xd8pvnp7FmOH1aD8I4wc5xtNbe8LFoMBk7ZZMg15YjIZihaGcWQcD2WqPRoWNhhePZy0P9JoQdH8
PHEgIoRW42Y9Evs7F2BQJ17G72vxdfVaBcuq6+gcxR1+ZSX54AHnAP2l0TIpENa7F+PQJ7+Rg342
cOuPecmD8LtFHZdFYvmKU9YZ9Is5dbY9YrkqZEUtizrGFgHnMPIseFOMJeNpwvHEktzoO7d/pXI5
5bgV2FBGZLqdWtsXXStPgYjy+yREpeKIOClBaEKuellr8/MNu80m38Tc53iXvy6/80ULMcsw+ng/
xPc3I4q9UjuGjOnZvjlRZTl505pS1cVe+flihQh0RzvvB+4JRU3L+oFFkNt4YXSl2/43hkJQ5tH4
4K0UvWEWFI5Pmyqhi5W1mypUZS2oPeIfRE47iGiX1ASaKgbjO/yVyiINYjA5rs1XUGBhwPjHfojv
T3nh5w/xGPsR8dGa/4jrTuEdDV1+3wSPYQBwUeNBobAmZ6a0myiZmCvw+TLjM6GhHA/RcNvIKXzp
EUluK6stCA5eG47/UwdnZQjYJNa6ZEcf+NZxuyGPlQur+r7ppVSSxuSd/9UsBV8zeaG7QkL5udDr
Ayk7++x1iDf59ScTew1nejG+k5l96eJ1fK1CwYnmsOrmnyav8S1/5riht7y3rHPV5XiQNFA4rkn9
krkbTOvLSQcCmMEBmgGYBU4PWY+lkxlEK2ESIdFELbpVd+co/bnYQ66fEFpki7CaXKnFddusEWgt
XgfghGVjRwKTx4GrngIkOSqLVGYWlL4XC19Q8ZnI7/dfz+pdIs8CZfyww79C5SAkB8Bx7zPB7JhA
iY0CC/0Xf7uyZo/uOq9RtCIVf+4RnMJ+LFbruEuBxB4MrfePP2YKawSAxu/xmanctAVn/iMi9g6T
g1oFN9oTAFwE+zTf8DlHbwqpQqTehZuAA1zYxNSkSlKs0OVW0T9OBYlVJVJWLXrkfIYFG94QorXz
5PC2QVEZwXqzwzflZB8mnD2B70V4cvnFKj66CBKnM/2WPSHJoOpPdnGnR3zogsZUGpAPB3T0nE1E
KOdUxyVRerGj1YXJIvDgYnVprBenZ6+eNTf68lyBSneaRZJ9TBkg9tCK/MaNAREw2+k0KOCEDZZX
r7dqWWmthLIcCc3ZC4/jVupiFfHasNTRtNcxYmUYCEgEdVhSLVglOX0pjbDSB/QjU8k/4RW9uN/6
VWPyy8GIMG04eUVOQGvXs0MY5zFfO1es13CYGvCFGeDoJbXOh29BMhaM++MyNJLU/HUYaebEiKhb
HlsPWnLLOp93OPQTcPnaqCb2zPmBVgsXPNi9laNWdO/Tyg==
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
