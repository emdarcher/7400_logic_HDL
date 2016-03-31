

//7427 Triple 3-input NOR gate
module ic_7427(
    Y1, A1, B1, C1,
    Y2, A2, B2, C2,
    Y3, A3, B3, C3);
    output Y1, Y2, Y3;
    input A1, A2, A3;
    input B1, B2, B3;
    input C1, C2, C3;

    assign Y1 = ~(A1 | B1 | C1); 
    assign Y2 = ~(A2 | B2 | C2);
    assign Y3 = ~(A3 | B3 | C3); 

endmodule
