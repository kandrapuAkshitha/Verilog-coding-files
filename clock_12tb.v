module clock_tb;
reg clk,reset,ena;
wire pm;
wire [7:0] hh;
wire [7:0] mm;
wire [7:0] ss;

clock a(.clk(clk),.reset(reset),.ena(ena),.pm(pm),.hh(hh),.mm(mm),.ss(ss));

initial clk=0;
always #1 clk=~clk;

initial begin
   reset=1;
   ena=0;
   #10;
   reset=0;
   ena=1;
   #864000000 $finish;
end
initial begin
  $monitor($time ,"clk=%b,%0d%0d:%0d%0d:%0d%0d,%s",clk, hh[7:4], hh[3:0],mm[7:4], mm[3:0],ss[7:4], ss[3:0],(pm?"P":"A"));
end
endmodule
