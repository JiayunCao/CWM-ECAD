//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an electronic dice, following
//  the diagram provided in the exercises documentation. The dice rolls as long as
//  a button is pressed, and stops when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           throw [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

module fsm (
            input  clk,
				input  rst,
				input  button,
				
				output  reg [2:0]  throw 

            ); 






always @ (posedge clk or negedge rst )
begin
   if(!rst)
	throw<=3'b001;
	else 
 begin	
	   case(throw)
		
	 3'b001:
	         begin
		       if(button) 
				 throw <= 3'b010;
				 else
				 throw <= throw;
				end
	 3'b010:
	        begin
		       if(button) 
				 throw <= 3'b011;
				 else
				 throw <= throw;
			  end
	 3'b011:
	       begin
		       if(button) 
				 throw <= 3'b100;
				 else
				 throw <= throw;
			 end
	 3'b100:
	       begin
		       if(button) 
				 throw <= 3'b101;
				 else
				 throw <= throw;
			end
	 3'b101:
	      begin
		       if(button) 
				 throw <= 3'b110;
				 else
				 throw <= throw;
		   end
	 3'b110:	
         begin 
            if(button) 
				 throw <= 3'b001;
				 else
				 throw <= throw; 
			end
	 
     default : throw <=3'b001;
	endcase
  end
end
	

endmodule
