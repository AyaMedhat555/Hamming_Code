module tb_hammingcode;

reg datain,clk_encoder,clk_decoder,reset_encoder,reset_decoder,enable;

wire dataout_encoder,serial_out,clkc_encoder,clkd_encoder,clkc_decoder,clkd_decoder;

main_encoder  encoder(.datain(datain),
                      .clk(clk_encoder),
                      .reset(reset_encoder),
			         	 .enable(enable),
				          .dataout(dataout_encoder),
			         	 .clkc(clkc_encoder),
			          	 .clkd(clkd_encoder)
				          );


main_decoder  decoder(.datain(dataout_encoder),
                     .clk(clk_decoder),
                     .reset(reset_decoder),
							.enable(enable),
							.dataout(serial_out),
							.clkc(clkc_decoder),
							.clkd(clkd_decoder)
							);

always begin
		#5 clk_encoder=~clk_encoder;
		 end

	initial
	begin
	clk_encoder=1;
	reset_encoder=0;
	#10
	reset_encoder=1;
	#10;
	reset_encoder=0;
	enable=1;
	//11001010011
	     datain=1'b1;
	#150 datain=1'b1;
	#150 datain=1'b0;
	#150 datain=1'b0;
   #150 datain=1'b1;
	#150 datain=1'b0;
	#150 datain=1'b1;
	#150 datain=1'b0;
	#150 datain=1'b0;
	#150 datain=1'b1;
	#150 datain=1'b1;

end

always begin
		#5 clk_decoder=~clk_decoder;
		 end	
														
initial
begin
clk_decoder=1;
	reset_decoder=0;
   #10;
	reset_decoder=1;
	#1675;
	reset_decoder=0;
	end
	endmodule
	