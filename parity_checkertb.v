module parity_checkertb;
reg [3:0] a;
reg p;
wire e;

parity_checker aa(.a(a),.p(p),.e(e));

integer i;
initial begin
  for(i=0;i<32;i=i+1) begin
   {p,a}=i;
    #5;
    $monitor($time,"a=%b,p=%b,e=%b",a,p,e);
    
  end
  $stop;
end
endmodule

