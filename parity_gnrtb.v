module tb_parity_gnr;
reg a,b,c;
wire Pe,Po;

parity_gnr s(.a(a),.b(b),.c(c),.Pe(Pe),.Po(Po));
initial 
  begin
  $monitor(a,b,c,Pe,Po);
  a=0;b=0;c=0;#5
  a=0;b=0;c=1;#5
  a=0;b=1;c=0;#5
  a=0;b=1;c=1;#5
  a=1;b=0;c=0;#5
  a=1;b=0;c=1;#5
  a=1;b=1;c=0;#5
  a=1;b=1;c=1;#5
 $finish;
 end
endmodule
