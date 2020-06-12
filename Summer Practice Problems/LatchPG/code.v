module latch(q,d,g);
input d,g;
output q;
reg q;
always @(g or d)
    begin
        if(g)
            q<=d;    
    end
endmodule
