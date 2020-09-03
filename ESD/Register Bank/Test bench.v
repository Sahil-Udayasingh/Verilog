module signex_tb();

reg clk;
reg [15:0] instruction;
 
wire [31:0] ex_instruction;

sign_extend F1(clk,instruction,ex_instruction);

initial
    begin
        #5 instruction = 40;
        #15 instruction = -30;
        #20 $stop;
    end
    
initial
    begin 
        clk = 0;
    end
    
always #5 clk = ~ clk;    

endmodule
