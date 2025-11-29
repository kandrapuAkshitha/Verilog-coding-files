module tb_counter_2bit;
reg clk,rst;
wire [1:0] count;

counter_2bit s(.clk(clk),.rst(rst),.count(count));

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
     #10;
     rst=0;
     #20;
    $stop;
  end
endmodule 


     