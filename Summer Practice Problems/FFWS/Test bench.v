module ffps_tb();
reg clk,d,s;
wire q;

ffps FFPS(clk,q,d,s);
initial
    begin
    clk=0;
    d=1'b0;
    s=1'b1;
    
    #10
    s=1'b1;
    
    #20
    s=1'b0;
    d=1'b1;

    end

initial
begin    
forever
begin
#5 clk=~clk;    
end
end
endmodule
