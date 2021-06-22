//Author: Ian Edwards EDWIAN004
//15/06/2021
//EEE4120F YODA Project
//Test bench to test password generator.

`timescale 1ns / 1ps
module passwordGenTest;

reg clk;
reg [0:7] startPos = 3'b0;
reg [0:7] incAmount = 3'b1;
reg reset;
reg enable;
wire [0:127] generatedPass;
wire [0:7] passWidth;

PassGen textGenerator(clk, reset, enable, startPos, incAmount, generatedPass, passWidth);

initial begin
    enable = 0;
    clk = 0;
    startPos = 0;
    incAmount = 1;
    reset = 1;
    #5
    reset = 0;
    enable = 1;
end

always begin
    #5 clk = ~clk;
end


endmodule