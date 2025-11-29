module tb_demux_1x4;
reg I;
reg s1,s0;
wire [3:0] y;

demux_1x4 s(.I(I),.s1(s1),.s0(s0),.y(y));
 initial 
   begin
    $monitor(I,s1,s0,y);
  
    s1=0;s0=0;#5
    s1=0;s0=1;#5
    s1=1;s0=0;#5
    s1=1;s0=1;#5
    $finish;
  end
endmodule

