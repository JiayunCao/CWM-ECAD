//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a UK traffic lights 
//  sequencing system. 
//
//  inputs:
//           clk
//
//  outputs:
//           red, amber, green
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/100ps
module red(


    input clk,
	 
	 
    output reg red=1'b1,
    output reg amber=1'b0,
    output reg green=1'b0
	 
	 
    );

    always #20 @(posedge clk) 
	 begin
	   if(red & (!amber) & (!green)) 
		   amber<=1'b1;	
	      		
	   if(red & amber & (!green))
		 begin
		   green<=1'b1;
			red<=1'b0;
		   amber<=1'b0;
		 end
		 
		if(green  & (!red) & (!amber))
		begin
		    red<=1'b0;
		    amber<=1'b1;
			 green<=1'b0;
	   end		 
			 
		if(amber & (!red) & (!green))
		begin
	      red<=1'b1;	
		   amber<=1'b0;
		end
		
		if((!red)  & (!amber) & (!green))
		   red<=1'b1;
		  
		if(red & (!amber) & green)
		begin
		   red<=1'b1;
		   green<=1'b0;
		end
		
		if((!red) & amber & green)
		begin
		   red<=1'b1;
			amber<=1'b0;
			green<=1'b0;
		end
		
		if(red & amber & green)
		begin
		   amber<=1'b0;
			green<=1'b0;
		end
 		 
	 end
		

endmodule

