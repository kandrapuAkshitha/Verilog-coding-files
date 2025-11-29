module tb_T_FF;
reg clk,rst,T;
wire Q;

T_FF s(.clk(clk),.rst(rst),.T(T),.Q(Q));

initial clk=0;
always #5 clk=~clk;

initial begin
   rst=1;
   T=0 ;
   #5; rst=0;
   repeat(10) begin
    T=$random %2 ; #10;
  end
end
endmodule
