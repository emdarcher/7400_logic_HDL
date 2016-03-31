

//BCD to decimal decoder (1-of-10)
//note the inverted output
module ic_7442(
    output [9:0] Y,
    input [3:0] A);

    assign Y = ~(10'b0000000001 << A);

endmodule
