module H_sub(a,b,sub,d);
input a,b;
output sub,d;
assign sub=a^b;
assign d=(~a)&b;
endmodule
