module mux_16x1_8x1(y,i,s);
input [15:0]i;
input [3:0]s;
output y;
wire y0,y1;
mux_8x1 a(y0,i[7:0],s[2:0]);
mux_8x1 a1(y1,i[15:8],s[2:0]);
mux_2x1 a3(y,{y0,y1},s[3]);

endmodule

module mux_8x1(y,i,s);
input [7:0]i;
input [2:0]s;
output reg y;

always @(*) begin
case(s)
3'd0:y=i[0];
3'd1:y=i[1];
3'd2:y=i[2];
3'd3:y=i[3];
3'd4:y=i[4];
3'd5:y=i[5];
3'd6:y=i[6];
3'd7:y=i[7];
default:y=0;
endcase
end

endmodule

module mux_2x1(y,i,s);
input [1:0]i;
input s;
output y;

assign y=s? i[1] : i[0];

endmodule

