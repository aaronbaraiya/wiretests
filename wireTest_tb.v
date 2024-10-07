/includes wireTest file and sets timescale
`timescale 1 ns / 1 ns
`include "wireTest.v"
module wireTest_tb;
//these are wires
//A is the input wire
reg A;
//output wire are B and C
wire B;
wire C;
//making instance of wiretest
wireTest uut(A, B, C);
//sets clock to start and end
initial begin
//puts output to the file in order to see results
$dumpfile("wireTest_tb.vcd");
$dumpvars(0, wireTest_tb);
//sets A to zero
A = 0;
//waits 20 nanoseconds
#20
//sets A to 1
A = 1;
//waits 20 seconds
#20
//sets A to 0
A = 0;
//waits another 20 seconds
#20
//sets A to 1
A = 1;
//waits another 20 seconds
#20
//displays the wire test has been completed
$display("Wire test complete!");
end
endmodule
