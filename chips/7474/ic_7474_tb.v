//testbench file
//
module ic_7474_tb;
//outputs
wire [1:0] Q, nQ;
//inputs
reg [1:0] CP, D, SD, RD;

//instantiate uut (unit under test)
ic_7474 uut(
    Q[0], nQ[0],
    CP[0], D[0], SD[0], RD[0],
    Q[1], nQ[1],
    CP[1], D[1], SD[1], RD[1]
);
initial begin
    RD = 0;
    CP = 0;
    forever #10 CP = ~CP; //toggle CP (clock) every 10ns
end
initial begin
    //init inputs
    D = 0;
    SD = 1;
    //wait for global reset
    #100

    //forever #10 CP = ~CP; //toggle CP (clock) every 10ns

    #20 RD = 1;D = 1;
    #20 D = 0;
    #20 D = 1;
    #20 RD = 0;
    #5 SD = 0;
    #15 RD = 1;
    #20 SD = 1;
    #40 $finish;
end
//no make the file
initial begin
$dumpfile("ic_7474.vcd");
//$dumpvars(Q, nQ, CP, D, SD, RD);
$dumpvars;
//$finish;
end
//initial #20 $finish;
endmodule
