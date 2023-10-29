module 8to3_encoder(
    input [7:0] sw,
    output [2:0] f
);

always @(*) begin
    case(sw)
        8'b00000001: f = 3'b000;
        8'b00000010: f = 3'b001;
        8'b00000100: f = 3'b010;
        8'b00001000: f = 3'b011;
        8'b00010000: f = 3'b100;
        8'b00100000: f = 3'b101;
        8'b01000000: f = 3'b110;
        8'b10000000: f = 3'b111;
        default: f = 3'b000; //The En bit is not activated or no switches are activated
    endcase
end

endmodule