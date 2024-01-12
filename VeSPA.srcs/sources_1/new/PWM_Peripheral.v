`timescale 1ns / 1ps

module PWM_Peripheral(
    input clk,
    input rst,
//    input en,
    input [15:0]cycle_number,
    input [15:0]pwm_value,
    output reg int,
    output reg pwm_out
);
    
    reg en;
    reg [8:0] count;
    reg pwm_out_reg;
    
    initial begin
    en = 1'b1;
    pwm_out = 1'bz;
    count = 'd0;
    end
    
      always @(posedge clk) 
begin
        if(rst)
        begin
        count <= 'd0;
        pwm_out <= 1'bz;
        end
             
        else if(en)
   begin
        pwm_out = 1'b0;
        if (pwm_value >= cycle_number || count < pwm_value)
        begin
        pwm_out = 1'b1;
        end
        //else begin
        if(count == cycle_number)
            begin
        int = 1'b1;    
        count = 0;
            end
            else begin
        count = count + 1'b1;
            end    
        //end
      end        
    end
    
endmodule