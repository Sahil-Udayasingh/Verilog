module ALU_tb();

    reg [31:0] A;
    reg [31:0] B;
    reg [4:0] Ctrl;
    wire [31:0] Y;
    
    ALU F1(A,B,Y,Ctrl);
    
    initial 
        begin
        A = 32'b00000000000000000000000000000010;
        B = 32'b00000000000000000000000000000001;
        #10 Ctrl = 4'b0000;
        #10 Ctrl = 4'b0001;
        #10 Ctrl = 4'b0010;
        #10 Ctrl = 4'b0011;
        #10 Ctrl = 4'b0100;
        #10 Ctrl = 4'b0101;
        #10 Ctrl = 4'b0110; 
        #10 $stop;        
        end
    
endmodule
