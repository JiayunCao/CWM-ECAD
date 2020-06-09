//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Up/Down counter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - counter
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

module top_tb(
    );
    

`timescale 1ns/1ns

`define clk_t 20
module counter_tb;


reg   clk,rst;
reg   enable;
reg   direction;

wire  [7:0]counter_out;


counter u1(
                     .clk(clk),
					 .rst(rst),
					 .enable(enable),
					 .direction(direction),
					 
					 .counter_out(counter_out)
					
              );

				  				 
initial
begin

  rst=0;
  clk=1;
  enable=1'b1;
  direction=1'b1;
 #(`clk_t*10);
  rst=1;


 #(`clk_t*40);
 enable=0;
 #(`clk_t*40);
 //enable=1;
 #(`clk_t*40);
 direction=1'b0;
 

end
 
always #(`clk_t/2) clk=~clk;

endmodule
 
endmodule 
