module counter_4b(clk,clr,ce,q);
input clk,clr,ce;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk or posedge clr )
    begin
        if(clr)
            temp <= 4'b0000;
        else if(ce)
            temp <= temp + 1'b1;    
    end
        assign q = temp;
endmodule
