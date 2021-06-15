`timescale 1ns / 1ps
module testASCII;

reg clk;
reg [0:2] startPos = 3'b0;
reg [0:2] incAmount = 3'b1;
reg enable;
wire wrap;
wire [0:7] pass;

ASCIICounter counter(clk, startPos, incAmount, enable, pass, wrap);

initial begin
    clk = 0;
    enable = 0; #5
    enable = 1;
    
    repeat(60)
    begin
        #5 clk = ~clk;
    end
end
endmodule
