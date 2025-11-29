module bcd_adder(
input [3:0] a,b,
input cin,
output [3:0] sum,
output cout
);

wire [4:0] int_sum;
wire [4:0] corrected_sum;

assign int_sum=a+b+cin;

assign corrected_sum=(int_sum > 9)? (int_sum + 5'd6) : int_sum; 

assign sum=corrected_sum [3:0];
assign cout=corrected_sum[4];

endmodule
