
      module js1t2( input clk, input s , output reg cnt_out,output reg o) ;
		reg [1:0] count=0;
	
      always@(posedge clk )
		if(s)
		begin

      if(count==0)
	 begin count<=count+1;
		
		         cnt_out<=1 ;
		end
		else if(count==1)
		begin 
	        o<=1'd2;
			  cnt_out<=0;
      end

		end

      endmodule
