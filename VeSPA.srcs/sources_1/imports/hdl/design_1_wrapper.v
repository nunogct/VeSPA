//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
//Date        : Mon Nov 13 15:17:38 2023
//Host        : nuno-HP-Laptop-15-da1xxx running 64-bit Ubuntu 22.04.3 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (addra_0,
    clka_0,
    douta_0);
  input [4:0]addra_0;
  input clka_0;
  output [31:0]douta_0;

  wire [4:0]addra_0;
  wire clka_0;
  wire [31:0]douta_0;

  design_1 design_1_i
       (.addra_0(addra_0),
        .clka_0(clka_0),
        .douta_0(douta_0));
endmodule
