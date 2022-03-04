`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 06:34:32 AM
// Design Name: 
// Module Name: TestArithmeticLogicUnit
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


module TestArithmeticLogicUnit();

logic [7:0] A, B;
logic [2:0] ALUOp;
logic [7:0] ALUOut;

ArithmeticLogicUnit dut(A, B, ALUOp, ALUOut);

initial begin

A = 8'b01; B = 8'b00; ALUOp = 3'b101; #10;
A = 8'b01; B = 8'b00; ALUOp = 3'b010; #10;
A = 8'b01; B = 8'b01; ALUOp = 3'b101; #10;
A = 8'b01; B = 8'b01; ALUOp = 3'b010; #10;
A = 8'b01; B = 8'b11; ALUOp = 3'b101; #10;
A = 8'b01; B = 8'b11; ALUOp = 3'b010; #10;

end
endmodule
