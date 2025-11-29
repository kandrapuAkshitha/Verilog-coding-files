module tb_FA;
reg a,b,c;
wire s,carry;
  FA add(.a(a),.b(b),.c(c),.s(s),.carry(carry));
   initial
     begin
      $monitor(a,b,c,s,carry);
      a=0 ; b=0; c=0 ;#5
      a=0 ; b=0; c=1 ;#5
      a=0 ; b=1; c=0 ;#5
      a=0 ; b=1; c=1 ;#5
      a=1 ; b=0; c=0 ;#5
      a=1 ; b=0; c=1 ;#5
      a=1 ; b=1; c=0 ;#5
      a=1 ; b=1; c=1 ;#5
     $finish;
     end
endmodule
