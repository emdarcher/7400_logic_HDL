

//4-to-16 line decoder/demultiplexer
//inverted outputs, note the two active low enable lines
module ic_74154(
    Y,
    A, E0, E1);
    output [15:0] Y;
    input [3:0] A;
    input E0, E1;

    assign Y = ~((16'h0001 << A) & {16{(~E0 & ~E1)}});

endmodule
