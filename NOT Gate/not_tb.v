`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2020 03:23:21 PM
// Design Name: 
// Module Name: not_tb
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


module not_tb;
wire b;
reg a;

not1 my_gate(a,b);
initial
begin

a = 1'b1;

#5

a = 1'b0;

end
endmodule
