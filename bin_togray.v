/*module bin_togray(B1,B2,B3,G1,G2,G3);
input B1,B2,B3;
output G1,G2,G3;

assign G3=B3;
assign G2=B2^B3;
assign G1=B1^B2;
endmodule
*/
module bin_togray(
input [3:0] B,
output [3:0] G );

assign G[3]=B[3];
assign G[2]=B[3]^B[2];
assign G[1]=B[2]^B[1];
assign G[0]=B[1]^B[0];
endmodule


