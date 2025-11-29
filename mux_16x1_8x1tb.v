module mux_16x1_8x1tb;
reg [15:0] i;
reg [3:0] s;
wire y;

mux_16x1_8x1 aa(y,i,s);

integer j;
initial begin

$monitor($time,"i=%b,s=%b,y=%b",i,s,y);
 for(j=0;j<16;j=j+1) begin
   i=j; 
   s=j;#3;
  end
 $stop;
end
endmodule


