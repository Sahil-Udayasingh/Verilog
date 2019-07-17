module fulladder(sum,cout,a,b,c);
	input a,b,c;
	output sum,cout;
	
	assign {cout,sum} = c+b+a;
endmodule