module regbank_tb();
	reg clk,write;
	reg [4:0] sr1,sr2,dr;
	reg [31:0] wrdata;
	wire [31:0] rd_data1,rd_data2;
	integer k;
	
	regbank REG(rd_data1,rd_data2,wrdata,sr1,sr2,dr,write,clk);
	
	initial clk=0;
	always #5 clk=!clk;
	
	initial
	begin
        #5 write = 0;	
	end
	
	initial
		begin
			#9 
			for(k=0;k<32;k=k+1)
				begin
					dr = k;
					wrdata = 20*k;
					write = 1;
					#10 write = 0;
				end
			#20	
			for(k=0;k<32;k=k+2)	
		      begin
			     sr1=k;
			     sr2=k+1;
			  end		
			#2000 $finish;
		end
endmodule
