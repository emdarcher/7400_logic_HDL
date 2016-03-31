

//8-input multiplexer
//E (enable) is active low
module ic_74151(
    Y, nY,
    I,
    S, E);
    output Y, nY;
    input [7:0] I;
    input [2:0] S;
    input E;

    assign Y = |(I & (8'b00000001 << S)) & ~E;
    assign nY = ~Y;

endmodule
