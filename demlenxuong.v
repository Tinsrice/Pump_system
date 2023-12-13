`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:08:18 05/24/2022 
// Design Name: 
// Module Name:    demlenxuong 
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




module demlenxuong(
input high,low,p,
output [7:0] q
    );
	 
wire cu,cd;
reg [7:0] r_next;
reg [7:0] r_reg;

initial   r_reg = 255;
//always @(posedge cu,posedge cd)
//r_reg <= r_next;

always@(posedge cu) 
begin
r_next = r_reg + 1;
r_reg <= r_next;
end


always@(posedge cd && p==1)
begin
r_next = r_reg - 1;
r_reg <= r_next;
end 


//assign r_next =(ud==0) ? r_reg +1: r_reg -1;
assign q = r_reg;

chiaxung chialen (high, low, cu);
CHIA_XUNG_XA chiaxa (p,cd);

endmodule
