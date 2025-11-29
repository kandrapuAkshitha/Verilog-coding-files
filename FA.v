module FA(a,b,c,s,carry);
input a,b,c;
output s,carry;
assign s=a^b^c;
assign carry=(a&b)|(b&c)|(c&a);
endmodule
