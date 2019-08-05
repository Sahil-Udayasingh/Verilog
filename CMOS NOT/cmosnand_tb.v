module cmosnand_test;

reg in1,in2;
wire out;
integer k;

cmosnand Mynand2(out,in1,in2);

initial
	begin
		for(k=0;k<4;k=k+1)
		begin
			#5 {in1,in2} = k;
			$display("In1: %b, In2: %b, OUT: %b",in1,in2,out);
		end
	end
endmodule	