`timescale 1ns / 1ps

module Program_Counter(
    input clk,
    input rst,
    input pc_load,
    
    input [31:0]PC_in,
    output reg [31:0]PC_out
    );
   
initial begin
PC_out = 'b0;
end   
    
always@(posedge clk)
begin 
if(rst)
    begin
    PC_out = 'b0;
    end
 
else if(pc_load)
    begin
    PC_out = PC_in; 
    end

end

endmodule   