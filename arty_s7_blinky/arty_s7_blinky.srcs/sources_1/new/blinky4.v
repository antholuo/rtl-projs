`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 11:17:49 PM
// Design Name: 
// Module Name: blinky4
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


module blinky4(
    input clk,
    input sw,
    output [0:3] led
    );
    
// reg for counter
reg[24:0] count = 0;

assign led[0] = count[21];
assign led[1] = count[22];
assign led[2] = count[23];
assign led[3] = count[24];

always @(posedge clk) begin
  count <= count + 1;
end
endmodule
