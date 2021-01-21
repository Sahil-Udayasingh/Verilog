module test;
  
  reg [31:0] out;  
  wire [31:0] out1; 
  reg reset = 0;
  initial 
    begin
     # 10 out = 32'h00000010;
     # 17 reset = 1;
     # 11 reset = 0;
     # 100 $finish;
    end

  reg clk = 0;
  always #1 clk = !clk;
  
  pc C1(out1,out, clk, reset);

endmodule

