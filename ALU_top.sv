`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 01:19:48 PM
// Design Name: 
// Module Name: ALU_top
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


module ALU_top(
    input wire CLK100MHZ,    // using the same name as pin names
    input wire CPU_RESETN,   
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [7:0] AN,    
    input wire [15:0] SW  
    );
    wire [3:0] result;
    
    // alu top
    alu alu1(.alu_out(result), .a(SW[3:0]), .b(SW[7:4]), .M(SW[8]), .alu_op(SW[10:9]));
    
    assign SW[11] = result[0];
    assign SW[12] = result[1];
    assign SW[13] = result[2];
    assign SW[14] = result[3];

    // 7-seg
    sev_seg_top s7(.SW(SW), .AN(AN), .CA(CA), .CB(CB), .CC(CC), .CD(CD), .CE(CE), .CF(CF), .CG(CG), .DP(DP), .CPU_RESETN(CPU_RESETN), .CLK100MHZ(CLK100MHZ));
    
endmodule
