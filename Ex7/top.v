//////////////////////////////////////////////////////////////////////////////////
// Exercise #7
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a times table of 0..7x0..7
//  using a memory.
//
//  inputs:
//           clk, a[2:0], b[2:0], read
//
//  outputs:
//           result[4:0]
//////////////////////////////////////////////////////////////////////////////////


module mult  (  
					input        clk,
					input  [2:0] a,
					inout  [2:0] b, 
					input        enable,
					
					output reg [5:0] result=6'b0
				);
				

	integer i;        
	
		always @(posedge clk)               
		begin
			if(enable)
			begin
				for(i=0;i<=2;i=i+1)
				if(b[i])
				result<=result+(a<<(i-1)) ;   
		   end
		end
		
		

  
endmodule
