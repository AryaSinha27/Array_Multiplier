`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.09.2024 15:55:37
// Design Name: 
// Module Name: TB
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for array multiplier
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module TB;
    reg [3:0] A, B;
    wire [7:0] P;
    
    // Instantiate the multiplier module
    array_multiplier am (.A(A), .B(B), .P(P));
    
    initial begin
        $monitor("A = %b, B = %b --> P = %b, P(dec) = %0d", A, B, P, P);
        
        // Test case 1
        A = 1; B = 0; #3;
        
        // Test case 2
        A = 7; B = 5; #3;
        
        // Test case 3
        A = 8; B = 9; #3;
        
        // End the simulation
        $finish;
    end
endmodule
