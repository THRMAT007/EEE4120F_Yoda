`timescale 1ns / 1ps
module bruteforce_test;

//Inputs
reg clk;
reg [0:7] startPos = 3'b0;
reg [0:7] incAmount = 3'b1;
reg reset;
//reg enable;

reg  [0:127] m_in;
reg    [0:7] m_in_w;
reg          m_in_val;
wire ready;

reg compreset;

//outputs
wire [0:127] generatedPass;
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
//    if (ready == 1)
//    begin
//        compreset = 1'b1; #5;
//        compreset = 1'b0; #5;
//        m_in_val = 1'b0; 
//    end
end

initial begin
    target_hash = "a";
    //enable = 0;
    clk = 0;
    startPos = 0;
    incAmount = 1;
    reset = 1;
    compreset = 1'b1;
    #12;
    reset = 0;
    compreset = 1'b0;
    #12
    m_in_val = 1;
    
    //enable = 1;//enable is a common wire to PassGen and t,o the hashing unit.
    // Wait till the chip comes out of reset and ready 
   // wait (!reset & enable);
    // Wait till the chip becomes ready
    //m_in     = generatedPass;
    //m_in_w   = 8'h70;
    //m_in_val = 1'b1;
    //m_in_val = 1'b0;
    // Wait for the result to come out; then compare
    //wait(m_out_val);
end
endmodule
