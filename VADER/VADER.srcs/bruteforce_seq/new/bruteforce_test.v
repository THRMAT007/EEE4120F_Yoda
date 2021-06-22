//Author: Ian Edwards EDWIAN004
//15/06/2021
//EEE4120F YODA Project
//Testbench for brute force sequential password cracking
`timescale 1ns / 1ps
module bruteforce_test;

//Inputs
reg clk;
reg [0:7] startPos = 3'b0;
reg [0:7] incAmount = 3'b1;
reg reset;
//reg enable;

//reg  [0:127] m_in;
//reg    [0:7] m_in_w;
//reg          m_in_val;
wire ready;

reg compreset;

//outputs
wire [127:0] generatedPass;
wire [0:7] passWidth;

wire [0:127] m_out;
wire         m_out_val;

reg [127:0] target_hash;
wire equal;

//Instantiate modules
pancham MD5(clk, reset, generatedPass, passWidth, ready, m_out, m_out_val, ready);

comparator comp(m_out_val, clk, compreset , m_out, target_hash, equal);

PassGen textGenerator(clk, reset, ready, startPos, incAmount, generatedPass, passWidth);

always begin
    #5 clk = ~clk;
    if (equal)
        $stop;
end

initial begin
    target_hash = 'h810EECD8FEDCCD3F1E4AD5CECAE3F689; //pass reversed and hashed
    //enable = 0;
    clk = 0;
    startPos = 0;
    incAmount = 1;
    reset = 1;
    compreset = 1'b1;
    #12;
    reset = 0;
    compreset = 1'b0;
    #12;
    //m_in_val = 1;
end
endmodule
