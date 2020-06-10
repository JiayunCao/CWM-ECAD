//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Traffic Lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Traffic Lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
`define clk_t 20
module red_tb;


reg    clk;
wire   red;
wire   amber;
wire   green;





red test(


    .clk(clk),
    .red(red),
    .amber(amber),
    .green(green)
	 
	 
    );





				  				 
initial
begin

					clk=1;

					#20000;
					$stop;

 

end
 
always #(`clk_t/2) clk=~clk;

endmodule
