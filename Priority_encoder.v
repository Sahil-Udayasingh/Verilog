module encoder (code, din);
  input [7:0] din;
  output [2:0] code;
  assign code =(din[0] ==1'b1) ? 3'b000:
               (din[1] ==1'b1) ? 3'b001:
               (din[2] ==1'b1) ? 3'b010:
               (din[3] ==1'b1) ? 3'b011:
               (din[4] ==1'b1) ? 3'b100:
               (din[5] ==1'b1) ? 3'b101:
               (din[6] ==1'b1) ? 3'b110:
               (din[7] ==1'b1) ? 3'b111:
               (din[0] ==1'b0) ? 3'bxxx:3'b000;
                
               
endmodule
