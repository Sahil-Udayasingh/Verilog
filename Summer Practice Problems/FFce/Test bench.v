module ffps_tb();
reg clk,d,ce;
wire q;

ffps FFPS(clk,q,d,ce);
initial
    begin
    clk=0;
    d=1'b1;
    ce=1'b0;
    
    #10
    ce=1'b1;
    
    #20
    ce=1'b0;
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
