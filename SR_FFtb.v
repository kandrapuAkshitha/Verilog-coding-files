module  tb_SR_FF;
reg clk,rst,S,R;
wire Q;

SR_FF s(.clk(clk),.rst(rst),.S(S),.R(R),.Q(Q));
integer i;
initial clk=0;
always #5 clk= ~clk;
initial begin
   rst=1;
    S=0;R=0;
    #10;rst=0;
     $dumpfile("sr_ff.vcd");
     $dumpvars(0, tb_SR_FF);
     $monitor(S,R,Q);
     for(i=0;i<4;i=i+1) begin
      {S,R}=i;
      #1;
       @(posedge clk);
       #8;
     end
    $stop;
  end
endmodule
