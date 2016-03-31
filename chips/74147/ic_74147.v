

//10-to-4 line priority encoder
//converts decimal to BCD
//inverted inputs and outputs
module ic_74147(
    Y,
    A);
    output [3:0] Y;
    input [8:0] A;

    assign Y = ~{
        |(A & 9'b110000000), //Y3
        |(A & 9'b001111000), //Y2
        |(A & 9'b001100110), //Y1
        |(A & 9'b101010101)}; //Y0

endmodule
