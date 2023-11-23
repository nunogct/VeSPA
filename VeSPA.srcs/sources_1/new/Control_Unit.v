`timescale 1ns / 1ps
`include "DATA_FORMATS.v"

module Control_Unit(
 
    //input [4:0] branch,
    input rst,
    input clk,
 
    input [4:0] opcode,
    input IM_OPP,
    input [3:0]cond,
    input [2:0]alu_cond,    
        
    output ir_load, //No datapath é carregado o valor para o instruction register conforme o program counter
    
    output mem_read,
    output mem_write,
    
    output pc_load, //No datapath é incrementado o valor do program counter, para a próxima instrução    
    output pc_branch, //Utilizado para saltos com condições 
    output pc_jmp,
    
    output cond_bit_16,
    output alu_bit,
    
    output ld_pc,
    output ldi_bit,
    output ld_mem,
    output st_mem,
    
    output direct_bit, 
    output indexed_bit, 
    
    output write_reg,
    
    //output [3:0]branch_cond,
    
    //output reg_addr_read_1,
    //output reg_addr_read_2,
    //output reg_addr_write,
     input Z, 
     input C,
     input V,
     input N
    
);

  
// Variable to control the states
reg [4:0] state; // we only have 5 states -> start, fetch, decode, wait and execute the specific instruction

// States of the Control Unit
parameter s_start   = 5'b00000,
          s_fetch   = 5'b00001,
          s_decode = 5'b00010,
          s_extra  = 5'b00011,
          
          // INSTRUCTION STATES
          s_nop     = 5'b00100,
          s_add     = 5'b00101,
          s_sub     = 5'b00110,
          s_or      = 5'b00111,
          s_and     = 5'b01000,
          s_not     = 5'b01001,
          s_xor     = 5'b01010,
          s_cmp     = 5'b01011,
          s_bxx     = 5'b01100,
          s_jmp     = 5'b01101,
          s_ld      = 5'b01110,
          s_ldi     = 5'b01111,
          s_ldx     = 5'b10000,
          s_st      = 5'b10001,
          s_stx     = 5'b10010,
          s_hlt     = 5'b10011;

// Initialize the state
initial begin 
    state <= s_start; // Defining the first state as the start state
end

always @(posedge clk) begin
    if (rst) begin
        state <= s_start;
    end else if (!rst) begin
        case (state)
            s_start: state <= s_fetch;
            s_extra: state <= s_fetch;
            s_fetch: state <= s_decode; 
            s_decode:  //
            begin
                case (opcode)
                    `NOP : state <= s_nop;
                    
                    `ADD : state <= s_add;
                    
                    `SUB : state <= s_sub;
                    
                    `OR  : state <= s_or;
                    
                    `AND : state <= s_and;
                    
                    `NOT : state <= s_not;
                    
                    `XOR : state <= s_xor;
                    
                    `CMP : state <= s_cmp;
                    
                    `BXX : state <= s_bxx; //BRANCHES
                    
                    `JMP : state <= s_jmp;
                    
                    `LD  : state <= s_ld;
                    
                    `LDI : state <= s_ldi;
                    
                    `LDX : state <= s_ldx;
                    
                    `ST  : state <= s_st;
                    
                    `STX : state <= s_stx;
                    
                    `HLT : state <= s_hlt;
                    
                    default: state <= s_fetch;
                endcase
              end
          s_nop: state <= s_fetch; 
          s_add: state <= s_fetch; 
          s_sub: state <= s_fetch;     
          s_or: state <= s_fetch; 
          s_and: state <= s_fetch; 
          s_not: state <= s_fetch; 
          s_xor: state <= s_fetch; 
          s_cmp: state <= s_fetch; 
          s_bxx: state <= s_fetch; 
          s_jmp: state <= s_fetch; 
          s_ld: state <= s_fetch; 
          s_ldi: state <= s_fetch; 
          s_ldx: state <= s_fetch; 
          s_st: state <= s_fetch; 
          s_stx: state <= s_fetch; 
          s_hlt: state <= s_hlt; 
         
        endcase
    end
end

assign ir_load = (state == s_fetch) ? 1'b1 : 1'b0;

assign mem_read = (state == s_fetch) ? 1'b1 : 1'b0;

assign mem_write = (state == s_st || state == s_stx) ? 1'b1 : 1'b0;

assign pc_load = (state == s_fetch) ? 1'b1 : 1'b0;

assign pc_jmp = (state == s_jmp) ? 1'b1 : 1'b0;

assign pc_branch = (state == s_bxx) ? 1'b1 : 1'b0;

assign write_reg = (state == s_add || state == s_sub || state == s_or ||
                 state == s_and || state == s_not  || state == s_xor || state == s_jmp && IM_OPP == 1'b1 ||
                 state == s_ld || state == s_ldi ||state == s_ldx) ? 1'b1 : 1'b0;

assign cond_bit_16 = ((opcode == `ADD ||opcode == `SUB ||opcode == `CMP) && IM_OPP) ? 1'b1 : 1'b0;

assign alu_bit = (opcode == `ADD ||opcode == `SUB ||opcode == `OR || 
       opcode == `AND ||opcode == `XOR ||opcode == `NOT || opcode == `CMP) ? 1'b1 : 1'b0;
assign ld_pc = (opcode == `JMP && IM_OPP == 1'b1) ? 1'b1 : 1'b0;
assign ldi_bit = (opcode == `LDI) ? 1'b1 : 1'b0;
assign ld_mem = (opcode == `LD || opcode == `LDX) ? 1'b1 : 1'b0; 

assign direct_bit = (opcode == `LD || opcode == `ST) ? 1'b1 : 1'b0;
assign indexed_bit = (opcode == `LDX || opcode == `STX) ? 1'b1 : 1'b0; 

/*assign alu_cond = (opcode == `ADD) ? 3'b001 :
                  (opcode == `SUB) ? 3'b010 :
                  (opcode == `OR) ? 3'b011 :
                  (opcode == `AND) ? 3'b100 :
                  (opcode == `NOT) ? 3'b101 :
                  (opcode == `XOR) ? 3'b110 :
                  (opcode == `CMP) ? 3'b111 : 3'b000;*/

assign st_mem = (opcode == `STX || opcode == `ST) ? 1'b1 : 1'b0;
                  
assign alu_cond = opcode[2:0];                  

assign checkcond =  (cond == `BRA) ? 1'b1 : 
                  (cond == `BNV) ? 1'b0 : 
                  (cond == `BCC) ? ~C : 
                  (cond == `BCS) ? C : 
                  (cond == `BVC) ? ~V :
                  (cond == `BVS) ? V :
                  (cond == `BEQ) ? Z :
                  (cond == `BNE) ? ~Z :
                  (cond == `BGE) ? ((N & V) | (~N & ~V)) :
                  (cond == `BLT) ? ((N & ~V) | (~N & V)) :
                  (cond == `BGT) ? (~Z & ((N & V) | (~N & ~V))) :
                  (cond == `BLE) ? (Z | ((N & ~V) | (~N & V))) :
                  (cond == `BPL) ? ~N : 
                  (cond == `BMI) ? N : 1'b0;

assign pc_branch = (checkcond && opcode == `BXX) ? 1'b1 : 1'b0;

endmodule