`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2020 11:10:19 AM
// Design Name: 
// Module Name: FA
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


module FA(a,b,Cin,sum,carry);
input a,b,Cin;
output sum,carry;
wire w1,w2,w3;
half_adder f1(a,b,w1,w2);
half_adder f2(w1,Cin,sum,w3);
or g1(carry,w2,w3);
endmodule
