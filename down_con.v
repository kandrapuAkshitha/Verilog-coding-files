module down_con(
input clk,rst,
output reg [3:0] count
);

always @(posedge clk) begin
   if(rst)
    count <= 4'd15;
   else begin
    count <= (count==0)? 4'd15 : count-1;
 end
end
endmodule
