module dec_count(q,j,k,clk);
input j,k,clk;
output [3:0] q;
wire r1;
jkff g1(.q(q[0]),.j(j),.k(k),.clk(clk),.r(r1));
jkff g2(.q(q[1]),.j(j),.k(k),.clk(clk),.r(r1));
jkff g3(.q(q[2]),.j(j),.k(k),.clk(clk),.r(r1));
jkff g4(.q(q[3]),.j(j),.k(k),.clk(clk),.r(r1));
nand g5(r1,q[3],q[1]);
endmodule

module jkff (input j,k,clk,r,
output reg q);
reg q1;

always @(posedge clk) begin
 if(!r)
   q<=1'b0;
 else 
   q<=q1;
end

always @(*) begin
 q1=q;
  case({j,k})
   2'b00:q1=q;
   2'b01:q1=1'b0;
   2'b10:q1=1'b1;
   2'b11:q1=~q;
	default:q1=q;
  endcase
end
endmodule

