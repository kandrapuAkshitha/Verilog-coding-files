module seq_m4m5(
input clk,rst,
output reg [2:0] count
);

reg state;
parameter m3=0 ,m4=1;

always @(posedge clk) begin
  if(rst) 
    state <=m3;
 else begin 
   case(state)
    m3: state <= (count == 3)?m4:m3;
    m4: state <=(count == 4)?m3:m4;
   default : state <= m3;
   endcase
  end
 end

always @(posedge clk) begin
  if(rst)
   count <= 0;
  else begin
   case(state)
    m3: count <= (count==3)?0:count+1;
    m4: count <= (count==4)?0:count+1;
   default: count <= 0;
  endcase
 end
end
  
endmodule
