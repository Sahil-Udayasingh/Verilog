module pc(out1,out,clk,reset);

  output [31 : 0] out1;
  input            clk, reset;
  input [31 : 0] out;

  reg [31 : 0]   out1;
  wire            clk, reset;
  wire [31 : 0] out;
    
  always @(posedge clk or posedge reset)
    if (reset)
        assign out1 = 0;
    else    
        out1 <= out + 1;

  endmodule
