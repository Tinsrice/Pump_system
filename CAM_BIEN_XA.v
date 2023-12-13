`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:27 05/24/2022 
// Design Name: 
// Module Name:    CAM_BIEN_XA 
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
module CAM_BIEN_XA(
    input p,
    output reg clk
    );
	 
initial 
	begin
	clk = 0; 
	end
	
always
begin
#500000;
	if (p)
	clk = ~clk ;
	else
	clk = 0;	
end
endmodule