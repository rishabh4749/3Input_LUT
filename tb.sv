`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 22:23:02
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg enable;
    reg S,A,B,C;
    wire Z;
    des dut(.clk(clk),.enable(enable),.S(S),.A(A),.B(B),.C(C),.Z(Z));
    always #5 clk=~clk;
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $display("time=%t enable=%b A=%b B=%b C=%b Z=%b",$time,enable,A,B,C,Z);
    clk<=0;
    enable<=1;
    S<=567;
    A<=0;
    B<=0;
    C<=1;
    #50 $finish;
    end
endmodule
