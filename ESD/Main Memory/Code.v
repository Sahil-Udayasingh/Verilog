`timescale 1ns / 1ps

module MainMemoryModule(
    input wire clk,
    input wire [31:0] address,
    input wire readEn,
    input wire writeEn,
    input wire [31:0] data_in,
    output reg [31:0] data_out
    );
reg [31:0] memory[102:0];

always @(address) 
    begin
    memory[0] <= 32'b00000000001000100001100000000000;
    data_out = memory[address];
end

always @(data_in) 
    begin
    if(writeEn & !readEn) begin
        memory[address] = data_in;
    end 
end

endmodule
