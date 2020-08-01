`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/30 14:50:22
// Design Name: 
// Module Name: FIR_top
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
module FIR_top(
		input clk,
		input rst,
		output DAC_Din,
		output DAC_Sync
		);
		wire [7:0]spo;
		wire [8:0]address;
		wire [7:0]fir_out;
		dist_mem_gen_0 your_instance_name (
			.a(address),
			.spo(spo)
		);
		FIR_count count(
			.clk(clk),
			.rst(rst),
			.address(address)
		);
		FIR_filter filter(
			.clk(clk),
			.rst(rst),
			.fir_in(spo),
			.fir_out(fir_out)
		);
		 Driver_DAC  DAC(//.clk_100MHz(clk),
		 .clk(clk),
		 .DAC_Data(fir_out),
		 .DAC_En(rst),
		 .DAC_Din(DAC_Din),
		 .DAC_Sync(DAC_Sync));
		
endmodule
