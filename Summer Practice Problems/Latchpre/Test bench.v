module latch_tb();
reg g,pre;
reg  [3:0] d;
wire [3:0] q;

latch LT(q,d,g,pre);

initial
    begin
        #10
        g=1'b0;
        d=4'b0001;
        pre=1'b0;
        
        #30
        g=1'b1;
        
        #60
        d=4'b1001;
        
        #80
        pre=1'b1;
        
        #100
        $finish;
    end
endmodule
