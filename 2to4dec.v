module dec_2to4(a,b,D);
input a,b;
output [3:0] D;
assign D[0]=~a & ~b;
assign D[1]=~a & b;
assign D[2]= a & ~b;
assign D[3]= a & b;
endmodule;

