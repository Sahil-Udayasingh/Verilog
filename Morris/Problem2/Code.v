//4.56

module Code(flag, a1, a2);
input [3:0] a1, a2;
output flag; 

//assign flag = ((a1[3])^(a2[3]))&((a1[2])^(a2[2]))&((a1[1])^(a2[1]))&((a1[0])^(a2[0]));
assign flag = (a1 == a2);

endmodule
