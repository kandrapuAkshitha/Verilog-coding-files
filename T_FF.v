module T_FF(
input clk,rst,T,
output reg Q);

always @(posedge clk) begin
   if(rst)
    Q <= 0;
   else begin
   if(T)
    Q <= ~(T);
   else
    Q <= Q;
  end
 end
endmodule 
