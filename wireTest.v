module wireTest (A, B, C);
//input variables are A
input A;
//outputs variables are B, c
output B;
output C;
//this sets B to A
assign B = A;
//this sets C to the negation of A
assign C = !A;
endmodule
