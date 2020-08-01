`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 14:04:38
// Design Name: 
// Module Name: FIR_tb
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
module FIR_tb();
		reg clk; 
		reg rst; 
		//wire [7:0] fir_out; 
		 wire DAC_Din;
		 wire DAC_Sync;
		initial 
		begin
			clk=1'b0; 
			rst=1'b1; 
			#50 rst=1'b0; 
		end
		always #10 clk=~clk; 
		FIR_top FIR_tb(.clk(clk),.rst(rst),.DAC_Din(DAC_Din),.DAC_Sync(DAC_Sync));
endmodule
