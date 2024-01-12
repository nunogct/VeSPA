`timescale 1ns / 1ps

module Program_Counter(
    input clk,
    input rst,
    input pc_load,
    
    input [31:0]PC_in,
    output error,
    output reg [31:0]PC_out
    );
   
initial begin
PC_out = 'h40;
end   
    
always@(posedge clk)
begin 
if(rst)
    begin
    PC_out = 'b0;
    end
 
else if(pc_load)
    begin
    
    if(PC_in[0] == 1'b0 && PC_in[1] == 1'b0)
    PC_out = PC_in; 
    
    end

end

assign error = (PC_in[0] == 1'b0 && PC_in[1] == 1'b0) ? 1'b0 : 1'b1;  

endmodule   