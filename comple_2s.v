module comple_2s(
input [3:0]a,
output [3:0] comp);

assign comp = ~a +1;

endmodule
