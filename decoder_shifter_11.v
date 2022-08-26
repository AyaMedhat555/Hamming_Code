	module decoder_shifter_11
(
	input clk,
	input reset,
	input write,
	input shift,
	input [10:0] data_in,
	output serial_out
    );

	reg[10:0] data;
	
	always @(posedge clk)
	begin
		if(reset==1)
			data<=0;
			else 
			begin
		if(write==1)
			data<=data_in;
	   else if(shift==1)//do shift right
			data<={1'b0,data[10:1]};
	end
	end
	
	assign serial_out=data[0];
endmodule
