module dn_counter2bit(clk,rst,count);
input clk,rst;
output reg [1:0] count;

always @(posedge clk)
   begin
     if(rst)
       count <= 2'b11;
     else
       count <= count-1;
   end
endmodule
