module main_decoder( input  datain,
                     input  clk,
                     input  reset,
							input  enable,
							output dataout,
							output clkc,
							output clkd
							);
wire [14:0]dataout_shift;
wire [10:0] dataout_decode;
wire clk_out_c,clk_out_d,write;
assign clkc=clk_out_c;
assign clkd=clk_out_d;

CLK_DIVIDER  #(.N(15)) CLK_D_11MHZ 
(
.CLK_IN(clk),
.REST(reset),
.CLK_OUT(clk_out_d)
);

CLK_DIVIDER  #(.N(11)) CLK_C_15MHZ 
(
.CLK_IN(clk),
.REST(reset),
.CLK_OUT(clk_out_c)
);

decoder_shifter_15    shifting15(.clk(clk_out_c),
                                 .in(datain),
                                 .reset(reset),
                                 .shift(enable),
                                 .out(dataout_shift));
											
											
decoder_Counter_11    count11(.clk(clk_out_d), 
	                           .reset(reset),
	                           .en(enable),
                              .write(write) );

										
decoder    decoding(.in(dataout_shift),
                    .out(dataout_decode));
						  

decoder_shifter_11     shifting11(.clk(clk_out_d),
	                               .reset(reset),
	                               .write(write),
	                               .shift(enable),
	                               .data_in(dataout_decode),
	                               .serial_out(dataout));
endmodule
