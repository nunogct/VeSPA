`timescale 1ns / 1ps

module Register_File(
    input clk,
    input rst,
    input write_reg,
    
    input alu_bit,
    
    input ld_pc,
    input ldi_bit,
    input ld_mem,
    input st_mem,
    
    input [4:0]addr_read1,
    input [4:0]addr_read2,
    input [4:0]addr_dst,    
    
    input [31:0] alu_value,
    input [31:0] pc_value,
    input [31:0] mem_value,
    input [31:0] immed22,
    
    output [31:0]value_reg_out1,
    output [31:0]value_reg_out2
    );
    
    reg [31:0]RegFile [0:31];
    wire [31:0]value_in;
    
    initial begin
    RegFile[3] = 'd5;
    end
    
    always@(posedge clk)
    begin
    
    if(write_reg)
        begin
    RegFile[addr_dst] <= value_in;
        end
    end

assign value_in = (alu_bit) ? alu_value:
                  (ld_pc) ? pc_value + value_reg_out1:
                  (ldi_bit) ? immed22:
                  (ld_mem) ? mem_value: value_in; 
                  

assign value_reg_out1 = RegFile[addr_read1]; 
    
assign value_reg_out2 = (st_mem) ? RegFile[addr_dst] : RegFile[addr_read2];

endmodule
