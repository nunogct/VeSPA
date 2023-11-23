`timescale 1ns / 1ps
`include "DATA_FORMATS.v"

module Datapath(
        input clk,
        input rst,
        
        input ir_load,
    
        input mem_read,
        input mem_write,
        
        input pc_load,  
        input pc_branch, 
        input pc_jmp,
        
        input cond_bit_16,
        input alu_bit,
        
        
        input ld_pc,
        input ldi_bit,
        input ld_mem,
        input st_mem,
        
        input direct_bit, 
        input indexed_bit, 
        
        input write_reg,
        
        input [2:0]alu_cond,
        
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

wire [31:0]pc_value;
wire [31:0]rom_out;
wire [31:0]ram_out;

Register_File RF(clk,rst,write_reg,alu_bit,ld_pc,ldi_bit,ld_mem,st_mem,rs1,rs2,rsdt,alu_out,pc_value,ram_out,immed22,reg_out1,reg_out2);

Aritmetic_Logic_Unit ALU(cond_bit_16,opcode,reg_out1,reg_out2,immed16,alu_out,Z,C,V,N);

Program_Counter PC(clk,rst,pc_load,pc_branch,pc_jmp,reg_out1,immed16,immed23,pc_value);

Memory mm(clk,rst,mem_read,mem_write,pc_value,indx_value,immed22,ir_load,direct_bit,indexed_bit,reg_out2,ram_out,rom_out);

Instruction_Register ir(clk,rst,ir_load,rom_out,opcode,cond,rsdt,rs1,rs2,IM_OPP,immed22,immed17,immed16,immed23);

assign indx_value = reg_out1 + immed17;

endmodule