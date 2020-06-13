module latch(q,d,g,clr);
input d,g,clr;
output q;
reg q;
always @(g or d or clr)
    begin
        if(clr)
            q=1'b0;
        else if(g)
            q<=d;        
    end
endmodule
