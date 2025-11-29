module Mod_100con(
input clk,rst,
output reg [6:0] count
);

always @(posedge clk) begin
  if(rst)
   count <= 0;
  else begin
   count <= (count == 99)?0:count+1;
  end
 end
endmodule
