module tb_dec_3to8;
reg a,b,c;
wire [7:0] D;

dec_3to8 s1(.a(a),.b(b),.c(c),.D(D));
 initial 
    begin
      $dumpfile("dec_3to8.vcd");   
      $dumpvars(0, tb_dec_3to8);
       $monitor(a,b,c,D);
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


