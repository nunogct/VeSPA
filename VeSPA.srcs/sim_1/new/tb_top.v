`timescale 1ns / 1ps

module tb_top();
    reg clk;
    reg rst;
    
    top uut(
    .clk(clk),
    .rst(rst)
    );
    
    initial begin
        rst = 1'b1;
        clk = 1'b0;
    end
    
    always #100 clk = ~clk;
    
endmodule
