module mux_4x1(I,s1,s0);
input s1,s0;
output [3:0] I;
assign I[0] = ~s1 & ~s0;
assign I[1] = ~s1 & s0;
assign I[2] = s1 & ~s0;
assign I[3] = s1 & s0;
endmodule
