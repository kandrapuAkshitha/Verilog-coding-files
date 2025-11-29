module demux_1x4(I,s1,s0,y);
input I,s1,s0;
output [3:0] y;
assign y[0]=I & ~s1 & ~s0;
assign y[1]=I & ~s1 & s0;
assign y[2]=I & s1 & ~s0;
assign y[3]=I & s1 & s0;
endmodule
