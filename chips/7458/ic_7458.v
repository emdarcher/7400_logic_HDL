

//Dual AND-OR gate
module ic_7458(
    Y1,
    A1, B1, C1, D1, E1, F1,
    Y2,
    A2, B1, C2, D2);
    output Y1, Y2;
    input A1, B1, C1, D1, E1, F1;
    input A2, B1, C2, D2;

    assign Y1 = ( &{A1, B1, C1} | &{D1, E1, F1} );
    assign Y2 = ( (A2 & B2) | (C2 & D2) );

endmodule
