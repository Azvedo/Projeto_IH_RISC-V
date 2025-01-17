`timescale 1ns / 1ps

module alu#(
        parameter DATA_WIDTH = 32,
        parameter OPCODE_LENGTH = 4
        )
        (
        input logic [DATA_WIDTH-1:0]    SrcA,
        input logic [DATA_WIDTH-1:0]    SrcB,

        input logic [OPCODE_LENGTH-1:0]    Operation,
        output logic[DATA_WIDTH-1:0] ALUResult
        );
        

        always_comb
        begin
            case(Operation)
            4'b0000:        // AND
                    ALUResult = SrcA & SrcB;
            4'b0001:        // OR
                    ALUResult = SrcA | SrcB; 
            4'b0111:        // SLT
                    ALUResult = (SrcA < SrcB) ? 1 : 0;
            4'b0011:        // SLTI
                    ALUResult = (SrcA < SrcB) ? 1 : 0;
            4'b0101:        // XOR
                    ALUResult = SrcA ^ SrcB; 
            4'b0010:        // ADD
                    ALUResult = $signed(SrcA) + $signed(SrcB);
            4'b1100:        // ADDI
                    ALUResult = $signed(SrcA) + SrcB;
            4'b0110:        // SUB
                    ALUResult = $signed(SrcA) - $signed(SrcB);
            4'b1000:        // Equal
                    ALUResult = (SrcA == SrcB) ? 1 : 0;
            4'b1001:        // SLLI
                    ALUResult = SrcA << SrcB;
            4'b1101:        // SRLI
                    ALUResult = SrcA >> SrcB;
            4'b0100:        // SRAI
                    ALUResult = $signed(SrcA) >>> SrcB;
        //operacoes para os branches
                4'b1110:        //Not Equal 
                    ALUResult = (SrcA != SrcB) ? 1 : 0;  
                4'b1010:        //Less Than 
                    ALUResult = (SrcA < SrcB) ? 1 : 0;
                4'b1011:        //Greater or Equal
                    ALUResult = (SrcA >= SrcB) ? 1 : 0;
                4'B1111:        //LUI
                    ALUResult = SrcB;
            default:
                    ALUResult = 0;
            endcase
        end
endmodule

