module ser_4bit_add(
input [3:0] a,b,
input clk,reset,start,
output reg [3:0] sum,
output reg done,
output reg cout );

reg [2:0] count;
reg [3:0] regA,regB;
reg carry;

always @(posedge clk or posedge reset)begin
  if(reset) begin
  regA<=0;
  regB<=0;
  sum<=0;
  carry<=0;
  count<=0;
  done<=0; 
  end
  else if(start && !done) begin
  regA<=a;
  regB<=b;
  sum<=0;
  count<=0;
  done<=0;
  {carry,sum[count]} <= regA[0] + regB[0] +carry;
   regA<= regA>>1;
   regB<= regB>>1;
   count<= count+1;

if(count==4) begin
  done<= 1;
  cout<=carry;
  end
 end
end
endmodule 
 


