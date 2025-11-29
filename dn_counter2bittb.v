module tb_dn_counter2bit;
reg clk,rst;
wire [1:0] count;
 
dn_counter2bit s(.clk(clk),.rst(rst),.count(count));
 
always #5 clk=~clk;
 initial 
   begin
     $monitor(clk,rst,count);
      clk=0;
      rst=1;
      #10; rst=0;
      #100;
      rst=1;
       #5;
      rst=0;
       #50;
      $stop;
   end
endmodule