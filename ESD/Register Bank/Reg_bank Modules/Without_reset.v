module regbank(rd_data1,rd_data2,wrdata,sr1,sr2,dr,write,clk);
	input clk,write;
	input [4:0] sr1,sr2,dr;
	input [31:0] wrdata;
	output [31:0] rd_data1,rd_data2;
	integer k;
	
	reg [31:0] regfile[0:31];
	
	assign rd_data1 =  regfile[sr1];
	assign rd_data2 =  regfile[sr2];
	
	always @(posedge clk)
		begin
		  if(write)
		      regfile[dr] <= wrdata;
		end
endmodule
