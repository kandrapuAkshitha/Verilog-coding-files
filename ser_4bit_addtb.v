module tb_ser_4bit_add;
reg clk,start,reset;
reg [3:0] a,b;
wire [3:0] sum;
wire done,cout;

ser_4bit_add s(.clk(clk),.reset(reset),.start(start),.a(a),.b(b),.sum(sum),.cout(cout),.done(done));

integer i,j;
always #5 clk=~clk;
initial 
  begin
  clk=0;
  reset=1;
  start=0;
 $monitor(a,b,sum,cout);
 #10 reset=0;
 for(i=0;i<16;i=i+1) begin
   for(j=0;j<16;j=j+1) begin
     a=i;
     b=j;
     start=1;
  #10 start=0;
   wait (done==1);#10;
   end
 end
$finish;
 end
endmodule
  
