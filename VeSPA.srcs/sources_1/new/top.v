`timescale 1ns / 1ps

module top(
    input clk,
    input rst,
    input in_bttn,
    output i_ack,
    output i_req
    );
 
wire ir_load;
wire mem_write_en;
wire pc_load;
wire cond_bit_16; 
wire st_mem;
wire ram_addr_in_sel;
wire reg_write_en;
//wire i_req;
//wire i_ack;
wire IM_OPP;
wire Z;
wire C;
wire V;
wire N;   
wire pc_error;
wire [4:0]opcode;
wire [3:0]cond;
wire [1:0]regfile_in_sel;
wire [1:0]pc_in_sel;
wire [2:0]alu_cond;
 

    Control_Unit ctrl_unit (
        .rst(rst),
        .clk(clk),
        .pc_error(pc_error),
        .opcode(opcode),
        .IM_OPP(IM_OPP),
        .cond(cond),
        .Z(Z),
        .C(C),
        .V(V),
        .N(N),
        .i_req(i_req),
        .i_ack(i_ack),
        .ir_load(ir_load),
        .mem_write_en(mem_write_en),
        .pc_load(pc_load),
        .cond_bit_16(cond_bit_16),
        .st_mem(st_mem),
        .alu_en(alu_en),
        .alu_cond(alu_cond),
        .ram_addr_in_sel(ram_addr_in_sel),
        .regfile_in_sel(regfile_in_sel),
        .pc_in_sel(pc_in_sel),
        .reg_write_en(reg_write_en),
        .state(state)
    );

///////////////////////////////////////////////////////

    
     Datapath data_path(
        .clk(clk),
        .rst(rst),
        .ir_load(ir_load),
        .mem_write_en(mem_write_en),
        .pc_load(pc_load),
        .cond_bit_16(cond_bit_16),
        .st_mem(st_mem),
        .alu_en(alu_en),
        .alu_cond(alu_cond),
        .ram_addr_in_sel(ram_addr_in_sel),
        .regfile_in_sel(regfile_in_sel),
        .pc_in_sel(pc_in_sel),
        .reg_write_en(reg_write_en),
        .pc_error(pc_error),
        .i_req(i_req),
        .i_ack(i_ack),
        .in_bttn(in_bttn),
        .opcode(opcode),
        .IM_OPP(IM_OPP),
        .cond(cond),
        .Z(Z),
        .C(C),
        .V(V),
        .N(N)
    );
    
    wire f_clk;
    reg [26:0] counter; 
    
    always @(posedge clk) begin
        counter <= counter + 1;
    end
     assign f_clk = (counter[26] == 1'b0);
    
endmodule
      