module cmosnot_test;

reg in1;
wire out;
integer k;

cmosnand Mynot2(out,in1);

initial
	begin
		for(k=0;k<2;k=k+1)
		begin
			#5 in1 = k;
			$display("In1: %b, OUT: %b",in1,out);
		end
	end
endmodule	
