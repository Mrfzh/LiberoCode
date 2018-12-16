module HC_04(A1, A2, A3, A4, A5, A6, Y1, Y2, Y3, Y4, Y5, Y6);

input A1, A2, A3, A4, A5, A6;
output Y1, Y2, Y3, Y4, Y5, Y6;

assign Y1 = ~A1;
assign Y2 = ~A2;
assign Y3 = ~A3;
assign Y4 = ~A4;
assign Y5 = ~A5;
assign Y6 = ~A6;

endmodule