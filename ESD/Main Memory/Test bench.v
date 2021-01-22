`timescale 1ns / 1ps
module main_mem_tb();

reg clk=0;
reg [31:0] address,data_in;
reg readEn,writeEn;

wire [31:0] data_out;

main_mem F1(.clk(clk),
            .addr(address),
            .rEnable(readEn),
            .wEnable(writeEn),
            .din(data_in),
            .dout(data_out));

always #5 clk = !clk;

initial
    begin
        #10 address = 32'h00000000; data_in = 32'h0221700;
        #10 readEn=0;writeEn=0;
        #10 readEn=0;writeEn=1;
        #10 readEn=1;writeEn=0;
        #10 address = 32'h0121800; data_in = 32'h0021a00;
        #10 readEn=1;writeEn=1;
        #10 writeEn=0;
        #10 address = 32'h0111800;
        #50 $finish;
    end

endmodule
