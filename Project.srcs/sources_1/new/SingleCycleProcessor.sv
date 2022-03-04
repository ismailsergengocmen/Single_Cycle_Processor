`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/23/2020 04:58:11 AM
// Design Name: 
// Module Name: SingleCycleProcessor
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


module SingleCycleProcessor(input logic clk, resetBut, decreaseBut, switchBut, increaseBut, nextBut,
                            input logic [15:0] switchInput,
                            output logic [15:0] leds, 
                            output logic [6:0] seg, output logic dp,
                            output logic [3:0] an); 
  
  // DECLERATIONS
    
  logic [3:0] aCount;
  logic [4:0] pCount;
  logic jumpOrCont;
  
  // Instructions 
  logic [15:0] instr, instrMem, instrNext;
  
  // Controller Signals
  logic addEn, jEn, wRegEn, wMemEn, resMem, ALUOp;
  
  // declaration of the write address and data of register file
  logic [3:0] wRegAddress;
  logic [7:0] wRegData;
  
  // Register File Data Registerations
  logic [7:0] rRegData1, rRegData2;
  
  // Data Memory
  logic [3:0] rMemAdress1, rMemAdress2, wMemAddress;
  logic [7:0] rMemData1, rMemData2, wMemData;
  
  // ALU Output
  logic [7:0] ALUout;
  
  //Buttons
  logic reset, decrease, switch, increase, next;
  
  //Buttons' Behaviours
  always_ff @(posedge clk)
  begin
    if(reset)
    begin
           pCount <= 5'b0;
           aCount <= 4'b0;
    end
    
    else if(increase)
    begin
        if(aCount != 4'b1111)
           aCount <= aCount + 4'b0001;
        else
           aCount <= 4'b0000;
    end 
    
    else if (decrease)
    begin
        if(aCount != 4'b0000)
           aCount <= aCount - 4'b0001;
        else
           aCount <= 4'b1111;
     end     
     
     else if (next)
     begin
           pCount <= nextPC;
           leds <= instrNext;
     end
   end   
     
  // CIRCUIT PARTS
  
  //Buttons
  debounce upper(clk, resetBut, reset);
  debounce left(clk, decreaseBut, decrease);
  debounce middle(clk, switchBut, switch);
  debounce right(clk, increaseBut, increase);
  debounce down(clk, nextBut, next);                                
  
  //Controller
  Controller controller(clk, reset, instr[15:13], addEn, jEn, wRegEn, wMemEn, resMem, ALUOp);
  
  //Instruction Memory
  OneBit2to1Mul firstTwo(ALUout[0],1'b0, jEn, jumpOrCont);
  FiveBit2to1Mul firstFive(instr[12:8], juniorPC, jumpOrCont, nextPC); 
  Adder adder(nextPC, 1'b1, incrementedPC);
  FiveBit2to1Mul secondFive(nextPC, incrementedPC, next, juniorPC);
  
  InstructionMemory ROM(pCount, incrementedPC, instrMem, instrNext);
  SixteenBit2to1Mul instructionSwitch(instrMem, switchInput, switch, instr);
  
  //Register File
  FourBit4to1Mul upperFourBitMux(instr[11:8], instr[11:8], instr[7:4], instr[11:8], addEn, instr[12], wRegAddress);  //writeAddress MUX 
  EightBit4to1Mul upperEightBitMux(ALUout, ALUout, rMemData1, instr[7:0], addEn, instr[12], wRegData); //writeData MUX
  
  RegisterFile registerFile(clk, resMem, wRegEn, instr[3:0], instr[7:4], wRegAddress, wRegData, rRegData1, rRegData2);
  
  //ALU 
  ArithmeticLogicUnit ALU(rRegData1, rRegData2, ALUOp, ALUout);
  
  //Data Memory 
  FourBit2to1Mul lowerFourBitMux(instr[11:8], instr[7:4], instr[12], wMemAddress); //writeAdress MUX
  EightBit2to1Mul lowerEightBitMux(rRegData1, instr[7:0], instr[12], wMemData); //writeData MUX
  
  DataMemory dataMem(clk, resMem, wMemEn,  instr[3:0], aCount, wMemAddress, wMemData, rMemData1, rMemData2);
                   
  //Sevensegment Display
  SevSeg_4digit SevSeg(clk, aCount, 1'b0, rMemData2[7:4], rMemData2[3:0], seg, dp , an);
      
endmodule         
    
