module tFlipFlop(
    input T,
    input clear,
    output reg Q
);

always @(*)
    begin
        if (clear)
            Q <= 1'b0
        else if (T)
            Q <= ~Q
    end
endmodule