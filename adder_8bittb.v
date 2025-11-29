module tb_adder_8bit;
reg [7:0] a,b;
reg cin;
wire [7:0] sum;
wire cout;

adder_8bit s(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial 
     begin
           $monitor(a,b,cin,sum,cout);
            a=8'b00001101; //13
            b=8'b00000010; //2
            cin=0;
            #10;
             
            a=8'b00001101; //13
            b=8'b00000010; //2
            cin=1;
            #10;
             
            a=8'b10001101; //141
            b=8'b00100010; //34
            cin=0;
            #10;

            a=8'b11111111; //255
            b=8'b10000010; //130
            cin=0;
            #10;
            $stop;
     end
endmodule
