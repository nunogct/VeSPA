`timescale 1ns / 1ps

module Interrupt_Control(
    input clk,
    input rst,
    
    input ext_int,
    input pc_error_int,
    input pwm_int,
    
    input [31:0] pc_in, 
    
    input [7:0]int_map,
    input i_ack,
    output reg i_req,
    output reg [31:0]pc_value_out
    );
    
    reg [2:0]int_pend;
    reg [31:0] pc_save;
    /*
    =========INTERRUPT=MAP==========
    +-------------------------------+
    | EN | PWM | PC_E | EXT | | | | |
    +-------------------------------+
                            RESERVED
    */
    initial begin
    i_req = 1'b0;
    int_pend = 3'b000;
    pc_value_out = 32'h00000000;
    end
    
    always @(posedge clk)
    begin
    
    if (i_req && !i_ack) begin
            pc_save <= pc_in;
        end
    
    if((int_map[4] && int_map[7] && pc_error_int) || (int_pend[2] && !i_req))
    begin 
      if (i_req) begin
                int_pend[2] = 1'b1;
            end else begin
                i_req = 1'b1;
                pc_value_out = 'h00000010;
                int_pend[2] = 1'b0;
            end
        end
    
    if((int_map[5] && int_map[7] && ext_int) || (int_pend[1] && !i_req))
    begin 
      if (i_req) begin
                int_pend[2] = 1'b1;
            end else begin
                i_req = 1'b1;
                pc_value_out = 'h00000020;
                int_pend[2] = 1'b0;
            end
        end
    
    if((int_map[6] && int_map[7] && pwm_int) || (int_pend[0] && !i_req))
    begin
      if (i_req) begin
                int_pend[2] = 1'b1;
            end else begin
                i_req = 1'b1;
                pc_value_out = 'h00000030;
                int_pend[2] = 1'b0;
            end
        end
    
    if(i_ack)
    begin
        i_req = 1'b0;
        pc_value_out <= pc_save;
    end
    
end
    
endmodule