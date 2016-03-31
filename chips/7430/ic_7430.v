

//8-input NAND gate
module ic_7430(
    Y,
    A, B, C, D, E, F, G, H);
    output Y;
    input A, B, C, D, E, F, G, H;

    assign Y = ~&{A, B, C, D, E, F, G, H};

endmodule

