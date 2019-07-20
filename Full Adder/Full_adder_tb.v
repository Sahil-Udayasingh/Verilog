`timescale 1ns/100ps

module fulladder_tb;
	reg a,b,c;
	wire sum,cout;
	
	fulladder uut(.a(a),.b(b),.c(c),.sum(sum),.cout(cout));
	initial
	begin
		a=0;
		b=0;
		c=0;
		#20; a=1;
		#20; b=1;
		#20; a=0;
		#20; c=1;
		#20; b=0;
	end
	
	initial
	begin
		$monitor("time=%2d, a=%1b, b=%1b, c=%1b, sum=%1b, cout=%1b", $time,a,b,c,sum,cout);
	end
endmodule
