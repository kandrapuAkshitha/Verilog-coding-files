module tb_seq_dec_001;
reg clk,rst,inp;
wire det;

seq_dec_001 s(.clk(clk),.rst(rst),.inp(inp),.det(det));

always #5 clk=~clk;
initial 
    begin
      $monitor(clk,rst,inp,det);
        clk=0;
        rst=1;
        inp=0;
        #10;
         rst=0; #5;
        inp=0; #10 inp=0  ;#10 inp=1;
         #10 inp=1; #10 inp=0; #10 inp=0; #10 inp=1;
         #10 inp=1;#10 inp=1; #10 inp=0;
         #20;
       $stop;
    end
endmodule