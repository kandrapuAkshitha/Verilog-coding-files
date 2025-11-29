/*module tb_bin_togray;
reg B1,B2,B3;
wire G1,G2,G3;

bin_togray s(.B1(B1),.B2(B2),.B3(B3),.G1(G1),.G2(G2),.G3(G3));
initial 
  begin
   $monitor(B1,B2,B3,G1,G2,G3);
   B1=0;B2=0;B3=0;#5
   B1=0;B2=0;B3=1;#5
   B1=0;B2=1;B3=0;#5
   B1=0;B2=1;B3=1;#5
   B1=1;B2=0;B3=0;#5
   B1=1;B2=0;B3=1;#5
   B1=1;B2=1;B3=0;#5
   B1=1;B2=1;B3=1;#5
  $finish;
end
endmodule
*/

module tb_bin_togray;
reg [3:0] B;
wire [3:0] G;

bin_togray s(.B(B),.G(G));
integer i;
initial
  begin
   $monitor(B,G);
   for(i=0;i<16;i=i+1)
    begin
     B=i[3:0];
     #5;
    end
   $finish;
 end
endmodule


   
