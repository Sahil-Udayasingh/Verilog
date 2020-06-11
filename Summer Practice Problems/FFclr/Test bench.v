module ffps_tb();
reg clk,d,clr;
wire q;

ffps FFPS(clk,q,d,clr);
initial
    begin
    clk=0;
    d=1'b1;
    clr=1'b1;
    
    #10
    clr=1'b1;
    
    #20
    clr=1'b0;
    d=1'b0;

    end

initial
begin    
forever
begin
#5 clk=~clk;    
end
end
endmodule
