/sets timescale and includes wireTest2.v
`timescale 1 ns / 1 ns
`include "wireTest2.v"
module wireTest2_tb;
//input wires with reg
reg W, X;
//output wires with wire
wire Y, Z;
//declaring instance of wireTest2
wireTest2 uut(W,X,Y,Z);
//sets clock to start and to end
initial begin
//puts the outputs into file wireTest2_tb.vcd to see results
$dumpfile("wireTest2_tb.vcd");
$dumpvars(0, wireTest2_tb);
//setting inputs to 0
W = 0;
X = 0;
//waiting 20 nanosecond
#20
//then sets W to 1
W = 1;
//another 20 secs
#20
//set X = 1
X = 1;
//another 20 secs
#20
//set W to 0
W = 0;
//another 20 secs wait
#20
//set X to 0
X = 0;
//displayes when wire test has been completed
$display("Wire Test complete");
end
endmodule
