module demux_1x8(I,s,y);
input I;
input [2:0] s;
output reg [7:0] y;

integer i;
always @(*)
   begin
   y=8'b00000000;
     for(i=0;i<8;i=i+1)
       begin
        if(s==i)
          y[i]=I;
        end
    end
endmodule
