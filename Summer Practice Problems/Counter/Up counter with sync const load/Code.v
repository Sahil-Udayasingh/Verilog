module counter_4b(clk,load,q);
input clk,load;
//input  [3:0] d; 
output [3:0] q;
reg    [3:0] temp;

always @(posedge clk)
    begin
        if(load)
            temp <= 4'b1010;
        else 
            temp <= temp + 1'b1;    
    end
        assign q = temp;
endmodule
