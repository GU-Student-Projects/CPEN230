module Mod12Counter (
  input wire clk,
  input wire rst,
  output reg [3:0] count
);

  always @(posedge clk) begin
    if (rst) begin
      count <= 4'b0000;
    end else begin
      if (count == 4'b1011) begin
        count <= 4'b0000;
      end else begin
        count <= count + 1;
      end
    end
  end

endmodule
