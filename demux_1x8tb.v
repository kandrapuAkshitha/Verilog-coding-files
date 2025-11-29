module  tb_demux_1x8;
reg I;
reg [2:0] s;
wire [7:0] y;

demux_1x8 s1(.I(I),.s(s),.y(y));
 initial
   begin
    $monitor(I,s,y);
    I=1;
    s=3'b000;#5
    s=3'b001;#5
    s=3'b010;#5
    s=3'b011;#5
    s=3'b100;#5
    s=3'b101;#5
    s=3'b110;#5
    s=3'b111;#5

    I=0;
    s=3'b000;#5
    s=3'b001;#5
    s=3'b010;#5
    s=3'b011;#5
    s=3'b100;#5
    s=3'b101;#5
    s=3'b110;#5
     $finish;
   end
endmodule
