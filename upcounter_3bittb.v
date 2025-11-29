module tb_upcounter_3bit;
reg clk,rst;
wire [3:0] count;

upcounter_3bit s(.clk(clk),.rst(rst),.count(count));

always #5 clk=~clk;
initial 
  begin
    $monitor(clk,rst,count);
    clk=0;
    rst=1;
    #10;
    rst=0;
    #100;
    rst=1;
    #50;
    $stop;
  end
endmodule
