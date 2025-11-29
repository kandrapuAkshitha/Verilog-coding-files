
module F_sub(a,b,c,sub,d);
input a,b,c;
output sub,d;
assign sub=a^b^c;
assign d=((~a)&(b|c))|(b&c);
endmodule
