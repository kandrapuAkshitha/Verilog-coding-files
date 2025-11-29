module tb_dec_2to4;
reg a,b;
wire [3:0] D;
dec_2to4 s1(.a(a),.b(b), .D(D));
 initial
  begin
   $monitor(a,b,D);
   a=0;b=0;#5
   a=0;b=1;#5
   a=1;b=0;#5
   a=1;b=1;#5
   $finish;
  end
endmodule
