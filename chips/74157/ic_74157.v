

//Quad 2-input multiplexer; noninverting
//active LOW E
module ic_74157(
    Y_1, I0_1, I1_1,
    Y_2, I0_2, I1_2,
    Y_3, I0_3, I1_3,
    Y_4, I0_4, I1_4,
    S, E);
    output Y_1, Y_2, Y_3, Y_4;
    input I0_1, I1_1, 
          I0_2, I1_2,
          I0_3, I1_3,
          I0_4, I1_4;
    input S, E;

    assign Y_1 = ((S)? I1_1:I0_1) & ~E;
    assign Y_2 = ((S)? I1_2:I0_2) & ~E;
    assign Y_3 = ((S)? I1_3:I0_3) & ~E;
    assign Y_4 = ((S)? I1_4:I0_4) & ~E;

endmodule
    
