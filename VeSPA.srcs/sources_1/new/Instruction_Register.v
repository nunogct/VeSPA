`timescale 1ns / 1ps

module Instruction_Register(
    input clk,
    input rst,
    input ir_load,
    input [31:0]IR_in,
    
    output [4:0]opcode,
    output [3:0]cond,
    output [4:0]rsdt,
    output [4:0]rs1,
    output [4:0]rs2,
    output IM_OPP,
    output [31:0]immed22, 
    output [31:0]immed17, 
    output [31:0]immed16, 
    output [31:0]immed23
    );

reg [31:0]IR;
 
initial begin 
IR = 'd0; 
end 

always@(posedge clk)
begin
if(rst)
    begin
    IR = 'd0; 
    end
else if(ir_load)
    begin
    IR = IR_in;
    end
end

assign opcode = IR[31:27];
assign cond = IR[26:23];
assign rsdt = IR[26:22];
assign rs1 = IR[21:17];
assign rs2 = IR[15:11];
assign IM_OPP = IR[16];
assign immed22 = {{10'b0},  IR[21:0]};
assign immed17 = {{16'b0} , IR[16:0]};
assign immed16 = {{17'b0} , IR[15:0]};
assign immed23 = {{9'b0} , IR[22:0]};

endmodule