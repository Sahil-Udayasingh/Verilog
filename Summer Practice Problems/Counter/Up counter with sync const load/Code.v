module counter_4b_tb();
reg clk,load;
//reg  [3:0] d;
wire [3:0] q;

counter_4b cnt(clk,load,q);

initial
    begin
        #10
        clk = 0;
        load = 0;
        //d = 4'b1001;
        #40
        load = 1;
        
        #60
        load = 0;
       
        
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
