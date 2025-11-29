module clock(
    input clk,
    input reset,
    input ena,
    output reg pm,
    output reg[7:0] hh,
    output reg [7:0] mm,
    output reg [7:0] ss
    );

task automatic bcd_increment;
   inout [7:0]bcd;
   output reg carry;
   begin
	carry=0;
    if(bcd[3:0] < 4'd9)begin
	  bcd[3:0] = bcd[3:0]+1;
	end
    else begin
      bcd[3:0] =4'd0;
      if(bcd[7:4] < 4'd5)begin
       bcd[7:4]=bcd[7:4]+1;
       end
      else begin
        bcd[7:0]=8'h00;
          carry=1;
      end
    end
 end
endtask 
task automatic hour_increment;
  inout [7:0]bcd;
  output reg carry;
  begin
  carry=0;
  
  if(bcd==8'h23) begin
     bcd=8'h00;
	  carry=1;
   end
  else if(bcd[3:0] < 4'd9)begin
     bcd[3:0]=bcd[3:0]+1;
    end
  else begin
	  bcd[3:0]=4'd0;
	   bcd[7:4] = bcd[7:4]+1;
    end
end
endtask
reg ss_carry,mm_carry,hh_carry;
always @(posedge clk) begin
   if(reset)begin
     hh<=8'h00;
	  mm<=8'h00;
	  ss<=8'h00;
	  //pm<=0;
	end
	else if(ena) begin
	 
	  bcd_increment(ss,ss_carry);
	  
	  if(ss_carry) begin
	    bcd_increment(mm,mm_carry);
	  end
	  if(ss_carry && mm_carry) begin
	    hour_increment(hh,hh_carry);
	  end
	  /*if(hh_carry && (hh<=8'h12))begin
	   pm <= ~pm;
	  end*/
	 end 
 end
endmodule

