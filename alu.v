`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.07.2025 15:37:55
// Design Name: 
// Module Name: alu
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
module ALU_2bit (
    input  [1:0] A,      // 2-bit input A
    input  [1:0] B,      // 2-bit input B
    input  [1:0] sel,    // 2-bit selector
    output reg [2:0] result // 3-bit result (to handle carry in addition/subtraction)
);

always @(*) begin
    case (sel)
        2'b00: result = A + B;       // Addition
        2'b01: result = A - B;       // Subtraction
        2'b10: result = A & B;       // Bitwise AND
        2'b11: result = A | B;       // Bitwise OR
        default: result = 3'b000;
    endcase
end

endmodule








