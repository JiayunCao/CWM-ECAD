//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Electronic Dice
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Electronic Dice
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
`define clk_t 20
module fsm_tp;


reg   clk,rst;
reg   button;


wire  [2:0]  throw ;

fsm  test(
        .clk(clk),
				.rst(rst),
				.button(button),
				
				.throw(throw) 

            ); 





				  				 
initial
begin

					rst=0;
					clk=1;
					button=1'b0;
					#(`clk_t*10);
					rst=1;


					#(`clk_t*20);
					button=1;
					#(`clk_t);
					button=0;
					#(`clk_t);
					button=1;
					#(`clk_t);
					button=0;
					#(`clk_t);
					button=1;
					#(`clk_t);
					button=0;
					#(`clk_t);
					button=1;
					#(`clk_t);
					button=0;


					#200000;
					$stop;

 

end
 
always #(`clk_t/2) clk=~clk;

endmodule
