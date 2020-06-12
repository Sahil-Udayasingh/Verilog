module latch_tb();
reg d,g;
wire q;

latch LT(q,d,g);

initial
    begin
        #10
        g=1'b0;
        d=1'b0;
        
        #30
        g=1'b1;
        
        #60
        d=1'b1;
    end
endmodule
