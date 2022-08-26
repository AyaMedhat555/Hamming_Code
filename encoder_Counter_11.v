module encoder_Counter_11(input clk, 
	               input reset,
	               input en,
                  output write );
						
  reg [3:0] counter_up;
  reg write1;
always @(posedge clk or posedge reset)
begin
if(reset)
 counter_up <= 4'b0000;
else if(en==1)
 begin
 counter_up <= counter_up + 4'b0001;
   write1<=0;
 if(counter_up ==4'b1110)
 begin
 write1<=1;
 counter_up <= 4'b0000;
 end
  end
end 
assign write=write1;
endmodule
