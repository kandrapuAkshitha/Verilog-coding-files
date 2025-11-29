module tb_gray_tobin;
reg G1,G2,G3;
wire B1,B2,B3;

gray_tobin s(.G1(G1),.G2(G2),.G3(G3),.B1(B1),.B2(B2),.B3(B3));
initial
   begin
   $monitor(G1,G2,G3,B1,B2,B3);
   G1=0;G2=0;G3=0;#5
   G1=0;G2=0;G3=1;#5
   G1=0;G2=1;G3=0;#5
   G1=0;G2=1;G3=1;#5
   G1=1;G2=0;G3=0;#5
   G1=1;G2=0;G3=1;#5
   G1=1;G2=1;G3=0;#5
   G1=1;G2=1;G3=1;#5
   $finish;
 end
endmodule
