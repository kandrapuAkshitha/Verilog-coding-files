module tb_mag_2bitcom;
reg a,b;
wire Ya,Yb,Ye;

mag_2bitcom s(.a(a),.b(b),.Ya(Ya),.Yb(Yb),.Ye(Ye));
integer i,j;
 initial 
    begin
    $monitor(a,b,Ya,Yb,Ye);
     for(i=0;i< 4;i=i+1) begin
        for(j=0;j<4;j=j+1) begin
          a = i[1:0];
          b = j[1:0];
          #5;
       end
     end
     $finish;
  end
endmodule
