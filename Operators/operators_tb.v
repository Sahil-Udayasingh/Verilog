`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2020 10:42:03 AM
// Design Name: 
// Module Name: operators_tb
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


module operators_tb();
wire [3:0]c,d,h,j;
wire [7:0]k,l;
wire e,f,g,i;
reg [3:0]a,b;
operators DUT(a,b,c,d,e,f,g,h,i,j,k,l);
initial
begin
a=4'd3;b=4'd4;
#5
a=4'b1101;b=4'b1101;
end
endmodule
