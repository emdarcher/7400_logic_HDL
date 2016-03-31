

//Dual 2-to-4 line decoder/demultiplexer
//note inverted output and active LOW E signals
module ic_74139(
    Y_1,
    A_1, E_1,
    Y_2,
    A_2, E_2);
    output [3:0] Y_1, Y_2;
    input [1:0] A_1, A_2;
    input E_1, E_2;

    assign Y_1 = ~((4'b0001 << A_1) & {4{~E_1}});
    assign Y_2 = ~((4'b0001 << A_2) & {4{~E_2}});

endmodule
