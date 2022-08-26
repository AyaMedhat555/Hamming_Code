module encoder_shifter_11(input in,
                         input reset,
					          input shift,
                         input clk,
                         output reg[10:0]out);
  always @(posedge clk)
    begin
      if(reset==1'b1)
        begin
          out<=11'b00000000000;
        end
      else if(shift==1'b1)
        begin
          out[10]<=in;
          out[9]<=out[10];
          out[8]<=out[9];
          out[7]<=out[8];
			 
          out[6]<=out[7];
          out[5]<=out[6];
          out[4]<=out[5];
			 out[3]<=out[4];
			 
          out[2]<=out[3];
          out[1]<=out[2];
          out[0]<=out[1];
        end
        end
   
      endmodule
          
  