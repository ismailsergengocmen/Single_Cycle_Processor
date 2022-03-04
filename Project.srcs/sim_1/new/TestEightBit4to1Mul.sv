`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 05:54:46 AM
// Design Name: 
// Module Name: TestEightBit4to1Mul
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


module TestEightBit4to1Mul();
logic[7:0] i0,i1,i2,i3;
logic c1,c2;
logic[7:0] o;
EightBit4to1Mul dut(i0,i1,i2,i3,c1,c2,o);
    
initial begin

 c1 = 0; c2 = 0; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 0; c2 = 0; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 0; c2 = 1; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 0; c2 = 1; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 1; c2 = 0; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 1; c2 = 0; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 1; c2 = 1; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 c1 = 1; c2 = 1; i0 = 8'b0000; i1 = 8'b0001; i2 = 8'b0010; i3 = 8'b0011; #10;
 
end
endmodule
