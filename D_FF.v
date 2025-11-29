module D_FF(
input clk,rst ,D ,
output reg Q
);

always @(posedge clk) begin
 if(rst)
   Q <=0;
else 
  Q <= D;
end
endmodule
