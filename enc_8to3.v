module enc_8to3(y,a,b,c);
input [7:0] y;
output a,b,c;
assign a=y[4] | y[5] | y[6] | y[7];
assign b=y[2] | y[3] | y[6] | y[7];
assign c=y[1] | y[3] | y[5] | y[7];
endmodule

