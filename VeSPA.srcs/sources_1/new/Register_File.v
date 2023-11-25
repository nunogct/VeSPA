`timescale 1ns / 1ps

module Register_File(
    input clk,
    input rst,
    input write_reg,
    input st_mem,
    
    input [4:0]addr_read1,
    input [4:0]addr_read2,
    input [4:0]addr_dst,    
    input [31:0]value_in,
    
    output [31:0]value_reg_out1,
    output [31:0]value_reg_out2
    );
    
    reg [31:0]RegFile [0:31];
    
    initial begin
    RegFile[1] = 'd4;
    RegFile[2] = 'd5;
    end
    
    always@(posedge clk)
    begin
    
    if(write_reg)
        begin
    RegFile[addr_dst] = value_in;
        end
    end

assign value_reg_out1 = RegFile[addr_read1]; 
    
assign value_reg_out2 = (st_mem) ? RegFile[addr_dst] : RegFile[addr_read2];

endmodule