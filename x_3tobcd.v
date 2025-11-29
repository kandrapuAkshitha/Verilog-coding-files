module xs_3tobcd(input E3,E2,E1,E0,
output B3,B2,B1,B0
);
assign B3=(E3&E2) | (E3&E1&E0);
assign B2=(~E2&~E0)|(E2&E1&E0)|(~E2&~E1);
assign B1=E1^E0;
assign B0=~E0;

endmodule
  
 