module pc(q,ip,clk,clr);
input clk,clr;
input [31:0] ip;
output [31:0] q;
reg    [31:0] temp1;
wire [31:0] ip;

always @(posedge clk or posedge clr)
    begin
        if(clr)
            temp1 <= 32'h00000000;
        else 
            temp1 <= ip + 1'b1;    
    end
        assign q = temp1;
endmodule
