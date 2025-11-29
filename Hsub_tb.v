module tb_H_sub;
reg a,b;
wire sub,d;
H_sub s1(.a(a),.b(b),.sub(sub),.d(d));
initial
  begin
  $monitor(a,b,sub,d);
  a=0;b=0;#5
  a=0;b=1;#5
  a=1;b=0;#5
  a=1;b=1;#5
  $finish;
  end
endmodule
