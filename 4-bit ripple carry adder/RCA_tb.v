`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 05:56:01 PM
// Design Name: 
// Module Name: RCA_tb
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


module RCA_tb();
reg [3:0]a,b;
reg Cin;
wire [3:0]sum;
wire carry;

RCA my_adder(a,b,Cin,sum,carry);
initial
begin
a=4'd0;b=4'd0;Cin=1'b0;
#5
a=4'd3;b=4'd4;
#5
a=4'd2;b=4'd6;
#5
a=4'd4;b=4'd1;
#5
$finish;
end
endmodule
