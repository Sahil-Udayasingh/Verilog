`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2020 03:46:18 PM
// Design Name: 
// Module Name: xor_tb
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


module xor_tb;
wire t_c;
reg t_a, t_b;

xor1 my_gate( .a(t_a), .b(t_b), .c(t_c) );

initial
begin
$monitor(t_a, t_b, t_c);

t_a = 1'b0;
t_b = 1'b0;

#5
t_a = 1'b0;
t_b = 1'b1;

#5
t_a = 1'b1;
t_b = 1'b0;

#5
t_a = 1'b1;
t_b = 1'b1;

end
endmodule
