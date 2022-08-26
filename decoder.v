module decoder(input [14:0]in,
               output [10:0]out);
					
wire [3:0]error;		
assign error[0]=in[0]^in[2]^in[4]^in[6]^in[8]^in[10]^in[12]^in[14];
assign error[1]=in[1]^in[2]^in[5]^in[6]^in[9]^in[10]^in[13]^in[14];
assign error[2]=in[3]^in[4]^in[5]^in[6]^in[11]^in[12]^in[13]^in[14];
assign error[3]=in[7]^in[8]^in[9]^in[10]^in[11]^in[12]^in[13]^in[14];


assign out=(error==4'b0000)?{in[14:8],in[6:4],in[2]}:

           (error==4'b0011)?{in[14:8],in[6:4],~in[2]}:
			  
			  (error==4'b0101)?{in[14:8],in[6:5],~in[4],in[2]}:
			  
			  (error==4'b0110)?{in[14:8],in[6],~in[5],in[4],in[2]}:
			  
			  (error==4'b0111)?{in[14:8],~in[6],in[5:4],in[2]}:
			  
			  (error==4'b1001)?{in[14:9],~in[8],in[6:4],in[2]}:
			  
			  (error==4'b1010)?{in[14:10],~in[9],in[8],in[6:4],in[2]}:
			  
			  (error==4'b1011)?{in[14:11],~in[10],in[9:8],in[6:4],in[2]}:
			  
			  (error==4'b1100)?{in[14:12],~in[11],in[10:8],in[6:4],in[2]}:
			  
			  (error==4'b1101)?{in[14:13],~in[12],in[11:8],in[6:4],in[2]}:
			  
			  (error==4'b1110)?{in[14],~in[13],in[12:8],in[6:4],in[2]}:
			  
			  (error==4'b1111)?{~in[14],in[13:8],in[6:4],in[2]}:{in[14:8],in[6:4],in[2]};
			  
endmodule
