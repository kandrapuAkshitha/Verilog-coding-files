module D_Fftb;
reg clk,rst,D;
wire Q;

D_FF s(.clk(clk),.rst(rst),.D(D),.Q(Q));

initial clk=0;
always #5 clk = ~clk;

initial begin
   rst=1;
   D=0;
 #5; rst=0;
  
  D=1; #5;
  D=0; #5;
  D=1; #5;
  D=0; #5;
  end
endmodule
