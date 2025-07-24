`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 14:46:58
// Design Name: 
// Module Name: alu_tb
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


module tb_ALU_2bit;
    reg [1:0] A, B;
    reg [1:0] sel;
    wire [2:0] result;

    ALU_2bit alu(.A(A), .B(B), .sel(sel), .result(result));

    initial begin
        $display("A  B  sel  | result");
        A = 2'b01; B = 2'b10; sel = 2'b00; #10; // 1 + 2
        $display("%b  %b  %b   | %b", A, B, sel, result);
        
        A = 2'b11; B = 2'b01; sel = 2'b01; #10; // 3 - 1
        $display("%b  %b  %b   | %b", A, B, sel, result);
        
        A = 2'b10; B = 2'b01; sel = 2'b10; #10; // AND
        $display("%b  %b  %b   | %b", A, B, sel, result);
        
        A = 2'b10; B = 2'b01; sel = 2'b11; #10; // OR
        $display("%b  %b  %b   | %b", A, B, sel, result);
        
        $finish;
    end
endmodule
