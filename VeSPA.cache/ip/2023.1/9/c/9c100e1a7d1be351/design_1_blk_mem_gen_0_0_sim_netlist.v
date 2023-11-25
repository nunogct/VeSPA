// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Nov 13 15:20:32 2023
// Host        : nuno-HP-Laptop-15-da1xxx running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [4:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [4:0]addra;
  wire clka;
  wire [31:0]douta;
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
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [4:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [4:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "5" *) 
  (* C_ADDRB_WIDTH = "5" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "32" *) 
  (* C_READ_DEPTH_B = "32" *) 
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
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "32" *) 
  (* C_WRITE_DEPTH_B = "32" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[4:0]),
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
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18720)
`pragma protect data_block
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
dmVkY56COQH+BjEgt/Dtg5nOas1QB8s9
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
