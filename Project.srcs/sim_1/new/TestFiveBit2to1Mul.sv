`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 06:54:01 AM
// Design Name: 
// Module Name: TestFiveBit2to1Mul
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


module TestFiveBit2to1Mul();
logic[4:0] i0, i1;
logic c1;
logic[4:0] o;
FiveBit2to1Mul dut(i0,i1,c1,o);
    
initial begin

 c1 = 0; i0 = 5'b0; i1 = 5'b01; #10;
 c1 = 1; i0 = 5'b0; i1 = 5'b01; #10;
 c1 = 0; i0 = 5'b10; i1 = 5'b11; #10;
 c1 = 1; i0 = 5'b10; i1 = 5'b11; #10;
  
end 
endmodule
