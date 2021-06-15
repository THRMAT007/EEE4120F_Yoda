`timescale 1ns / 1ps
module PassGen(
    clk,
    reset,
    enable,
    startPos,
    incAmount,
    generatedPass,
    passWidth
    );
    
input clk;
input reset;
input enable;
input [0:7] startPos;
input [0:7] incAmount;
output reg [0:127] generatedPass;
output reg [0:7] passWidth = 8; //only doing passwords up to 7 ASCII wide. So 8 bits can represent how many bits wide the string is (if 4 characters, thats 32 bits so here 32 is inputted).

wire w0;
wire w1;
wire w2;
wire w3;
wire w4;
wire w5;
wire w6;

reg [0:127] tempPass = 128'h0; //128 bit hex value showing intermediate password value.
reg [0:127] outputPass = 128'h0;

wire [0:7] out0;
wire [0:7] out1;
wire [0:7] out2;
wire [0:7] out3;
wire [0:7] out4;
wire [0:7] out5;
wire [0:7] out6;
//wire [0:7] out7;

//on each clk posedge this will now count.
ASCIICounter c0(clk, reset, startPos, incAmount, enable, out0, w0);
ASCIICounter c1(w0, reset, startPos, incAmount, enable, out1, w1);
ASCIICounter c2(w1, reset, startPos, incAmount, enable, out2, w2);
ASCIICounter c3(w2, reset, startPos, incAmount, enable, out3, w3);
ASCIICounter c4(w3, reset, startPos, incAmount, enable, out4, w4);
ASCIICounter c5(w4, reset, startPos, incAmount, enable, out5, w5);
ASCIICounter c6(w5, reset, startPos, incAmount, enable, out6, w6);
//ASCIICounter c7(w6, reset, startPos, incAmount, enable, out2, w7);

//reset would be done first to clear outputs, wrap values etc. 

always @ (reset)
begin
    generatedPass <= 'h61000000000000000000000000000000;
    passWidth <= 8;
    tempPass <= 8'h0;
    outputPass <= 8'h0;
end

// One now needs to get the length of the password (passWidth) and store the passwords and output.
always @ (posedge(clk))
begin
    generatedPass[0:7] <= out0;
    generatedPass[8:15] <= out1;
    generatedPass[16:23] <= out2;
    generatedPass[24:31] <= out3;
    generatedPass[32:39] <= out4;
    generatedPass[40:47] <= out5;
    generatedPass[48:55] <= out6;
//    generatedPass[56:63] <= out7;
    
    if (out6 != 0)
        passWidth <= 56;
    else
    if (out5 != 0)
        passWidth <= 48;
    else
    if (out4 != 0)
        passWidth <= 40;
    else
    if (out3 != 0)
        passWidth <= 32;
    else
    if (out2 != 0)
        passWidth <= 24;
    else
    if (out1 != 0)
        passWidth <= 16;
end
//ASCIICounter c0(clk, startPos, incAmount, enable, pass, w0);
//ASCIICounter c0(clk, startPos, incAmount, enable, pass, w0);
//ASCIICounter c0(clk, startPos, incAmount, enable, pass, w0);



endmodule
