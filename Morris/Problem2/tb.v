`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2021 22:49:55
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


module tb();
reg [3:0] a1, a2;
wire flag;

Code F1(flag, a1, a2);

initial
    begin
        #10 a1 = 4'b1101; a2 = 4'b1011;
        #10 a1 = 4'b1011; a2 = 4'b1011;
        #10 a1 = 4'b1001; a2 = 4'b1011;
        #50 $stop;
        
    end
endmodule
