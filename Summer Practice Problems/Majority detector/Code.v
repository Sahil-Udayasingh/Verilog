module maj_det(a,b,c,f);
input a,b,c;
output f;

assign f = ((b&c) | (a&c) | (b&a));
endmodule
