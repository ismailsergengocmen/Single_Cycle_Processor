`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/25/2020 05:29:10 AM
// Design Name: 
// Module Name: TestSingleCycleProcessor
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


module TestSingleCycleProcessor();

 logic clk;
 logic resetBut, decreaseBut, switchBut, increaseBut, nextBut;
 logic [15:0] switchInput;
 logic [15:0] leds;
 logic [6:0] seg; 
 logic dp;
 logic [3:0] an;

SingleCycleProcessor dut(clk, resetBut, decreaseBut, switchBut, increaseBut, nextBut, switchInput, leds, seg, dp, an);

always
        begin 
            clk = 1; #10; 
            clk = 0; #10;
        end

initial begin
resetBut = 0; switchBut = 0; decreaseBut = 0; increaseBut = 0; switchBut = 0; 

nextBut = 1; switchInput  = 16'b000_0_0000_0000_0000;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0001_0001;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0010_0010;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;

nextBut = 0; decreaseBut = 1; #20;
decreaseBut = 0; increaseBut = 1; #20;
increaseBut = 0;

nextBut = 1; switchInput = 16'b001_1_0000_0000_0001;  #20;
nextBut = 1; switchInput = 16'b001_1_0011_0000_0000;  #20;
nextBut = 1; switchInput  = 16'b001_1_0100_0000_0001;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;

nextBut = 1; switchInput  = 16'b101_01001_0010_0001;  #20;
nextBut = 1; switchInput  = 16'b010_0_0011_0011_0000;  #20;
nextBut = 1; switchInput  = 16'b010_0_0010_0010_0100;  #20;
nextBut = 1; switchInput  = 16'b101_00101_0000_0000; #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;
nextBut = 1; switchInput  = 16'b000_0_0000_0011_0011;  #20;

end
endmodule
