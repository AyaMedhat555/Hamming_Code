module encoder(
input [10:0] datain ,
output [14:0] dataout);
wire p1 , p2 , p3 , p4 ;
xor (p1,datain[0],datain[1],datain[3],datain[4],datain[6],datain[8],datain[10]);
xor (p2,datain[0],datain[2],datain[3],datain[5],datain[6],datain[9],datain[10]);
xor (p3,datain[1],datain[2],datain[3],datain[7],datain[8],datain[9],datain[10]);
xor (p4,datain[4],datain[5],datain[6],datain[7],datain[8],datain[9],datain[10]);
assign dataout = {datain[10],datain[9],datain[8],datain[7],datain[6],datain[5],datain[4],p4 ,datain[3] ,datain[2],datain[1],p3,datain[0],p2,p1 };
endmodule
