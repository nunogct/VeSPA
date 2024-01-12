`timescale 1ns / 1ps

`define ADD 5'b001
`define SUB 5'b010
`define OR  5'b011
`define AND 5'b100
`define NOT 5'b101
`define XOR 5'b110
`define CMP 5'b111

module Aritmetic_Logic_Unit(
    input [2:0]alu_cond,
    input en,
    input [31:0]op1,
    input [31:0]op2,
    output [31:0]alu_out,
    output reg Z,
    output reg C,
    output reg V,
    output reg N
    );
   
   wire subt;
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
    if(en)
    begin
      case (alu_cond) 
    `ADD: begin result = op1 + op2; end
    `SUB: begin result = op1 - op2; end    
    `OR: begin result = op1 | op2; end
    `XOR: begin result = op1 ^ op2; end
    `AND: begin result = op1 & op2; end
    `NOT: begin result = ~op1; end
    `CMP: begin result = op1 - op2; end
    default: begin result = 'hzz; end
        endcase
        
         if (alu_cond == `ADD)  
        begin
        C <= result[32];
        Z <= ~(|result[31:0]);
        V <= ( result[31] & ~op1[31] & ~(subt ^ op2[31])) 
           |(~result[31] & op1[31] & (subt ^ op2[31]));     
        end
          else if(alu_cond == `SUB || alu_cond == `CMP)
        begin
            
        Z <= ~(|result[31:0]);
        N <= result[31];
        V <= (result[31] & ~op1[31] & ~(subt ^ op2[31])) |
           (~result[31] & op1[31] & (subt ^ op2[31])); 
        end
    end    
end
    assign subt = (alu_cond == `SUB || alu_cond == `CMP) ? 1'b1 :
                  (alu_cond == `ADD) ? 1'b0 : 'hzz;
    
    assign alu_out = result;
    
endmodule