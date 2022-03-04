`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 06:56:49 AM
// Design Name: 
// Module Name: TestFourBit2to1Mul
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


module TestFourBit2to1Mul();
logic[3:0] i0,i1;
logic c1;
logic[3:0] o;
FourBit2to1Mul dut(i0,i1,c1,o);
    
initial begin

 c1 = 0; i0 = 3'b0; i1 = 3'b01; #10;
 c1 = 1; i0 = 3'b0; i1 = 3'b01; #10;
 c1 = 0; i0 = 3'b10; i1 = 3'b11; #10;
 c1 = 1; i0 = 3'b10; i1 = 3'b11; #10;
 end 
endmodule
