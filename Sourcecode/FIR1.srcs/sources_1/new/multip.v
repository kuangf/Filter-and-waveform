`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/29 10:17:23
// Design Name: 
// Module Name: multip
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
module multip(
		input clk,
		input rst,
		input [15:0]in1, 
		input [7:0]in2,
		output reg[22:0]out
		);
		reg [15:0]comp1,truef1;
		reg [7:0]comp2,truef2; 
		reg symbol;//����λ
		reg [21:0]temp; 
		reg [22:0]truef_out; 
		always@ (negedge clk )
			if(rst)//��λʹ�ܣ��Ĵ�������
			begin
				comp1<=8'b0;
				comp2<=8'b0;
				truef1<=8'b0;
				truef2<=8'b0;
				symbol<=1'b0;
				temp<=14'b0;
				truef_out<=15'b0;
				out<=31'b0;
			end
			else
			begin
				comp1<=in1;//����Ĵ�����ֵ
				comp2<=in2;   
				truef1<=(comp1[15]==0)?comp1:{comp1[15],~comp1[14:0]+1'b1}; 
				truef2<=(comp2[7]==0)?comp2:{comp2[7],~comp2[6:0]+1'b1};
				symbol<=truef1[15]^truef2[7];//������ķ���λ
				temp<=truef1[14:0]*truef2[6:0];//������Ч�������
				truef_out<={symbol,temp};//�������ԭ��
				out<=(truef_out[22]==0)?
				truef_out:{truef_out[22],~truef_out[21:0]+1'b1};
			end
endmodule
