module tb_par_4bit_add;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

par_4bit_add ss(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
integer i,j;
initial 
  begin
   $monitor(a,b,cin,sum,cout);
   for(i=0;i<16;i=i+1) begin
      for(j=0;j<16;j=j+1) begin
         a=i[3:0] ;
         b=j[3:0] ;
         cin=0; #5;

         cin=1;#5;
      end
     end
   $finish;
 end
endmodule
