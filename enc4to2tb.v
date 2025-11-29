module tb_enc_4to2;
reg [3:0] y;
wire a,b;

enc_4to2 s1(.y(y),.a(a),.b(b));
 initial 
    begin
     $monitor(y,a,b); 
     y=4'b0001;#5
     y=4'b0010;#5
     y=4'b0100;#5
     y=4'b1000;#5
     $finish;
  end
endmodule

