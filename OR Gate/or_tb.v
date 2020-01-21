`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/20/2020 07:52:09 PM
// Design Name: 
// Module Name: or_tb
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


module and_tb;
wire t_c;
reg t_a, t_b;

or1 my_gate( .a(t_a), .b(t_b), .c(t_c) );

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
