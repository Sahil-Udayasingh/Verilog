module counter_4b_tb();
reg clk,clr;
wire signed [3:0] q;

counter_4b cnt(clk,clr,q);

initial
    begin
        #10
        clk = 0;
        clr = 0;
        
        #40
        clr = 1;
      
      
        #60
        clr = 0;
        
        #200
        $finish;
    end


initial
    begin    
        forever
            begin
                #5 clk=~clk;    
            end
    end

endmodule
