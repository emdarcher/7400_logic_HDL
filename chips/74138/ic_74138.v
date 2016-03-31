

//3-to-8 line decoder/demultiplexer; inverting
//note the enable inputs
module ic_74138(
    Y,
    A, E1, E2, E3);
    output [7:0] Y;
    input [2:0] A;
    input E1, E2, E3;
    
    assign Y = ~((8'b00000001 << A) & {8{(~E1 & ~E2 & E3)}});

endmodule
