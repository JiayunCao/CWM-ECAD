//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - Dice or Traffic Lights?
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - Dice or Traffic Lights?
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////
module top (
               input   clk,
					input   rst,
					input   button,
					input   sel,
					
					output    [2:0]  result	
            
           );
			  
wire   red;
wire   amber;
wire   green;
wire  [2:0] throw;
			  
			  
			  
 fsm u1(
        .clk(clk),
				.rst(rst),
				.button(button),
				
				.throw(throw) 

            ); 


red  u2(


				 .clk(clk),
				 
				 
				 .red(red),
				 .amber(amber),
				 .green(green)
	 
	  
	 );
	 
	 
	 
test6  u3(
          .throw(throw),
			 .red(red),
	       .amber(amber),
          .green(green),
			 .sel(sel),
			
		    .result(result)
			
			
        );

		  
endmodule

