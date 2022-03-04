`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 02:06:49 PM
// Design Name: 
// Module Name: FourBit4to1Mul
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


module FourBit4to1Mul(input logic [3:0] i0, i1, i2, i3,
                      input logic c1, c2,
                      output logic[3:0] o);
                         
assign o = c1  ? (c2 ? i3 : i2)
               : (c2 ? i1 : i0);
                
endmodule
