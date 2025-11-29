module enc_4to2(a,b,y);
input [3:0] y;
output a,b;
assign a=y[2] | y[3];
assign b=y[1] | y[3];

endmodule
