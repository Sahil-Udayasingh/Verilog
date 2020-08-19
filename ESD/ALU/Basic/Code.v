module ALU(A,B,Y,Ctrl);
   
    input [31:0] A;
    input [31:0] B;
    input [4:0] Ctrl;
    output [31:0] Y;
    reg [31:0] Y;
    
    always@*
        begin
            case(Ctrl)
                4'b0000: Y <= A&B;   //AND Operation.
                4'b0001: Y <= A|B;   //OR Operation.
                4'b0010: Y <= ~A;      //NOT Operation.
                4'b0011: Y <= A * B;   //Multiplication.
                4'b0100: Y <= A / B;   //Division.
                4'b0101: Y <= A>>3;  //Right Shift Operation.
                4'b0110: Y <= A<<2;  //Left Shift Operation
                //4'b0000: Y <= A + B; //Addition with R-type and I-type ISA.
                //4'b0000: Y <= A + B; //Subtraction with R-type and I-type ISA.             
            endcase
        end
    
endmodule
