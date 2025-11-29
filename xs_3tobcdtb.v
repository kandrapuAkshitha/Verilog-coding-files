module tb_xs_3tobcd;
reg E0,E1,E2,E3;
wire B3,B2,B1,B0;

xs_3tobcd s(.E0(E0),.E1(E1),.E2(E2),.E3(E3),.B3(B3),.B2(B2),.B1(B1),.B0(B0));
initial 
  begin
   $monitor(E0,E1,E2,E3,B0,B1,B2,B3);
   E3=0;E2=0;E1=1;E0=1; #5
   E3=0;E2=1;E1=0;E0=0; #5
   E3=0;E2=1;E1=0;E0=1; #5
   E3=0;E2=1;E1=1;E0=0; #5
   E3=0;E2=1;E1=1;E0=1; #5
   E3=1;E2=0;E1=0;E0=0; #5
   E3=1;E2=0;E1=0;E0=1; #5
   E3=1;E2=0;E1=1;E0=0; #5
   E3=1;E2=0;E1=1;E0=1; #5 
   E3=1;E2=1;E1=0;E0=0; #5
$finish;
 end
endmodule
