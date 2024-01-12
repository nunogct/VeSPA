`timescale 1ns / 1ps

module Button_Debounce(

input clk,
input btn,
output debouncedOutput

);      

reg [9:0] counter_d, counter_q;
reg [1:0] sync_d, sync_q;
  
initial begin
    counter_d = 0;
    counter_q = 0;
    sync_d = 0;
    sync_q = 0;
end

always @(*) begin
    sync_d[0] = btn;
    sync_d[1] = sync_q[0];
    counter_d = counter_q + 1'b1;

    if (counter_q == {10{1'b1}}) begin
        counter_d = counter_q;
    end

    if (!sync_q[1])
        counter_d = 10'd0;
end
 
always @(posedge clk) begin
    counter_q <= counter_d;
    sync_q <= sync_d;
end
 
assign debouncedOutput = counter_q == {10{1'b1}}; 
 
endmodule
