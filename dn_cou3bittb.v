module tb_dn_cou3bit;
reg clk,rst;
wire [2:0] count;

dn_cou3bit s(.clk(clk),.rst(rst),.count(count));

always #5 clk=~clk;

initial begin
   $monitor(clk,rst,count);
     clk=0;
     rst=1;
    #10; rst=0;
    #60;
    rst=1;
    #20;
    rst=0; 
    #100;
   $stop;
  end
endmodule
