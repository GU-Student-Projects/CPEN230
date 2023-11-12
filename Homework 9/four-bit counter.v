module T_FlipFlop (
  input wire clk,
  input wire rst,
  input wire T,
  output reg Q
);
  reg D;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      Q <= 4'b0;
    end else begin
      D <= T ^ Q[0];
      Q <= {Q[2:0], D};
    end
  end
endmodule

module FourBitCounter (
  input wire clk,
  input wire rst,
  output reg [3:0] Q
);
  wire [3:0] Q_int;

  T_FlipFlop num_1 (.clk(clk), .rst(rst), .T(1'b1), .Q(Q_int[0]));
  T_FlipFlop num_2 (.clk(clk), .rst(rst), .T(Q_int[0]), .Q(Q_int[1]));
  T_FlipFlop num_3 (.clk(clk), .rst(rst), .T(Q_int[1]), .Q(Q_int[2]));
  T_FlipFlop num_4 (.clk(clk), .rst(rst), .T(Q_int[2]), .Q(Q_int[3]));

  assign Q = Q_int;
endmodule
