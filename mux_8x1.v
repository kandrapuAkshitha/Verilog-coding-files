module mux_8x1(I,s2,s1,s0);
input s2,s1,s0;
output [7:0] I;
assign I[0]=~s2 & ~s1 & ~s0;
assign I[1]=~s2 & ~s1 & s0;
assign I[2]=~s2 & s1 & ~s0;
assign I[3]=~s2 & s1 & s0;
assign I[4]= s2 &~s1 &~s0;
assign I[5]= s2 & ~s1 & s0;
assign I[6]= s2 & s1 & ~s0;
assign I[7]= s2 & s1 & s0;
endmodule

