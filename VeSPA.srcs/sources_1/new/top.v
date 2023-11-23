`timescale 1ns / 1ps

module top(
    input clk,
    input rst
    );
    
 wire [4:0]opcode;
 wire [3:0]cond;

    Control_Unit ctrl_unit(
    .clk(clk),
    .rst(rst),
   
    .opcode(opcode),
    .IM_OPP(IM_OPP),
    .cond(cond),
    .alu_cond(alu_cond),
    
    .ir_load(ir_load),
    
    .pc_load(pc_load),
    .pc_branch(pc_branch),
    .pc_jmp(pc_jmp),
    
    .mem_read(mem_read),
    .mem_write(mem_write),
    
    .cond_bit_16(cond_bit_16),
    .alu_bit(alu_bit),
    
    .ld_pc(ld_pc),
    .ldi_bit(ldi_bit),
    .ld_mem(ld_mem),
    .st_mem(st_mem),
    
    .direct_bit(direct_bit), 
    .indexed_bit(indexed_bit), 
    
    .write_reg(write_reg),
    
    .Z(Z),
    .C(C),
    .V(V),
    .N(N)
    );     

///////////////////////////////////////////////////////

    Datapath data_path(
    .clk(clk),
    .rst(rst),
        
    .ir_load(ir_load),

    .mem_read(mem_read),
    .mem_write(mem_write),
    
    .pc_load(pc_load),
    .pc_branch(pc_branch),
    .pc_jmp(pc_jmp),
    
    .cond_bit_16(cond_bit_16),
    .alu_bit(alu_bit),
    
    .ld_pc(ld_pc),
    .ldi_bit(ldi_bit),
    .ld_mem(ld_mem),
    .st_mem(st_mem),
    
    .direct_bit(direct_bit),
    .indexed_bit(indexed_bit),
    
    .write_reg(write_reg),
    
    .opcode(opcode),
    .IM_OPP(IM_OPP),
    .cond(cond),
    .alu_cond(alu_cond),
    
    .Z(Z),
    .C(C),
    .V(V),
    .N(N)
    );    
    
endmodule
      