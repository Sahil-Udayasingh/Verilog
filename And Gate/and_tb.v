module and_tb;
wire t_c;
reg t_a, t_b;

and1 my_gate( .a(t_a), .b(t_b), .c(t_c) );

initial
begin
$monitor(t_a, t_b, t_c);

t_a = 1'b0;
t_b = 1'b0;

#5
t_a = 1'b0;
t_b = 1'b1;

#5
t_a = 1'b1;
t_b = 1'b0;

#5
t_a = 1'b1;
t_b = 1'b1;

end
endmodule
