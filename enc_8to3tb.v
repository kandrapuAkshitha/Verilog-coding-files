module tb_enc_8to3;
reg [7:0] y;
wire a,b,c;

enc_8to3 s1(.y(y),.a(a),.b(b),.c(c));
 initial
   begin
    $monitor(y,a,b,c);
    y=8'b00000001;#5
    y=8'b00000010;#5
    y=8'b00000100;#5
    y=8'b00001000;#5
    y=8'b00010000;#5
    y=8'b00100000;#5
    y=8'b01000000;#5
    y=8'b10000000;#5
    $finish;
   end
endmodule
