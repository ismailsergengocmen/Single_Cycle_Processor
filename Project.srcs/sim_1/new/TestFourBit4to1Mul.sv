`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 05:41:01 AM
// Design Name: 
// Module Name: TestFourBit4to1Mul
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


module TestFourBit4to1Mul();
logic[3:0] i0,i1,i2,i3;
logic c1,c2;
logic[3:0] o;
FourBit4to1Mul dut(i0,i1,i2,i3,c1,c2,o);
    
initial begin

 c1 = 0; c2 = 0; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 0; c2 = 0; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 0; c2 = 1; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 0; c2 = 1; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 1; c2 = 0; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 1; c2 = 0; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 1; c2 = 1; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 c1 = 1; c2 = 1; i0 = 4'b0000; i1 = 4'b0001; i2 = 4'b0010; i3 = 4'b0011; #10;
 
end
endmodule

