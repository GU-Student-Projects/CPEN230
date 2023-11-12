module jk_flip_flop (
  input wire J,
  input wire K,
  input wire clk,
  input wire rst,
  output reg Q,
  output reg Qn
);
  reg toggle;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      Q <= 1'b0;
      Qn <= 1'b1;
    end else begin
      if (J && K) begin
      end else if (J) begin
        Q <= 1'b1;
        Qn <= 1'b0;
      end else if (K) begin
        Q <= 1'b0;
        Qn <= 1'b1;
      end else begin
        Q <= toggle;
        Qn <= ~toggle;
      end
    end
  end

  always @(posedge clk) begin
    toggle <= J ^ Q;
  end

endmodule
