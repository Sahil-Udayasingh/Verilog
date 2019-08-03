module cmosnand(f,x,y);

input x,y;
output f;
 supply1 vcc;
 supply0 gnd;
 wire a;
 
 pmos p1(f,vcc,x);
 pmos p2(f,vcc,y);
 nmos c1(f,a,x);
 nmos c2(a,gnd,y);

endmodule