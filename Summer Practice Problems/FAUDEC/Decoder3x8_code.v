module decoder3x8(x,y,z,D0,D1,D2,D3,D4,D5,D6,D7);
input  x,y,z;
output D0,D1,D2,D3,D4,D5,D6,D7;

assign D0 = (~x)&(~y)&(~z);
assign D1 = (~x)&(~y)&(z);
assign D2 = (~x)&(y)&(~z);
assign D3 = (~x)&(y)&(z);
assign D4 = (x)&(~y)&(~z);
assign D5 = (x)&(~y)&(z);
assign D6 = (x)&(y)&(~z);
assign D7 = (x)&(y)&(z);

endmodule
