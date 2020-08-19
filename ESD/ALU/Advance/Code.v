module ALU(Rtype,Itype,Y);
   
    input [31:0] Rtype;
    input [31:0] Itype;
    //input [3:0] Ctrl;
    output [31:0] Y;
    reg [31:0] Y;
    wire [5:0] opcode,opcodeI,func;
    reg [4:0] rd,rs,rt,shift,rsI,rdI,Imm;
      
    assign opcode = Rtype[31:26];
    assign opcodeI = Itype[31:26];
    
   assign func = Rtype[5:0];      /* This part will be showing error and I'm trying to rectify it*/
    assign rd = Rtype[25:21];
    assign rs = Rtype[20:16];
    assign rt = Rtype[15:21];
    assign shift = Rtype[10:6];
    
    assign rsI = Itype[25:21];
    assign rdI = Itype[20:16];
    assign Imm = Itype[15:0];
    
    
    always@*
        begin
            case(opcode)
                6'b000000: rd <= rs&rt;   //AND Operation.
                6'b000001: rd <= rs|rt;   //OR Operation.
                6'b000010: rd <= ~rs;      //NOT Operation.
                6'b000011: rd <= rs*rt;   //Multiplication.
                6'b000100: rd <= rs/rt;   //Division.
                6'b000101: rd <= rs>>shift;  //Right Shift Operation.
                6'b000110: rd <= rs<<shift;  //Left Shift Operation
                //6'b001010: rdI <= rs + Imm; //Addition with R-type and I-type ISA.
                //6'b001011: rdI <= rs - Imm; //Subtraction with R-type and I-type ISA.             
            endcase
        end
    
endmodule
