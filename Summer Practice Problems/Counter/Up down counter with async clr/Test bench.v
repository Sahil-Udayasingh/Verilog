module counter_4b_tb();
reg clk,clr,status;
wire [3:0] q;

counter_4b cnt(clk,clr,status,q);

initial
    begin
        #10
        clk = 0;
        clr = 0;
        status = 0;
        
        #40
        clr = 1;
        
        #50
        status = 1;
        
        #60
        clr = 0;
        
        #100
        status = 0;
        
        #200
        $finish;
    end
