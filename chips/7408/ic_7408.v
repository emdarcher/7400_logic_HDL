

//7408 Quad 2-input AND gate
module ic_7408(
    Y1, A1, B1,
    Y2, A2, B2,
    Y3, A3, B3,
    Y4, A4, B4);
    output Y1, Y2, Y3, Y4;
    input A1, B1, A2, B2, A3, B3, A4, B4;

    assign Y1 = (A1 & B1); 
    assign Y2 = (A2 & B2); 
    assign Y3 = (A3 & B3); 
    assign Y4 = (A4 & B4); 

endmodule
