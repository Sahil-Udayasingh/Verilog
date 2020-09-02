module sign_extend(clk,instruction,ex_instruction);
input [15:0] instruction;
input clk;
output [31:0] ex_instruction;

reg [31:0] ex_instruction;
wire [15:0] instruction;

always @(posedge clk)
    begin
    ex_instruction[15:0] = instruction[15:0];
    ex_instruction[31:16] = {16{instruction[7]}}; 
    end
endmodule
