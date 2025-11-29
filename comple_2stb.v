module tb_comple_2s;
reg [3:0]a;
wire [3:0] comp;

comple_2s s(.a(a),.comp(comp));

initial
   begin
       $monitor(a,comp);
        a=4'b0101; //5 (1011)
        #5;
        a=4'b1101; //13 (0011)
        #5;
        $stop;
    end
endmodule

