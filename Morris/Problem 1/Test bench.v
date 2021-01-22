module adder_sub_tb();
reg [3:0]a,b;
reg m;
wire [3:0]sum;
wire carry,v;

adder_subtractor my_add_sub(a,b,v,sum,carry,m);

initial
    begin
        #10 m = 0; a = 4'hA; b = 4'h5;
        #20 m=1; 
        #10 b = 4'h3;
        #100 $finish;
    end 
endmodule
