module parity_checker(e,a,p);
input [3:0] a;
input p;
output e;

assign e= a[0]^a[1]^a[2]^a[3]^p;

endmodule
