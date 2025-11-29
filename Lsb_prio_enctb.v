module tb_Lsb_prio_enc;
reg  [3:0] in;
wire [1:0] y;

Lsb_prio_enc s(.in(in),.y(y));
integer i;
initial begin
   $monitor(in,y);
   $dumpfile("dump.vcd");
   $dumpvars(1);
    for(i=0;i<16;i=i+1) begin
     in=i;
    #3;
   end
  $stop;
 end
endmodule

