

//Dual 4-input multiplexer
//not the active low E signals
module ic_74153(
    Y_1,
    I_1, E_1,
    Y_2,
    I_2, E_2,
    S);
    output Y_1, Y_2;
    input [3:0] I_1, I_2;
    input E_1, E_2;
    input [1:0] S;

    assign Y_1 = |(I_1 & (4'b0001 << S)) & ~E_1;
    assign Y_2 = |(I_2 & (4'b0001 << S)) & ~E_2;

endmodule
