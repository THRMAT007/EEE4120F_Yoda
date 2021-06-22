//Author: Ian Edwards EDWIAN004
//15/06/2021
//EEE4120F YODA Project
//Test bench to test ASCII counter.
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
