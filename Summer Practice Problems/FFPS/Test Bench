module ffps_tb();
reg clk,d;
wire q;

ffps FFPS(clk,q,d);
initial
    begin
    clk=0;
    d=1'b0;
    
    #20
    d=1'b1;
    
    #60
    d=1'bx;
    end

initial
begin    
forever
begin
#5 clk=~clk;    
end
end
endmodule
