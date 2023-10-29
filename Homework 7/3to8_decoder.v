module 3to8-decoder(w1,w2,w3,f);
    input w1,w2,w3;
    output reg f;

    always @* begin
        case({w3,w2,w1})
        3'b001: f = 1;
        3'b010: f = 1;
        3'b011: f = 1;
        3'b101: f = 1;
        3'b110: f = 1;
        default: f = 0;
        endcase
    end

endmodule