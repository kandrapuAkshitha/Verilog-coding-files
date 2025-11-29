module tb_mux_4x1;
reg s1,s0;
wire [3:0] I;

mux_4x1 mux(.s1(s1),.s0(s0),.I(I));
initial 
  begin
   $monitor(s1,s0,I);
   s1=0;s0=0;#5
   s1=0;s0=1;#5
   s1=1;s0=0;#5
   s1=1;s0=1;#5
   $finish;
  end
endmodule
