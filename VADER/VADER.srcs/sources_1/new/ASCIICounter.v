`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/15/2021 03:25:51 PM
// Design Name: 
// Module Name: ASCIICounter
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


module ASCIICounter(
    clk,
    reset,
    startPos,
    incAmount,
    enable,
    generatedPass,
    wrap
    );
    
// inputs
input clk;
input reset;
input [0:2] startPos; //4 in parallel max
input [0:2] incAmount;
input enable;

//outputs
output reg [0:7] generatedPass;
output reg wrap;

//internal registers
reg [0:4] subcount = 5'd0; //set to 0
reg [0:7] temp = 8'h61; //initalize to starting character 'a'. Can also just assign to "a".
reg runOnce = 1'b0;

initial begin
    runOnce = 0;
    temp = 8'h61 + startPos; //offset by startPos of thread/parallel core.
end


always @ (posedge reset)
begin
    wrap = 0;
    temp = "a";
    runOnce = 0;
    generatedPass = 8'h0;
end

always @ (posedge clk)
    begin
        if (enable)
            begin
                if (runOnce == 0)
                    begin
                        runOnce <= 1;
                       // subcount = subcount + startPos;
                        temp = temp + startPos; //offset by startPos of thread/parallel core
                    end
                else if (temp + incAmount < 'h7B) begin
                        temp = temp + incAmount;
                        wrap <= 0;
                    end
                else begin
                    wrap = 1;
                    temp = "a";
                end
            end
        if (runOnce == 0) begin
            wrap <= 0;
            temp <= "a"; //can use ASCII or hexadecimal. 
        end
        generatedPass = temp;
    end

endmodule
