module seq_det(x,clk,rst,out);
input x,clk,rst;
output reg out;
reg [1:0]state;
parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;

always@(posedge clk, posedge rst)
   
    if(rst)
        begin
            state<=s0;
            out<=0;
        end
    else
        begin
            case(state)
            s0:begin
                    state<=x?s1:s0;
                    out<=0;
                end
            s1:begin
                    state<=x?s1:s2;
                    out<=0;
                end
            s2:begin
                    state<=x?s3:s0;
                    out<=0;     
                end
            s3:begin
                    state<=x?s2:s1;
                    out<=x?1:0;
               end
            default:begin
                        state<=s0;
                        out<=0;
                    end        
        endcase
      end         
endmodule
