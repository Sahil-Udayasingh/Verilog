module counter_4b(clk,s,q);
input clk,s;
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk)
    begin
        if(s)
            temp <= 4'b1111;
        else 
            temp <= temp - 1'b1;    
    end
        assign q = temp;
endmodule
