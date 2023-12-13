`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:19:59 05/24/2022 
// Design Name: 
// Module Name:    CHIA_XUNG_XA 
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
module CHIA_XUNG_XA(
    input p,
    output cd
    );

wire [7:0] r_next;
reg [7:0] r_reg;

initial
r_reg = 0;
always @ ( posedge clk)
r_reg <= r_next;
assign r_next = ( r_reg == 100) ? 0 : r_reg + 1 ;
assign cd = (r_reg <= 50) ? 0 : 1 ;

wire clk;
CAM_BIEN_XA cambien(p,clk);

endmodule