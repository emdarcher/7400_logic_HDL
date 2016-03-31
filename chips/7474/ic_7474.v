//Dual D-type flip-flop with set and reset; positive edge-trigger

//SD and RD are active low
module FF_D(Q, nQ, CP, D, SD, RD);
    output reg Q, nQ;
    input CP, D, SD, RD;

    always @(posedge CP)
        begin
        if(SD & RD)
            begin 
            Q <= D;
            nQ <= ~D;
            end
        end

    always @(SD, RD)
        begin
        if(~SD & RD)
            begin
            Q <= 1;
            nQ <= 0;
            end
        else if(SD & ~RD)
            begin
            Q <= 0;
            nQ <= 1;
            end
        else if(~SD & ~RD)
            begin
            Q <= 1;
            nQ <= 1;
            end
        end

endmodule

module ic_7474(
    Q1, nQ1,
    CP1, D1, SD1, RD1,
    Q2, nQ2,
    CP2, D2, SD2, RD2);
    output Q1, nQ1;
    input CP1, D1, SD1, RD1;
    output Q2, nQ2;
    input CP2, D2, SD2, RD2;
   
    FF_D FF1(Q1, nQ1, CP1, D1, SD1, RD1);
    FF_D FF2(Q2, nQ2, CP2, D2, SD2, RD2);

endmodule
