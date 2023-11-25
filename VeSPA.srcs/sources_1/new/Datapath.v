`timescale 1ns / 1ps
`include "DATA_FORMATS.v"

module Datapath(
        input clk,
        input rst,
        input ir_load,
        input mem_write_en,
        input pc_load,  
        input cond_bit_16,
        input st_mem,

        input [2:0]alu_cond,
        input ram_addr_in_sel,
        input [1:0]regfile_in_sel,
        input [1:0]pc_in_sel,  
        input reg_write_en,
        
        output [4:0]opcode,
        output IM_OPP,
        output [3:0]cond,
           
        output Z, 
        output C,
        output V,
        output N
       );
    
wire [4:0]rsdt;
wire [4:0]rs1;
wire [4:0]rs2;
wire [31:0]immed22;
wire [31:0]immed17;
wire [31:0]immed16; 
wire [31:0]immed23;

    
wire [31:0]reg_out1;
wire [31:0]reg_out2;

wire [31:0]indx_value; 
wire [31:0]alu_out;
wire [31:0]alu_in1;
wire [31:0]alu_in2;

wire [31:0]pc_value_out;
wire [31:0]rom_out;
wire [31:0]ram_out;

wire [31:0]regfile_value_in;
wire [31:0]pc_value_in;
wire [31:0]ram_addr_in;
wire [31:0]rom_addr_in;
wire [31:0]ram_data_in;

Register_File RF(clk,rst,reg_write_en,st_mem,rs1,rs2,rsdt,regfile_value_in,reg_out1,reg_out2);

Aritmetic_Logic_Unit ALU(alu_cond,alu_in1,alu_in2,alu_out,Z,C,V,N);

Program_Counter PC(clk,rst,pc_load,pc_value_in,pc_value_out);

Memory mm(clk,rst,mem_write_en,ram_addr_in,rom_addr_in,ram_data_in,ram_out,rom_out);

Instruction_Register ir(clk,rst,ir_load,rom_out,opcode,cond,rsdt,rs1,rs2,IM_OPP,immed22,immed17,immed16,immed23);

assign alu_in1 = reg_out1;
assign alu_in2 = (cond_bit_16) ? immed16 : reg_out2;

assign regfile_value_in = (regfile_in_sel  == 2'b00) ? alu_out :
                          (regfile_in_sel  == 2'b01) ? pc_value_out:
                          (regfile_in_sel  == 2'b10) ? immed22 :
                          (regfile_in_sel  == 2'b11) ? ram_out: 'hzz; 

assign pc_value_in = (pc_in_sel == 2'b00) ? reg_out1 + immed16:
                     (pc_in_sel == 2'b01) ? pc_value_out :
                     (pc_in_sel == 2'b10) ? pc_value_out + immed23:
                     (pc_in_sel == 2'b11) ? pc_value_out + 3'b100 : 'hzz;

assign ram_data_in = reg_out2;

assign ram_addr_in = (ram_addr_in_sel) ? indx_value : immed22;
                     
assign rom_addr_in = pc_value_out;
    
assign indx_value = reg_out1 + immed17;

endmodule