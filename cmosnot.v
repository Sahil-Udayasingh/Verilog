module cmosnot(f,x);

input x;
output f;
 supply1 vcc;
 supply0 gnd;
  
 pmos p1(f,vcc,x);
 nmos c1(f,gnd,x);

endmodule