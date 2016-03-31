

//Quad buffer/line driver, 3-state
//note that OE is low asserted
module ic_74125(
    Y1, A1, OE1,
    Y2, A2, OE2,
    Y3, A3, OE3,
    Y4, A4, OE4);
    output Y1, Y2, Y3, Y4;
    input A1, A2, A3, A4;
    input OE1, OE2, OE3, OE4;

    assign Y1 = (!OE1) ? A1 : 1'bZ;
    assign Y2 = (!OE2) ? A2 : 1'bZ;
    assign Y3 = (!OE3) ? A3 : 1'bZ;
    assign Y4 = (!OE4) ? A4 : 1'bZ;

endmodule
