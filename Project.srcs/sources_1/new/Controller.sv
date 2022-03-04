`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/20/2020 03:51:26 PM
// Design Name: 
// Module Name: Controller
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


module Controller( input logic clk, reset,
                   input logic [3:0] Op,
                   output logic addEn, jEn, wRegEn, wMemEn, resMem, ALUOp);
                               
    typedef enum logic [2:0] { Reset, Steady, Store, Load, Add, Branch, Stop } statetype;
    statetype state, nextState;
    
    always_ff@(posedge clk)
    begin
        if(~reset)
            state <= nextState;
        else
            state <= Reset;
    end
    
    //state operations 
    always_comb
    begin
        case(state)
            Reset:
                begin
                    resMem = 1;
                    wRegEn = 0;
                    wMemEn = 0;
                    jEn = 0;
                    addEn = 0;
                    ALUOp = 0;
                    nextState = Steady;
                end
                 
           Steady:
                begin
                    resMem = 0;
                    wRegEn = 0;
                    wMemEn = 0;
                    jEn = 0;
                    addEn = 0;
                    ALUOp = 0;
                    if(Op == 3'b000)
                        nextState = Store;
                    else if (Op == 3'b001)
                        nextState = Load;
                    else if (Op == 3'b010)
                        nextState = Add;
                    else if (Op == 3'b101)
                        nextState = Branch;
                    else if (Op == 3'b111)
                        nextState = Stop;
                    else
                        nextState = Steady;       
                 end
                      
            Store:
                 begin
                    resMem = 0;
                    wRegEn = 0;
                    wMemEn = 1;
                    jEn = 0;
                    addEn = 0;
                    ALUOp = 0;
                    nextState = Steady;
                 end
              
            Load:
                begin
                    resMem = 0;
                    wRegEn = 1;
                    wMemEn = 0;
                    jEn = 0;
                    addEn = 0;
                    ALUOp = 0;
                    nextState = Steady;
                end
                
            Add:
                begin
                   resMem = 0;
                   wRegEn = 1;
                   wMemEn = 0;                   
                   addEn = 1;
                   jEn = 0;
                   ALUOp = 0;
                   nextState = Steady;
                end
              
            Branch:
                begin
                    resMem = 0;
                    wRegEn = 0;
                    wMemEn = 0;
                    addEn = 0;
                    jEn = 1;
                    ALUOp = 1;
                    nextState= Steady;
                end
                
            Stop:
                begin
                    resMem = 0;
                    wRegEn = 0;
                    wMemEn = 0;
                    addEn = 0;
                    jEn = 0;
                    ALUOp = 0;
                    nextState = Stop;
                end
                
            //default:
              // begin
                //    resMem = 0;
                //    wRegEn = 0;
                //    wMemEn = 0;
                //    addEn = 0;
                 //   jEn = 0;
                 //   ALUOp = 0;
                 //   nextState = Steady;
               // end     
        endcase
    end                                                         
 endmodule          
