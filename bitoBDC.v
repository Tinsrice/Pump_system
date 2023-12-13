`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:00:18 05/23/2022 
// Design Name: 
// Module Name:    bitoBDC 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module binarytobcd(
	 input high, low, p,
	 output [3:0] ones,tens,
	 output [1:0] hundreds );
	 wire [7:0] a;
	 wire [3:0] c1,c2,c3,c4,c5,c6,c7;
	 wire [3:0] d1,d2,d3,d4,d5,d6,d7;
	 assign d1={1'b0,a[7:5]};
	 assign d2={c1[2:0],a[4]};
	 assign d3={c2[2:0],a[3]};
	 assign d4={c3[2:0],a[2]};
	 assign d5={c4[2:0],a[1]};
	 assign d6={1'b0,c1[3],c2[3],c3[3]};
	 assign d7={c6[2:0],c4[3]};
	 add m1(d1,c1);
	 add m2(d2,c2);
	 add m3(d3,c3);
	 add m4(d4,c4);
	 add m5(d5,c5);
	 add m6(d6,c6);
	 add m7(d7,c7);
	 assign ones = {c5[2:0],a[0]};
	 assign tens = {c7[2:0],c5[3]};
	 assign hundreds = {c6[3],c7[3]};
	 
	demlenxuong demlen(high, low, p, a );
endmodule