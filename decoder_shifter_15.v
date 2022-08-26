module decoder_shifter_15(input clk,
          input in,
          input reset,
          input shift,
          output reg [14:0]out);
  always @(posedge clk)
    begin
      if(reset==1'b1)
        begin
          out<=15'b000000000000000;
        end
      else if(shift==1'b1)
        begin
		    out[14]<=in;
          out[13]<=out[14];
          out[12]<=out[13];
          out[11]<=out[12];
          out[10]<=out[11];
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
          