module ffps(clk,q,d,s);
input clk,d,s;
output q;
reg q;

always @(posedge clk)
    begin
        if(s)
            q<=1'b1;
        else
            q<=d;
    end
endmodule
