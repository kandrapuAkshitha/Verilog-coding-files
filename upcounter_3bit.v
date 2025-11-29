module upcounter_3bit(clk,rst,count);
input clk,rst;
output reg [2:0] count;
 
always @(negedge clk)
  begin
   if (rst)
     count <= 3'b000;
   else
     count <= count+1;
  end
endmodule 
