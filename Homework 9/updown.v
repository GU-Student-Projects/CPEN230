module UpDownCounter(
  input wire clk,
  input wire rst,
  input wire down,
  output reg [2:0] count
);
  reg [2:0] next_count;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      count <= 3'b0;
    end else begin
      if (down) begin
        next_count = count - 1;
      end else begin
        next_count = count + 1;
      end
      count <= next_count;
    end
  end
endmodule
