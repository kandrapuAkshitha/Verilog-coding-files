module tb_ha1;
reg a,b;
wire sum,carry;

ha1 s(.a(a),.b(b),.sum(sum),.carry(carry));
integer i;
initial begin
    $monitor(a,b,sum,carry);
      $dumpvars(1);
      $dumpfile("dump.vcd");
      for(i=0;i<4;i=i+1) begin
       {a,b}=i;
        #3;
     end
    $stop;
  end
endmodule
