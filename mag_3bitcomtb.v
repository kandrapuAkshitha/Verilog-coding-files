/*module tb_mag_3bitcom;
reg a,b,c;
wire Ya,Yb,Yc,Ye;

mag_3bitcom s(.a(a),.b(b),.c(c),.Ya(Ya),.Yb(Yb),.Yc(Yc),.Ye(Ye));
integer i,j,k;
initial 
   begin
    $monitor(a,b,c,Ya,Yb,Yc,Ye);
     for(i=0;i<8;i=i+1) begin
        for(j=0;j<8;j=j+1) begin
           for(k=0;k<8;k=k+1) begin           
              a=i[2:0];
              b=j[2:0];
              c=k[2:0]; #5;
        end
       end
     end
   $finish;
   end
endmodule*/
/* For 3 3bit comparision
module tb_mag_3bitcom;
reg [2:0] a,b,c;
wire Ya,Yb,Yc,Ye;
mag_3bitcom s(.a(a),.b(b),.c(c),.Ya(Ya),.Yb(Yb),.Yc(Yc),.Ye(Ye));
integer x;
 initial
  begin
  $monitor(a,b,c,Ya,Yb,Yc,Ye);
   for(x=0;x<512;x=x+1)
     begin
     {a,b,c}=x[8:0];
    #5;
    end
   $finish;
 end
endmodule*/

// for 2- 3bit comparison

module tb_mag_3bitcom;
reg [2:0] a,b;
wire Ya,Yb,Ye;

mag_3bitcom s(.a(a),.b(b),.Ya(Ya),.Yb(Yb),.Ye(Ye));
integer i,j;
 initial 
   begin
     $monitor(a,b,Ya,Yb,Ye);
     for(i=0;i<8;i=i+1) begin
       for(j=0;j<8;j=j+1) begin
          a=i[2:0];
          b=j[2:0];
          #5;
         end
        end
      $finish
   end
endmodule




              
