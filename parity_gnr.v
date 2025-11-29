module parity_gnr(a,b,c,Pe,Po);
input a,b,c;
output Pe,Po;
assign Pe=a^b^c;
assign Po=~(a^b^c);
endmodule
