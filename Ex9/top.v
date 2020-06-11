//////////////////////////////////////////////////////////////////////////////////
// Exercise #9 
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design a module that lights leds
//  at different frequencies
//
//  inputs:
//           rst_n, clk_n, clk_p, button
//
//  outputs:
//           led_0, led_1, led_2
//////////////////////////////////////////////////////////////////////////////////

module  top(
   input              clk_p,
   input              clk_n,
   input              rst,
	input              clk,
	input              button,
	output  reg  [2:0] led=3'b111
   );
	
	
/* clock infrastructure, do not modify */
 
	       wire clk_ibufds;

    IBUFDS IBUFDS_sysclk (
	.I(clk_p),
	.IB(clk_n),
	.O(clk_ibufds)
);

     wire clk; //use this signal as a clock for your design
        
     BUFG bufg_clk (
	.I  (clk_ibufds),
	.O  (clk)
      );


//Add logic here


reg [20:0] cnt;

always @(posedge clk) 
begin
 if (!rst) 
	 begin
		led <=3'b0;
		cnt <=21'b0;
	 end
	
 else 
	begin
	 if (!button) 
		begin
		   cnt<= 21'b0;
			led<= 3'b0;
		end
	 else 
		  begin
		   if (cnt == 21'b1101_0010_1110_1110_1010_0) 
				begin
				 cnt <= 21'b0;
				 led <= ~led;
				end
		  else
		      cnt<= cnt  + 1'b1;
	    end
  end

end

endmodule
endmodule
