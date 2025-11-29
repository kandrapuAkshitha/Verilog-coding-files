module adder_8bit(
input [7:0] a,b,
input cin,
output [7:0] sum,
output cout);
wire c1;

adder_4bit lower(.a(a [3:0]),.b(b[3:0]),.cin(cin),.sum(sum[3:0]),.cout(c1));
adder_4bit upper(.a(a[7:4]),.b(b[7:4]),.cin(c1),.sum(sum[7:4]),.cout(cout));

endmodule

module adder_4bit(
input [3:0] a,b,
input cin,
output [3:0] sum,
output cout);

assign {cout,sum} = a+b+cin;

endmodule
                                                
