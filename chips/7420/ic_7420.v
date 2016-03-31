

//Dual 4-input NAND gate
module ic_7420(
    Y1, A1, B1, C1, D1,
    Y2, A2, B2, C2, D2);
    output Y1, Y2;
    input A1, A2;
    input B1, B2;
    input C1, C2;
    input D1, D2;

    assign Y1 = ~(A1 & B1 & C1 & D1); 
    assign Y2 = ~(A2 & B2 & C2 & D2);

endmodule
