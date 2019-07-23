module tb_segment7;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    segment7 uut (
        .bcd(bcd), 
        .seg(seg)
    );

    initial begin
        for(i = 0;i < 16;i = i+1) 
        begin
            bcd = i; 
            #10; 
        end     
    end
	
	initial
	begin
		$monitor("time=%2d ,bcd=%4b ,seg=%7b ",$time,bcd,seg);
	end
      
endmodule
