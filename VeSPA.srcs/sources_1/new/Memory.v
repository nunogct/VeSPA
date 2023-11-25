`timescale 1ns / 1ps

module Memory(
    input clk,
    input rst,
    input mem_write,

    input [31:0]ram_addr, 
    input [31:0]rom_addr,
    
    input [31:0]ram_in,
    
    output [31:0]ram_out,
    output [31:0]rom_out
    );

    parameter RAMSIZE = (1<<6);  
    parameter ROMSIZE = (1<<6);
    
    reg [7:0]RAM [0:RAMSIZE-1]; 
    reg [7:0]ROM [0:ROMSIZE-1];   

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
    ROM[11] = 8'b00001010; // ADD r6 = r4 + #10
    
     
    ROM[8] = 8'b11111111;
    ROM[9] = 8'b00000000;
    ROM[10] = 8'b11111111;
    ROM[11] = 8'b11111111; // AHALT
    
    
    /*ROM[4] = 8'b01001000;
    ROM[5] = 8'b11000011;
    ROM[6] = 8'b00000000; // PC = #0 + R1
    ROM[7] = 8'b00001100; // R3 = PC
    
    ROM[12] = 8'b01000000; // PC = PC + #0
    ROM[13] = 8'b00000000;
    ROM[14] = 8'b00000000;
    ROM[15] = 8'b01000100;
    
    
    ROM[80] = 8'b11111111;
    ROM[81] = 8'b00000000;
    ROM[82] = 8'b11111111;
    ROM[83] = 8'b00000000;*/
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
    RAM[ram_addr + 0] <= ram_in[7:0];
    RAM[ram_addr + 1] <= ram_in[15:8];
    RAM[ram_addr + 2] <= ram_in[23:16];
    RAM[ram_addr + 3] <= ram_in[31:24]; 
    end
end

    assign ram_out = {{24'b0} ,RAM[ram_addr]};
    assign rom_out = {ROM[rom_addr], ROM[rom_addr + 1], ROM[rom_addr + 2], ROM[rom_addr + 3]};
 
endmodule