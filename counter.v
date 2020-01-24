module cnt(
	input clk,
	input rst_n,
	output reg delay_done
);
reg flag = 1;
reg TIME = 27'd100000000;
reg [50:0] count;
always@(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		count <= 0;
		flag <= 1;
		delay_done <= 0;
	end
	else if(count == TIME - 27'd000000001) begin
		flag <= 0;
		count <= 0;
		delay_done <= 1;
	end
	else begin
		count <= count + 1'b1;
	end
	end
endmodule