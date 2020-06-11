module ffps(clk,q,d,clr);
input clk,d,clr;
output q;
reg q;

always @(negedge clk or posedge clr)
    begin
    if(clr)
        q=1'b0;
    else    
        q<=d;
    end
endmodule
