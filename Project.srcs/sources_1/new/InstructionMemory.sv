`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2020 03:10:23 PM
// Design Name: 
// Module Name: instructionMemory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module InstructionMemory( input logic [4:0] address,
                          input logic [4:0] incrementedPC,
                          output logic [15:0] instr,
                          output logic [15:0] instrNext );
   
   logic[15:0] memory [31:0];                       
   
   assign memory[0] = 16'b000_1_0000_00000000; 
   assign memory[1] = 16'b000_1_0001_00000001;
   assign memory[2] = 16'b000_1_0010_00000010;
   assign memory[3] = 16'b000_1_0011_00000011;
   assign memory[4] = 16'b000_1_0100_00000100;
   
   assign memory[5] = 16'b000_0_0000_0000_0000;
   assign memory[6] = 16'b000_0_0000_0001_0001;
   assign memory[7] = 16'b000_0_0000_0010_0010;
   assign memory[8] = 16'b000_0_0000_0011_0011;
   assign memory[9] = 16'b000_0_0000_0100_0100;
   
   assign memory[10] = 16'b001_1_0010_00000000;
   assign memory[11] = 16'b001_1_0011_00000000;
   assign memory[12] = 16'b001_1_0100_00000001;
   assign memory[13] = 16'b101_01001_0010_0001;
   assign memory[14] = 16'b010_0_0011_0011_0000;
   assign memory[15] = 16'b010_0_0010_0010_0100;                
   assign memory[16] = 16'b101_00101_0000_0000;
   assign memory[17] = 16'b000_0_0000_0011_0011;
	   
    assign instr = memory[address];
    assign instrNext = memory[incrementedPC];               
endmodule

