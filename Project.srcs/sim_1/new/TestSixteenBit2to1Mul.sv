`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 05:59:12 AM
// Design Name: 
// Module Name: TestSixteenBit2to1Mul
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


module TestSixteenBit2to1Mul();
logic[15:0] i0,i1;
logic c1;
logic[15:0] o;
SixteenBit2to1Mul dut(i0,i1,c1,o);
    
initial begin

 c1 = 0; i0 = 16'b0; i1 = 16'b01; #10;
 c1 = 1; i0 = 16'b0; i1 = 16'b01; #10;
 c1 = 0; i0 = 16'b10; i1 = 16'b11; #10;
 c1 = 1; i0 = 16'b10; i1 = 16'b11; #10; 
 
end
endmodule
