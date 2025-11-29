/*module bcd_7seg(
input [3:0] b,
output [6:0] y
);
assign y[6]=(~b[0]) | b[1] | (b[3]& ~b[2]);
assign y[5]= ~b[2] | ~(b[1]^b[0]) ;
assign y[4]= ~b[1]| b[0] |b[2];
assign y[3] = b[3] | (b[1] & ~b[0]) |(~b[2]&b[1]) | (~b[2]&~b[0]) | (b[2]&~b[1]&b[0]);
assign y[2]=(b[1] & ~b[0]) | (~b[2]&~b[0]);
assign y[1]=b[3] |  ~(b[1]^b[0]) | ( b[2]&(~b[0] | ~b[1]));
assign y[0]=b[3] | (b[1]&b[0]) | (b[2]^b[1]);

endmodule
*/
module bcd_7seg(
input [3:0] b,
output reg [6:0] y
);
 always @ (*) begin
   case(b)
     4'd0 : y=7'b1111110;
     4'd1 : y=7'b0110000;
     4'd2 : y=7'b1101101;
     4'd3 : y=7'b1111001;
     4'd4 : y=7'b0110011;
     4'd5 : y=7'b1011011;
     4'd6 : y=7'b1011111;
     4'd7 : y=7'b1110000;
     4'd8 : y=7'b1111111;
     4'd9 : y=7'b1111011;
     default: y=7'b0000000;
   endcase
  end
endmodule
