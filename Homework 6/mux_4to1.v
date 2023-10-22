module mux_4to1 (
    input wire [3:0] w,
    input wire [1:0] s,
    output wire f
);

wire [2:0] m;

mux_2to1 u0 (.x1(w[0]), .x2(w[1]), .s(s[0]), .f(m[0]));
mux_2to1 u1 (.x1(w[2]), .x2(w[3]), .s(s[0]), .f(m[1]));
mux_2to1 u2 (.x1(m[0]), .x2(m[1]), .s(s[1]), .f(m[2]));
mux_2to1 u3 (.x1(m[2]), .x2(1'b0), .s(s[1]), .f(f));

endmodule
