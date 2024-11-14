`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 11:14:26 AM
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


module alu(
    input [3:0] a,
    input [3:0] b,
    input M,
    input [1:0] alu_op,
    output alu_out
    );
    logic c_out;
    logic shift_left, add_sub, and1;
    logic shift_and;
    
    adder4sub a4s(.S(add_sub), .M(M), .c_out(c_out), .A(a), .B(b));   
    assign shift_left = a << b;
    assign and1 = a & b;
     
    mux_2_1 mx0(.z(shift_and), .s(alu_op[0]), .a(shift_left), .b(and1));
    mux_2_1 mx1(.z(alu_out), .s(alu_op[1]), .a(shift_and), .b(add_sub));
    
endmodule
