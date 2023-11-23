`timescale 1ns / 1ps


`define ADD 5'b001
`define SUB 5'b010
`define OR  5'b011
`define AND 5'b100
`define NOT 5'b101
`define XOR 5'b110
`define CMP 5'b111

module Aritmetic_Logic_Unit(
    input cond_bit_16,
    input [2:0]alu_cond,
    input [31:0]reg1,
    input [31:0]reg2,
    input [31:0]immed16,
    output [31:0]alu_out,
    output reg Z,
    output reg C,
    output reg V,
    output reg N
    );
   
   wire subt;
   
   wire [31:0]op1;
   wire [31:0]op2;
   parameter WIDTH = 32;
   
   reg [32:0]result;
   
   initial begin
        result = 1'b0;
        Z = 1'b0;
        C = 1'b0;
        V = 1'b0;
        N = 1'b0;
   end
   
    always@(*)
    begin
      case (alu_cond) 
    `ADD: begin result = op1 + op2; end
    `SUB: begin result = op1 - op2; end    
    `OR: begin result = op1 | op2; end
    `XOR: begin result = op1 ^ op2; end
    `AND: begin result = op1 & op2; end
    `NOT: begin result = ~op1; end
    `CMP: begin result = op1 - op2; end
    default: begin result = result; end
        endcase
        
         if (alu_cond == `ADD || alu_cond == `SUB || alu_cond == `CMP)  
        begin
           Z = ~(|result[31:0]) ? 1'b1 : 1'b0;
           C = (result[32]) ? 1'b1 : 1'b0;    
           V = (result[WIDTH-1] & ~op1[WIDTH-1] & ~(subt ^ op2[WIDTH-1])) |
                        (~result[WIDTH-1] & op1[WIDTH-1] & (subt ^ op2[WIDTH-1])) ? 1'b1 : 1'b0; 
           N = result[31] ? 1'b1 : 1'b0;
        end
        
end
    assign subt = (alu_cond == `SUB || alu_cond == `CMP) ? 1'b1 :
                  (alu_cond == `ADD) ? 1'b0 : subt;
    
    assign op1 = reg1;
    assign op2 = (cond_bit_16) ? immed16 : reg2;
    assign alu_out = result;
    
endmodule