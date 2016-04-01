//Dual J-K Flip-Flop with Reset and Negative-Edge Trigger
//R is active low
module FF_JK(Q, nQ, CP, J, K, R);
    output reg Q, nQ;
    input CP, J, K, R;
    wire next_Q;
    
    assign next_Q = ((J & nQ) | (K & Q));

    always @(negedge CP)
        begin
        if(!(~R))
            begin
            Q <= next_Q;
            nQ <= ~next_Q;
            end
        end

    always @(R)
        if(~R)
            begin
            Q <= 0;
            nQ <= 1;
            end

endmodule

module ic_7473(
    Q1, nQ1, CP1, J1, K1, R1,
    Q2, nQ2, CP2, J2, K2, R2);
    output Q1, Q2;
    input CP1, J1, K1, R1, CP2, J2, K2, R2;
    
    FF_JK FF1(Q1, nQ1, CP1, J1, K1, R1);
    FF_JK FF2(Q2, nQ2, CP2, J2, K2, R2);

endmodule
