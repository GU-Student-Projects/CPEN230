module h3to8(
    input [2:0] in,   
    output [7:0] out   
);

    wire [3:0] in1, in2; 

    if2to4 u1(.sw(in[1:0]), .f(in1));
    if2to4 u2(.sw(in[2:1]), .f(in2));

    assign out = {in2, in1};

endmodule

module h6to64 (
    input [5:0] in,
    output [63:0] out
);

    wire [7:0] sub1, sub2, sub3, sub4, sub5, sub6, sub7, sub8;

    h3to8 u1 (.in(in[2:0]), .out(sub1));
    h3to8 u2 (.in(in[5:3]), .out(sub2));
    h3to8 u3 (.in(in[2:0]), .out(sub3));
    h3to8 u4 (.in(in[5:3]), .out(sub4));
    h3to8 u5 (.in(in[2:0]), .out(sub5));
    h3to8 u6 (.in(in[5:3]), .out(sub6));
    h3to8 u7 (.in(in[2:0]), .out(sub7));
    h3to8 u8 (.in(in[5:3]), .out(sub8));

    assign out = {sub8, sub7, sub6, sub5, sub4, sub3, sub2, sub1}

endmodule