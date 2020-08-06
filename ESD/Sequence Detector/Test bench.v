module seq_det_tb();
reg clk,rst,x;
wire out;

seq_det f1(x,clk,rst,out);
initial
    begin
        clk = 1;
        rst = 1;
        #10 rst = 0;
    end

always
    #5 clk = ~clk;

initial
    begin
    #8 x=1;
    #10 x=0;
    #8 x=1;
    #8 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=0;
    #10 x=1;
    #10 x=1;
    end
endmodule
