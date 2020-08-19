module ALU_tb();

    reg [4:0] A;
    reg [4:0] B;
    reg [5:0] Ctrl;
    reg [5:0] shift;
    reg [15:0] Imm;
    wire [4:0] Y,Y1;
    
    ALU F1(A,B,Imm,shift,Y,Y1,Ctrl);
    
    initial 
        begin
        A = 5'b00010;
        B = 5'b00001;
        shift = 5'b00001;
        Imm = 16'b0000000000001100;
        #10 Ctrl = 6'b000000;
        #10 Ctrl = 6'b000001;
        #10 Ctrl = 6'b000010;
        #10 Ctrl = 6'b000011;
        #10 Ctrl = 6'b000100;
        #10 Ctrl = 6'b000101;
        #10 Ctrl = 6'b000110;
        #10 Ctrl = 6'b001010;
        #10 Ctrl = 6'b001011; 
        #10 $stop;        
        end
    
endmodule
