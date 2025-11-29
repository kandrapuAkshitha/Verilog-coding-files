module tb_bcd_7seg;
reg [3:0] b;
wire [6:0] y;

bcd_7seg s(.b(b),.y(y));

initial
  begin
   $monitor(b,y);
   for(b=0;b<10;b=b+1) begin
     #10;
    end
   $finish;
  end
endmodule
