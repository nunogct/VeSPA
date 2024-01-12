`timescale 1ns / 1ps
`include "DATA_FORMATS.v"

module Datapath(
        input clk,
        input rst,
        input ir_load,
        input mem_write_en,
        input pc_load,  
        input cond_bit_16,
        input st_mem,
        input alu_en,

        input [2:0]alu_cond,
        input ram_addr_in_sel,
        input [1:0]regfile_in_sel,
        input [1:0]pc_in_sel,  
        input reg_write_en,
        
        input in_bttn,
        input i_ack,
        output i_req,
        
        output pc_error,
        output [4:0]opcode,
        output IM_OPP,
        output [3:0]cond,
        
       // output [31:0] pc_out,
           
        output Z, 
        output C,
        output V,
        output N
       );
wire [4:0]rsdt;
wire [4:0]rs1;
wire [4:0]rs2;
wire [31:0]immed22;
wire [31:0]immed17;
wire [31:0]immed16; 
wire [31:0]immed23;
    
wire [31:0]reg_out1;
wire [31:0]reg_out2;

wire [31:0]indx_value; 
wire [31:0]alu_out;
wire [31:0]alu_in1;
wire [31:0]alu_in2;

wire [31:0]pc_value_out;
wire [31:0]ram_out;
wire [31:0]ram_addr;

wire [31:0]regfile_value_in;
wire [31:0]pc_value_in;
wire [31:0]ram_addr_in;
wire [31:0]rom_addr_in;

wire [7:0]ram_out1;
wire [7:0]ram_out2;
wire [7:0]ram_out3;
wire [7:0]ram_out4;

wire [31:0]ram_data_in;
wire [7:0]ram_data1;
wire [7:0]ram_data2;
wire [7:0]ram_data3;
wire [7:0]ram_data4;


assign ram_data4 = reg_out2[31:24];
assign ram_data3 = reg_out2[23:16];
assign ram_data2 = reg_out2[15:8];
assign ram_data1 = reg_out2[7:0];

wire [31:0]rom_out;
wire [7:0]rom_out1;
wire [7:0]rom_out2;
wire [7:0]rom_out3;
wire [7:0]rom_out4;

wire [7:0]int_map;
wire [31:0]i_vec;
wire ext_int;
wire pwm_int;

wire out_bttn;

wire [15:0]pwm_cycle_number;
wire [15:0]pwm_value;
wire pwm_out;

Register_File RF(clk,rst,reg_write_en,st_mem,rs1,rs2,rsdt,regfile_value_in,reg_out1,reg_out2);

Aritmetic_Logic_Unit ALU(alu_cond,alu_en,alu_in1,alu_in2,alu_out,Z,C,V,N);

Program_Counter PC(clk,rst,pc_load,pc_value_in,pc_error,pc_value_out);

//Memory mm(clk,rst,mem_write_en,ram_addr,ram_data_in,ram_out);
Memory mm(clk,rst,mem_write_en,ram_addr,pc_value_out,ram_data_in,int_map,pwm_cycle_number,pwm_value,ram_out,rom_out);

Instruction_Register ir(clk,rst,ir_load,rom_out,opcode,cond,rsdt,rs1,rs2,IM_OPP,immed22,immed17,immed16,immed23);

Interrupt_Control ic(clk,rst,out_bttn,pc_error,pwm_int,pc_value_out,int_map,i_ack,i_req,i_vec);

Button_Debounce bttn(clk,in_bttn,out_bttn);
//memory_1 code(rom_addr_in,clk,rom_out1,rom_out2,rom_out3,rom_out4);
assign out_bttn = pc_error;
PWM_Peripheral pwm(clk,rst,pwm_cycle_number,pwm_value,pwm_int,pwm_out);

//memory_2 data(
//    .addra_0(ram_addr_in),
//    .clka_0(clk),
//    .dina_0(ram_data1),
//    .dina_1(ram_data2),
//    .dina_2(ram_data3),
//    .dina_3(ram_data4),
//    .douta_0(ram_out1),
//    .douta_1(ram_out2),
//    .douta_2(ram_out3),
//    .douta_3(ram_out4),
//    .wea_0(mem_write_en)
//    );

///////////////////////////////////////////
//assign rom_addr4 = rom_addr_in;
//assign rom_addr3 = rom_addr_in + 2'b01;
//assign rom_addr2 = rom_addr_in + 2'b10;
//assign rom_addr1 = rom_addr_in + 2'b11;
///////////////////////////////////////////
assign alu_in1 = reg_out1;
assign alu_in2 = (cond_bit_16) ? immed16 : reg_out2;

assign regfile_value_in = (regfile_in_sel  == 2'b00) ? alu_out :
                          (regfile_in_sel  == 2'b01) ? pc_value_out:
                          (regfile_in_sel  == 2'b10) ? immed22 :
                          (regfile_in_sel  == 2'b11) ? ram_out: 'hzz; 

/*assign pc_value_in = (pc_in_sel == 2'b00) ? reg_out1 + immed16:
                     (pc_in_sel == 2'b01) ? pc_value_out + immed23 :
                     (pc_in_sel == 2'b10) ? pc_value_out + 3'b100 : 
                     (pc_in_sel == 2'b11) ? i_vec : pc_value_out; */

assign pc_value_in = (pc_in_sel == 2'b00) ? i_vec:
                     (pc_in_sel == 2'b01) ? reg_out1 + immed16 :
                     (pc_in_sel == 2'b10) ? pc_value_out + immed23 : 
                     (pc_in_sel == 2'b11) ? pc_value_out + 3'b100 : pc_value_out; 

assign ram_data_in = reg_out2;

assign ram_addr = (ram_addr_in_sel) ? indx_value : immed22;
                     
assign rom_addr_in = pc_value_out[31:2];

assign ram_addr_in = ram_addr[31:2];
///////////////////////////////////////////
//assign rom_out = {rom_out4, rom_out3, rom_out2, rom_out1};
//assign ram_out = {ram_out4, ram_out3, ram_out2, ram_out1};
///////////////////////////////////////////
assign indx_value = reg_out1 + immed17;

endmodule