module ffps(clk,q,d,ce);
input clk,d,ce;
output q;
reg q;

always @(negedge clk)
    begin
    if(ce)
        q<=d;
    end
endmodule
