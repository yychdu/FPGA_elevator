
      module js( input clk, input s , output reg cnt_out) ;
		reg [26:0] count=0;
	
      always@(posedge clk )
		if(s)
		begin

      if(count<27'd100000000)
	 begin count<=count+1'b1;
		
		         cnt_out<=1 ;
		end
		else 
		begin count<=27 'b0;
	        
			  cnt_out<=0;
      end

		end

      endmodule


