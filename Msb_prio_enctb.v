module tb_Msb_prio_enc;
reg [3:0] in;
wire [1:0] y;

Msb_prio_enc s(.in(in),.y(y));
integer i;
initial begin
$monitor("in %b , y %b",in,y); 
  for(i=0;i<16;i=i+1) begin
   in=i;
#3;
  end
  $stop;
 end
endmodule
