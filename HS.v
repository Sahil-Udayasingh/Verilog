`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2020 11:24:59 PM
// Design Name: 
// Module Name: HS
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


module HS(a,b,diff,borrow);
input a,b;
output diff,borrow;
assign diff=(a^b);
assign borrow=(~a&b);
endmodule
