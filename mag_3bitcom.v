//for 3 -3bit comparison
/*module mag_3bitcom(Ya,Yb,Yc,Ye,a,b,c);
input a,b,c;
output Ya,Yb,Yc,Ye;
assign Ya=(a>b) && (a>c);
assign Yb=(b>a) && (b>c);
assign Yc=(c>a) && (c>b);
assign Ye=(a==b) && (b==c);
endmodule
*/
//for 2- 3bit comparison
module mag_3bitcom(Ya,Yb,Ye,a,b);
input [2:0] a,b;
output Ya,Yb,Ye;

assign Ya=(a>b);
assign Yb=(a<b);
assign Ye=(a==b);

endmodule
