module main_encoder( input  datain,
                     input  clk,
                     input  reset,
							input  enable,
							output dataout,
							output clkc,
							output clkd
							);
wire [10:0]dataout_shift;
wire [14:0] dataout_encode;
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

encoder_shifter_11 shift11(.in(datain),
                           .reset(reset),
					            .shift(enable),
                           .clk(clk_out_d),
                           .out(dataout_shift));
									

encoder_Counter_11 counting(.clk(clk_out_c),
	                         .reset(reset),
	                         .en(enable),
	                         .write(write) );
									 
	
encoder  encoding(.datain(dataout_shift),
                  .dataout(dataout_encode));	

						
encoder_shifter_15 SHIFTING15( .clk(clk_out_c),
	                            .reset(reset),
	                            .write(write),
	                            .shift(enable),
	                            .data_in(dataout_encode),
                               .serial_out(dataout));	
endmodule
