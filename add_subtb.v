module tb_add_sub;
reg [3:0] a,b;
reg k;
wire [4:0] sum;
wire cout;

add_sub s(.a(a),.b(b),.k(k),.sum(sum),.cout(cout));

initial 
   begin
    $monitor(a,b,k,sum,cout);
    k=0;a=4'd5 ;b = 4'd2; #5;
    
    $finish;
   end
endmodule


