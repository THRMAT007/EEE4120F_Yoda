//Author: Ian Edwards EDWIAN004
//15/06/2021
//EEE4120F YODA Project

//test bench for testing hashing unit

`timescale 1 ns/1 ps

module top;
reg          clk;
reg          rst;
reg  [0:127] m_in;
reg    [0:7] m_in_w;
reg          m_in_val;

wire [0:127] m_out;
wire         m_out_val;
wire         ready;

pancham MD5(
        .clk           (clk)
      , .reset	       (rst)
      , .msg_in        (m_in)
      , .msg_in_width  (m_in_w)
      , .msg_in_valid  (m_in_val)
                        
      , .msg_output    (m_out)
      , .msg_out_valid (m_out_val)
      , .ready         (ready)
      );

reg [0:127] target_hash;
wire equal;
reg compreset;

comparator comp(m_out_val, clk, compreset , m_out, target_hash, equal);

initial 
   clk = 1'b0;
always 
   #5 clk = ~clk;
// Reset
initial begin // {
   rst = 1'b1;
   #12
   rst = 1'b0;
end // }

initial begin // {
   target_hash = 128'hf96b697d7cb7938d525a2f31aaf161d0; //hsahed version of message digest, in reverse.
   m_in_val = 1'b0;
   // Wait till the chip comes out of reset and ready 
   wait (!rst & ready);
   // Wait till the chip becomes ready
   #10 $display ("-------- MD5 TEST 1 --------");
   m_in     = "tsegid egassem"; // "message digest" reversed
   m_in_w   = 8'h70;
   m_in_val = 1'b1;
   #10;
   m_in_val = 1'b0;
   // Wait for the result to come out; then compare
   wait(m_out_val);
   #10
   if (m_out == 128'hf96b697d7cb7938d525a2f31aaf161d0) 
      $display (" MD5 TEST 1: PASSED");
   else 
      $display (" MD5 TEST 1: FAILED");
   #100   
 // ---- end of test 1 ---- //
 
   $display ("-------- MD5 TEST 2 --------");
   // -- This test is for an incorrect hash -- //
   
   target_hash = 128'h1a1dc91c907325c69271ddf0c944bc72;
   rst = 1'b1;
   compreset = 1'b1;
   #12
   compreset = 1'b0;
   rst = 1'b0;
   m_in_val = 1'b0;
   #10

   wait(ready);
   // Wait till the chip becomes ready
   m_in     = "ssad"; // should be the reverse of "pass" so "ssap"
   m_in_w   = 8'h20; //length of ASCII entry - each ASCII value is 1 byte. So length of bits here is 32 or 20 in hex
   m_in_val = 1'b1;
   #10;
   m_in_val = 1'b0;
   // Wait for the result to come out; then compare
   wait(m_out_val);
   #10;
   if (m_out == 128'h1a1dc91c907325c69271ddf0c944bc72) 
      $display (" MD5 TEST 2: PASSED");
   else 
      $display (" MD5 TEST 2: FAILED");
   #100;
    
  // ---- end of Test 2 ---- //
  
   target_hash = 128'h58fd9edd83341c29f1aebba81c31e257;
   rst = 1'b1;
   compreset = 1'b1;
   #12;
   compreset = 1'b0;
   rst = 1'b0;
   m_in_val = 1'b0;
   #10;
   // Wait till the chip comes out of reset and ready 
   wait(ready);
   // Wait till the chip becomes ready
   #10 $display ("-------- MD5 TEST 3 --------");
   m_in     = "pred"; // "message digest" reversed
   m_in_w   = 8'h20;
   m_in_val = 1'b1;
   #10;
   m_in_val = 1'b0;
   // Wait for the result to come out; then compare
   wait(m_out_val);
   #10;
   if (m_out == 128'h58fd9edd83341c29f1aebba81c31e257) 
      $display (" MD5 TEST 3: PASSED");
   else 
      $display (" MD5 TEST 3: FAILED");
   #100;  
end
endmodule
