module tb_Mod_100con;
reg clk,rst;
wire [6:0] count;

Mod_100con s(.clk(clk),.rst(rst),.count(count));

initial clk=0;
always #5 clk= ~clk;

initial begin
  $monitor (clk,rst,count);
  rst=1;
  #10 rst=0;
  #1100;
  $stop;
 end
endmodule

