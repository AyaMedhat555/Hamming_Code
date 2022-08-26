module encoder_shifter_15
(
	input clk,
	input reset,
	input write,
	input shift,
	input[14:0] data_in,
	output serial_out
    );

	reg[14:0] data;
	
	always @(posedge clk)
	begin
		if(reset==1)
			data<=0;
		else if(write==1)
			data<=data_in;
		else if(shift==1)//do shift right
			data<={1'b0,data[14:1]};
	end
	
	assign serial_out=data[0];
endmodule
