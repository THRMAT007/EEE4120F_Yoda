`timescale 1ns / 1ps
//Author: Ian Edwards EDWIAN004
//15/06/2021
//EEE4120F YODA Project

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
//set equal HIGH at any point that verify_valid is high.
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
