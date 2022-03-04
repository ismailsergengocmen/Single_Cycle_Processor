`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 02:26:15 PM
// Design Name: 
// Module Name: FourBit2to1Mul
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


module FourBit2to1Mul(input logic [3:0] i0, i1,
                      input logic  c,
                      output logic [3:0] o);
    
always_comb
    if(c)
        o = i0;
    else
        o = i1;   
endmodule
