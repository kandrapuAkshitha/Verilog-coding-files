module tb_bcd_toxs3;
reg [3:0] B;
wire [3:0] E;

bcd_toxs3 s(.B(B),.E(E));
initial
  begin 
     $monitor(B,E);
     for(B=0;B<10;B=B+1) begin
      #10;
      end
     $finish;
  end
endmodule
