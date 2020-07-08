module maj_det_tb();
wire f;
reg a,b,c;

maj_det MAJ(a,b,c,f);

initial
begin
a=1'b0;b=1'b0;c=1'b0;
#5
a=1'b0;b=1'b0;c=1'b1;
#5
a=1'b0;b=1'b1;c=1'b0;
#5
a=1'b0;b=1'b1;c=1'b1;
#5
a=1'b1;b=1'b0;c=1'b0;
#5
a=1'b1;b=1'b0;c=1'b1;
#5
a=1'b1;b=1'b1;c=1'b0;
#5
a=1'b1;b=1'b1;c=1'b1;
#5
$finish;
end

endmodule
