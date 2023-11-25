//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Sat Nov 18 22:39:03 2023
//Host        : nuno-HP-Laptop-15-da1xxx running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target design_2_wrapper.bd
//Design      : design_2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_2_wrapper
   (addra_0,
    clka_0,
    dina_0,
    douta_0,
    wea_0);
  input [31:0]addra_0;
  input clka_0;
  input [31:0]dina_0;
  output [7:0]douta_0;
  input [3:0]wea_0;

  wire [31:0]addra_0;
  wire clka_0;
  wire [31:0]dina_0;
  wire [7:0]douta_0;
  wire [3:0]wea_0;

  design_2 design_2_i
       (.addra_0(addra_0),
        .clka_0(clka_0),
        .dina_0(dina_0),
        .douta_0(douta_0),
        .wea_0(wea_0));
endmodule
