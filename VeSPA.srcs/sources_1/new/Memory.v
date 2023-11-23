`timescale 1ns / 1ps

module Memory(
    input clk,
    input rst,
    input mem_read,
    input mem_write,
    
    input [31:0]pc_value,
    input [31:0]indx_value,
    input [31:0]immed22,
    
    input ir_load,
    input direct_bit, 
    input indexed_bit, 
    
    input [31:0]ram_input,
    
    output [31:0]ram_out,
    output [31:0]rom_out
    );

    parameter RAMSIZE = (1<<12);  
    parameter ROMSIZE = (1<<22);
    
    reg [7:0]RAM [0:RAMSIZE-1]; 
    reg [7:0]ROM [0:ROMSIZE-1];
    
    wire [31:0]rom_addr; //[8:0]
    wire [31:0]ram_addr; //[8:0]    
        
    integer i;
        
    initial begin
    for(i=0; i < RAMSIZE ; i = i + 1)
    RAM[i] = 'd0;  
   
   /* 
    ROM[0] = 8'b01010000;
    ROM[1] = 8'b11000000; 
    ROM[2] = 8'b00000000;
    ROM[3] = 8'b00011110; // R3 = MEM[30]
    
    ROM[4] = 8'b01010001;
    ROM[5] = 8'b00000000; 
    ROM[6] = 8'b00000000;
    ROM[7] = 8'b00011110; // R4 = 8
    
    RAM[30] = 8'b00000100;*/
    
    //////////////////////////////////////////////////
    
    /*
    ROM[0] = 8'b00001000;
    ROM[1] = 8'b11000010;
    ROM[2] = 8'b00010000;
    ROM[3] = 8'b00000000; // ADD r3 = r2 + r1
    
    ROM[4] = 8'b00010001;
    ROM[5] = 8'b00001011;
    ROM[6] = 8'b00000000;
    ROM[7] = 8'b00000101; // ADD r4 = r5 - #5
    
    ROM[8] = 8'b00001001;
    ROM[9] = 8'b10001001;
    ROM[10] = 8'b00000000;
    ROM[11] = 8'b00001010; // ADD r6 = r4 + #10*/
    
    ROM[0] = 8'b01101000;
    ROM[1] = 8'b11000000;
    ROM[2] = 8'b00000000;
    ROM[3] = 8'b00001000; // RAM[8] = R3
    end
    

    
    always@(posedge clk)
    begin
    
    if(rst)
    begin
    for(i=0; i < RAMSIZE ; i = i + 1)
    RAM[i] = 'd0;     
    end
    else if(mem_write)
    begin
    RAM[ram_addr] = ram_input;   
    end
end
       assign rom_addr = pc_value;

       assign ram_addr = (direct_bit) ? immed22 :
                      (indexed_bit) ? indx_value : ram_addr;   

    assign ram_out = {{24'b0} ,RAM[ram_addr]};
    assign rom_out = {ROM[rom_addr], ROM[rom_addr + 1], ROM[rom_addr + 2], ROM[rom_addr + 3]};
    //{RAM[ram_addr], RAM[ram_addr + 1], RAM[ram_addr + 2], RAM[ram_addr + 3]};
endmodule
