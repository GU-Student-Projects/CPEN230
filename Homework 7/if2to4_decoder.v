module if2to4 (
    input [1:0] sw,
    output [3:0] f
);

    always @(*) begin
        if (sw == 2'b00)
            f = 4'b0001;
        else if (sw == 2'b01)
            f = 4'b0010;
        else if (sw == 2'b10)
            f = 4'b0100;
        else 
            f = 4'b1000;
    end
endmodule

module h3to8(
    input [2:0] in,   
    output [7:0] out   
);

    wire [3:0] in1, in2; 

    if2to4 u1(.sw(in[1:0]), .f(in1));
    if2to4 u2(.sw(in[2:1]), .f(in2));

    assign out = {in2, in1};

endmodule
