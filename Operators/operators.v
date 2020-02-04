`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2020 01:03:20 PM
// Design Name: 
// Module Name: operators
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


module operators(a,b,c,d,e,f,g,h,i,j,k,l);
input [3:0]a,b;
output e,f,g,i;
output [3:0]c,d,h,j;
output [7:0]k,l;
//arithmetic operators
assign c=a*b;
assign d=a%b;
//relational operator
assign e = a>b;
//equality
assign f=a===b;
//logical operator
assign g=e&&f;
//bit-wise operator
assign h=a^b;
//reduction operator
assign i=|a;
//shift operator
assign j=a>>2;
//concatenation operator
assign k={a,b};
//replication operator
assign l={2{a}};
//Conditional operator
endmodule
