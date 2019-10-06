`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2019 05:40:28 PM
// Design Name: 
// Module Name: first_system
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


module first_system(led,sw);
input [1:0]sw;
output [1:0]led;

wire and_out,or_out;

assign and_out  = sw[0] & sw[1];
assign or_out   = sw[0] | sw[1];
assign led[0]     = and_out ^ or_out;
assign led[1]     = ~ sw[1];

endmodule
