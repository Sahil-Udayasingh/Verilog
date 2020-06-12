module ffps_tb();
reg clk,ce,pre;
reg  [3:0] d;
wire [3:0] q;

ffps FFPS(clk,q,d,ce,pre);
initial
    begin
    clk=0;
    d=4'b1001;
    ce=1'b0;
    pre=1'b0;
    
    #10
    ce=1'b1;
    
    #20
    ce=1'b0;
    d=4'b0110;
    pre=1'b1;

    end

initial
begin    
forever
begin
#5 clk=~clk;    
end
end
endmodule
