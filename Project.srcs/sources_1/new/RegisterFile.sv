`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2020 11:02:31 PM
// Design Name: 
// Module Name: RegisterFile
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

module RegisterFile( input logic clk,reset,wRegEn,
                     input logic [3:0] rAddress1,rAddress2,wAddress,
                     input logic [7:0] wData,
                     output logic [7:0] rData1, rData2);
    
    logic [7:0] regFile[15:0];
    
    assign rData1 = regFile[rAddress1];
    assign rData2 = regFile[rAddress2];
    
    always@(posedge clk) 
    begin
        if (wRegEn)
            regFile[wAddress] <= wData;
        if (reset)
        begin
            for(int i = 0; i<16; i++)
            begin
                regFile[i] <= 8'b00000000;
            end
        end
    end
endmodule 
