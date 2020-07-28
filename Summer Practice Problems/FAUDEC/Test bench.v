module FA_dec_tb();
wire sum,carry;
reg  x,y,z;

FA_u_dec my_add(x,y,z,sum,carry);
initial
begin
x=1'b0;y=1'b0;z=1'b0;
#5
x=1'b0;y=1'b0;z=1'b1;
#5
x=1'b0;y=1'b1;z=1'b0;
#5
x=1'b0;y=1'b1;z=1'b1;
#5
x=1'b1;y=1'b0;z=1'b0;
#5
x=1'b1;y=1'b0;z=1'b1;
#5
x=1'b1;y=1'b1;z=1'b0;
#5
x=1'b1;y=1'b1;z=1'b1;
#5
$finish;
end
endmodule
