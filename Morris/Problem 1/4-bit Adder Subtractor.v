`timescale 1ns / 1ps
module adder_subtractor(a,b,v,sum,carry,m);
input [3:0]a,b;
input m;
output [3:0]sum;
output carry,v;
wire [2:0]c;
wire [3:0]w;


xor(w[0],b[0],m);
xor(w[1],b[1],m);
xor(w[2],b[2],m);
xor(w[3],b[3],m);

Full_Adder f1(a[0],w[0],m,sum[0],c[0]);
Full_Adder f2(a[1],w[1],c[0],sum[1],c[1]);
Full_Adder f3(a[2],w[2],c[1],sum[2],c[2]);
Full_Adder f4(a[3],w[3],c[2],sum[3],carry);

xor(v,carry,c[2]);

endmodule
