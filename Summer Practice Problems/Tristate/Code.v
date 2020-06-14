module tris(t,i,o);
input t,i;
output o;
reg o;

always @(t or i)
    begin
        if(~t)
            o=i;
        else
            o=1'bz;    
    end
endmodule
