module tb_mux_8x1;
reg s2,s1,s0;
wire [7:0] I;

mux_8x1 s(.s2(s2),.s1(s1),.s0(s0),.I(I));
 initial 
   begin
    $monitor(s2,s1,s0,I);
    s2=0;s1=0;s0=0;#5
    s2=0;s1=0;s0=1;#5
    s2=0;s1=1;s0=0;#5
    s2=0;s1=1;s0=1;#5
    s2=1;s1=0;s0=0;#5
    s2=1;s1=0;s0=1;#5
    s2=1;s1=1;s0=0;#5
    s2=1;s1=1;s0=1;#5
    $finish;
  end
endmodule


    
    


