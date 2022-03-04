`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 02:50:40 PM
// Design Name: 
// Module Name: OneBit2to1Mul
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


module OneBit2to1Mul(input logic  i0, i1,
                     input logic  c,
                     output logic o);
    
always_comb
    if(c)
        o = i0;
    else
        o = i1;   
endmodule
