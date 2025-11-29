module tb_complement_1s;
reg [3:0] a;
wire [3:0] comp;

complement_1s s(.a(a),.comp(comp));

initial  
   begin
       $monitor(a,comp);
       a=4'b1011 ;//(0100)
        #5;
       a=4'b1111 ;//(0000)
         #5;
       $stop;
   end
endmodule
                                                
