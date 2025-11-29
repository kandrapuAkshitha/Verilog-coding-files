module mag_2bitcom(Ya,Yb,Ye,a,b);
input a,b;
output Ya,Yb,Ye;

assign Ya= (a>b);
assign Yb= (b>a);
assign Ye= (a==b);
endmodule

