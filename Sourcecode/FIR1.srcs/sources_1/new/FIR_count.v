`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 13:30:21
// Design Name: 
// Module Name:FIR_count
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
module FIR_count(
		input clk,
		input rst,  
		output reg [8:0]address
		);
		always @(posedge clk)
			if(rst)
			begin
				address<=9'd0;
			end
			else
			begin
				if(address==9'd400)
					address<=9'd0;
				else
					address<=address+9'd1; 
			end
endmodule
