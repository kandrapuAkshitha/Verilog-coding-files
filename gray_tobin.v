/*module gray_tobin(G1,G2,G3,B1,B2,B3);
input G1,G2,G3;
output B1,B2,B3;

assign B1=B2 ^ G1;
assign B2=B3 ^ G2;
assign B3=G3;
endmodule
*/
module gray_tobin(
input [3:0] G;
output [3:0] B;
assign B[3]=G[3];
assign B[2]=B[3]^ G[2];
assign B[1]=B[2]^G[1];
assign B[0]=B[1]^G[0];

endmodule
