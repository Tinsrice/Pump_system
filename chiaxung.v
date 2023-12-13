`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:50:49 05/22/2022 
// Design Name: 
// Module Name:    chiaxung 
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
module chiaxung(
    input high, low,
    output o
    );

wire [7:0] r_next;
reg [7:0] r_reg;

initial
r_reg = 0;
always @ ( posedge clkbom)
r_reg <= r_next;
assign r_next = ( r_reg == 100) ? 0 : r_reg + 1 ;
assign o = (r_reg <= 50) ? 0 : 1 ;

wire clkbom,capxung;
tin_hieu_bom t1 ( high, low, clkbom,capxung);

endmodule
