`timescale 1ns / 1ps

module Program_Counter(
    input clk,
    input rst,
    input pc_load,
    input pc_branch,
    input pc_jmp,
    input [31:0]reg1_value,
    input [31:0]immed16,
    input [31:0]immed23,
    
    output [31:0]PC_out
    );
   
   reg [31:0]PC;
   
initial begin

PC = 'b0;
end   
    
always@(posedge clk)
begin

if(rst)
    begin
    PC = 'b0;
    end
 
else if(pc_branch)
    begin
        PC = PC_out + immed23 - 3'b100;
    end 

else if(pc_jmp) 
    begin
        PC = immed16 + reg1_value - 3'b100;
    end
 
else if(pc_load)
    begin
    PC = PC_out + 4; 
    end

else begin
    PC = PC;
    end

end

assign PC_out = PC;

endmodule   
