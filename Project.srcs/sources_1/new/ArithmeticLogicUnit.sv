`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 04:01:06 PM
// Design Name: 
// Module Name: ArithmeticLogicUnit
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


module ArithmeticLogicUnit(input logic [7:0] A, B,               
                           input logic [2:0] ALUOp,
                           output logic[7:0] ALUout);
           
    always_comb
            if(ALUOp == 3'b010) // Addition
            ALUout = A + B; 
            else if(ALUOp == 3'b101) // Equal comparison
            ALUout = (A==B)?8'd1:8'd0;
endmodule