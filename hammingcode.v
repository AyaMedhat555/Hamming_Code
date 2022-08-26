module hammingcode(datain,clk_encoder,clk_decoder,reset_encoder,reset_decoder,enable,serial_out,clkc_encoder,clkd_encoder,clkc_decoder,clkd_decoder);
input datain,clk_encoder,clk_decoder,reset_encoder,reset_decoder,enable;
output serial_out,clkc_encoder,clkd_encoder,clkc_decoder,clkd_decoder;
wire dataout_encoder;

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
endmodule
