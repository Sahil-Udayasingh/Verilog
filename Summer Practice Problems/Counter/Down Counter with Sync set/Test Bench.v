module counter_4b_tb();
reg clk,s;
wire [3:0] q;

counter_4b cnt(clk,s,q);

initial
    begin
        #10
        clk = 0;
        s = 0;
        
        #40
        s = 1;
        
        #60
        s = 0;
       
        
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
