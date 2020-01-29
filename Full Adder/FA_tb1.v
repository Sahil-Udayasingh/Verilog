`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2020 07:36:31 AM
// Design Name: 
// Module Name: FA_tb1
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


module FA_tb1();
wire sum,carry;
reg a,b,Cin;

FA my_add(a,b,Cin,sum,carry);
initial
begin
a=1'b0;b=1'b0;Cin=1'b0;
#5
a=1'b0;b=1'b0;Cin=1'b1;
#5
a=1'b0;b=1'b1;Cin=1'b0;
#5
a=1'b0;b=1'b1;Cin=1'b1;
#5
a=1'b1;b=1'b0;Cin=1'b0;
#5
a=1'b1;b=1'b0;Cin=1'b1;
#5
a=1'b1;b=1'b1;Cin=1'b0;
#5
a=1'b1;b=1'b1;Cin=1'b1;
#5
$finish;
end
endmodule
