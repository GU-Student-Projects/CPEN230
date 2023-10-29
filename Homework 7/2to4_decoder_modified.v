module 2to4_decoder (W, En, Y);
    input [1:0] W;
    input En;
    output reg [0:3] Y;
    integer k;

  always @(W, En)
    for (k = 0; k <= 3; k = k + 1) begin
      if (W == k)
        Y[k] = En;
      else
        Y[k] = 0; //Fixed to set all values not equal to K as 0. Also made sure all info was inside the always block
    end
endmodule