module dec2to4 (W, En, Y);
    input [1:0] W;
    input En;
    output reg [0:3] Y;
    always @(W, En)
    case ({En, W})
        3'b100: Y = 4'b1000;
        3'b101: Y = 4'b0100;
        3'b110: Y = 4'b0010;
        3'b111: Y = 4'b0001;
        default: Y = 4'b0000;
    endcase
endmodule

module 4to1mux (S, W, F);
    input [1:0] S;
    input [3:0] W;
    output reg F;

    wire [0:3] F_intermediate;

    dec2to4 decoder1 (.W(S), .En(1'b1), .Y(F_intermediate));

    assign F_intermediate[0] = W[0] & F_intermediate[0];
    assign F_intermediate[1] = W[1] & F_intermediate[1];
    assign F_intermediate[2] = W[2] & F_intermediate[2];
    assign F_intermediate[3] = W[3] & F_intermediate[3];

    assign F = F_intermediate[0] | F_intermediate[1] | F_intermediate[2] | F_intermediate[3];

endmodule