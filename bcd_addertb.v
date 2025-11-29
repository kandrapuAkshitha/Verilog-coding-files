module tb_bcd_adder;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

bcd_adder s(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
integer i,j;
initial
   begin
   $monitor(a,b,cin,sum,cout);
   for(i=0;i<10;i=i+1) begin
     for(j=0;j<10;j=j+1) begin
        a=i;
        b=j;
        cin=0;
        #10;
      end
     end
    $finish;
   end
endmodule

  