module counter_4b(clk,load,d,q);
input clk,load;
input  [3:0] d; 
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk or posedge load)
    begin
        if(load)
            temp <= d;
        else 
            temp <= temp + 1'b1;    
    end
        assign q = temp;
endmodule
