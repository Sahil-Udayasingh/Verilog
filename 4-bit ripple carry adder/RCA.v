`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 05:48:46 PM
// Design Name: 
// Module Name: RCA
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


module RCA(a,b,Cin,sum,carry);
input [3:0]a,b;
input Cin;
output [3:0]sum;
output carry;
wire [2:0]c;

FA f1(a[0],b[0],Cin,sum[0],c[0]);
FA f2(a[1],b[1],c[0],sum[1],c[1]);
FA f3(a[2],b[2],c[1],sum[2],c[2]);
FA f4(a[3],b[3],c[2],sum[3],carry);

endmodule
