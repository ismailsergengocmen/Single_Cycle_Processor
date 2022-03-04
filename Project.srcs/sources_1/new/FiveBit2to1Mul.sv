`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 02:40:34 PM
// Design Name: 
// Module Name: FiveBit2to1Mul
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


module FiveBit2to1Mul(input logic [4:0] i0, i1,
                      input logic  c,
                      output logic [4:0] o);
    
always_comb
    if(c)
        o = i1;
    else
        o = i0;   
endmodule