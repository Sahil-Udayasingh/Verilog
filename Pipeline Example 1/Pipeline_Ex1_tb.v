module pipe_test;
parameter N = 10;
wire [N-1:0] F;
reg [N-1:0] A,B,C,D;
reg clk;

pipe_ex pipe1(F,A,B,C,D,clk);

initial clk=0;
 always #10 clk = ~clk;
 
 initial
 begin
 #5  A=10;B=12;C=6;D=7;
 #20 A=4;B=8;C=3;D=18;
 end

initial
begin
$monitor("Time: = %d,F=%d",$time,F);
#60 $finish;
end 

endmodule