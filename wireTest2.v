module wireTest2 (W, X, Y, Z);
//accepting two inputs W and X
input W;
input X;
//gives two outputs Y and Z
output Y;
output Z;
//sets Y equal to negation of X
assign Y = !X;
//sets Z equal to negation of Y
assign Z = !Y;
endmodule
