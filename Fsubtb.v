module tb_F_sub;
reg a,b,c;
wire sub,d;

F_sub s1(.a(a),.b(b),.c(c),.sub(sub),.d(d));
initial
  begin
   $monitor(a,b,c,sub,d);
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
