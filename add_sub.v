module add_sub(
input [3:0] a,b,
input k,
output [4:0] sum,
output cout);

wire [3:0] b_ch;
wire carry=k;

assign b_ch= k ? ~b : b;

assign sum=a + b_ch + carry;
assign cout=sum[4];
endmodule

