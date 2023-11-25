// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Nov 13 15:20:32 2023
// Host        : nuno-HP-Laptop-15-da1xxx running 64-bit Ubuntu 22.04.3 LTS
// Command     : write_verilog -force -mode funcsim {/home/nuno/Desktop/VeSPA
//               3/VeSPA.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v}
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
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
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 18816)
`pragma protect data_block
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
Qv+CgNjd
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
