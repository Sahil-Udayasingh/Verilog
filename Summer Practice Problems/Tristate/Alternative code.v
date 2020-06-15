module tris(t,i,o);
input t,i;
output o;

assign o = (~t)?i:1'bz;
endmodule
