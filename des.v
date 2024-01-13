`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 22:07:13
// Design Name: 
// Module Name: des
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

module mux(input [7:0] Q,input A,B,C,output Z);
assign Z=(((~A) & (~B) & (~C) & Q[0])|((~A) & (~B) & (C) & Q[1])|((~A) & (B) & (~C) & Q[2])|((~A) & (B) & (C) & Q[3])|((A) & (~B) & (~C) & Q[4])|((A) & (~B) & (C) & Q[5])|((A) & (B) & (~C) & Q[6])|((A) & (B) & (C) & Q[7]));
endmodule
module des(
    input clk,
    input enable,
    input S,
    input A, B, C,
    output Z
    );
    reg [7:0] Q;integer i;
    mux m1(.Q(Q),.A(A),.B(B),.C(C),.Z(Z));
    always @ (posedge clk) begin
    if(enable) begin
    Q[0]<=S;
    Q[1]<=Q[0];
    Q[2]<=Q[1];
    Q[3]<=Q[2];
    Q[4]<=Q[3];
    Q[5]<=Q[4];
    Q[6]<=Q[5];
    Q[7]<=Q[6];
    end
    end
endmodule
