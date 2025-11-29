module seqdec_mooore_001(clk,rst,inp,det);
input clk,rst,inp;
output reg det;

parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
reg [1:0] pr_state,nxt_state;

always @(posedge clk)
    begin
     if(rst)
       pr_state <= s0;
     else
       pr_state <= nxt_state;
    end

always @(*) begin
  case(pr_state)
    s0: if(inp)
          nxt_state=s0;
        else
          nxt_state=s1;
    s1: if(inp)
          nxt_state=s0;
        else
          nxt_state=s2;
    s2: if(inp)
          nxt_state=s3;
        else
          nxt_state=s2;
    s3: if(inp)
          nxt_state=s0;
        else
          nxt_state=s1;
    default:nxt_state =s0;
   endcase
 end

always @(*) begin
   case(pr_state)
     s0:det=0;
     s1:det=0;
     s2:det=0;
     s3: if(inp)  det=1;
         else  det=0;
     default:det=0;
   endcase
 end

endmodule