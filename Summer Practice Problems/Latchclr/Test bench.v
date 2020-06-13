module latch_tb();
reg d,g,clr;
wire q;

latch LT(q,d,g,clr);

initial
    begin
        #10
        g=1'b0;
        d=1'b0;
        clr=1'b0;
        
        #30
        g=1'b1;
        
        #60
        d=1'b1;
        
        #80
        clr=1'b1;
        
        #100
        $finish;
    end
endmodule
