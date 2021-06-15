`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2021 01:13:06 PM
// Design Name: 
// Module Name: comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator(
    verify_valid,
    clk,
    reset,
    verify_hash,
    target_hash,
    equal
    );
//inputs
input verify_valid;
input clk;
input reset;
input [0:127] verify_hash;
input [0:127] target_hash;

//outputs
output reg equal;

always @ (reset)
begin
    equal <= 0;
end
always @ (posedge clk or posedge verify_valid)
    begin
        if (verify_valid == 1)
        begin
            if (verify_hash == target_hash)
                equal <= 1;
            else
                equal <= 0;
        end
    end
endmodule
