module mux_2to1 (
    input wire x1,
    input wire x2,
    input wire s,
    output wire f
);

assign f = (s == 1'b0) ? x1 : x2;

endmodule
