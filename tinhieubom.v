`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:16:04 05/24/2022 
// Design Name: 
// Module Name:    tinhieubom 
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
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:45:59 05/24/2022 
// Design Name: 
// Module Name:    tinhieubom 
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
module tin_hieu_bom(
	 input high,low,
	 output reg clkbom,
	 output reg capxung );

initial begin capxung=0; end

always@(high,low,capxung)
begin
if( low==0 && high== 0) 
capxung = 1;
else if ( low==1 && high==1)
capxung = 0;
else 
capxung = capxung;	
end

initial begin clkbom = 0; end //tao xung clk tu 0 va 1

always@(capxung,clkbom)
begin
#500000;
	if (capxung)
	clkbom <= ~clkbom ;
	else
	clkbom <= clkbom ;	
end
endmodule



