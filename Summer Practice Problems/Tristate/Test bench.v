module tris_tb();
reg i,t;
wire o;

tris TRI(t,i,o);

initial
    begin
        #10
        t=1'b0;
        i=1'b1;
        
        #40
        t=1'b1;
        
        #60
        i=1'b0;
        
        #80
        t=1'b0;
        
        #100
        $finish;
    end
endmodule
