f(x,y,z)    = xy'(z+x) + (zy+x)(x'z'+y)
            = x'f(0,y,z) + xf(1,y,z)
            = x'(zy(z'+y)) + x(y' + y)
            = x'zy + x1

module decoder_n (En,w,y);
    parameter n = 8
    input En;
    input [n-1:0] w;
    output reg [2**n-1:0] y;

    integer K;

    always @(En, W) begin
        for (k = 0; k < 2**n; k = k+1) begin
            if(En && W == K)
                y[k] = 1;
            else
                y[k] = 0;
        end
    end
endmodule

module 6to64_decoder (x, f);
    input [5:0] x;
    output f;

    wire [63:0] m;

    decoder_n #(.n(6)) decode6 (.En(1'b1), x, m);

    assign f = m[1]|m[9]|m[17]|m[27]|m[43]|m[59];

endmodule