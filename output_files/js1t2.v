module zt(
input k1,
input k2,
input k3,
input k4,
input k11,
input k12,
input k13,
input k14,
input clk,
output reg z1,
output reg z2,
output reg z3
);
localparam s1=1,s2=2,s3=3,s4=4;
reg [3:0] n;

always@(negedge clk)begin
if(z1==0&z2==0&z3==1)n<=1;
else if(z1==0&z2==1&z3==0)n<=2;
else if(z1==0&z2==1&z3==1)n<=3;
else if(z1==1&z2==0&z3==0)n<=4;
else n<=1;
end
	always @*
			case(n)
						
				s1	:	if(!k2|!k3|!k4|!k12|!k13|!k14) begin z1<=0;z2<=1;z3<=0;end
				 else if(!k1|!k11)begin z1<=0;z2<=0;z3<=1;end
				s2	:	if(!k3|!k4|!k13|!k14) begin z1<=0;z2<=1;z3<=1;end
		          else if(!k1|!k11)begin z1<=0;z2<=0;z3<=1;end
				else if(!k2|!k12)	 begin z1<=0;z2<=1;z3<=0;end
				s3	:	if(!k4|!k14) begin z1<=1;z2<=0;z3<=0;end
			 else if(!k1|!k2|!k11|!k12)begin z1<=0;z2<=1;z3<=0;end	
			 else if(!k3|!k13)	 begin z1<=0;z2<=1;z3<=1;end
				s4	:	if(!k1|!k3|!k2|!k11|!k12|!k13) begin z1<=0;z2<=1;z3<=1;end
			 else if(!k4|!k14)	 begin z1<=1;z2<=0;z3<=0;end	
				default : begin z1<=0;z2<=0;z3<=1; end
			endcase
endmodule
