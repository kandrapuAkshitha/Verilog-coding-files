module SR_FF(
input clk,rst,S,R,
output reg Q
);

always @(posedge clk) begin
  if(rst)
   Q <= 0;
 /* else begin
  if(S==0 && R==0)
     Q <= Q;
  else if(S==0 && R==1)
     Q <= 0;
  else if(S==1 && R==0)
     Q <= 1;
  else 
     Q <= 1'bx;
  end
*/
  else begin
    case({S,R})
      2'b00:Q <= Q;
      2'b01:Q <= 0;
      2'b10:Q <= 1;
      2'b11:Q <= 1'bx;
    endcase
  end
end
endmodule
