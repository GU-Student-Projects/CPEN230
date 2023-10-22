module bcd_to_7segment_decoder (X,Y);
  input [3:0] X;   
  output reg [6:0] Y;

  always @(*) 
  begin
    case (X)
      4'd0: Y = 7'b1111110;
      4'd1: Y = 7'b0110000; 
      4'd2: Y = 7'b1101101; 
      4'd3: Y = 7'b1111001; 
      4'd4: Y = 7'b0110011; 
      4'd5: Y = 7'b1011011; 
      4'd6: Y = 7'b1011111; 
      4'd7: Y = 7'b1110000; 
      4'd8: Y = 7'b1111111; 
      4'd9: Y = 7'b1111011; 
      default:  Y = 7'b0010101; 
    endcase
  end

endmodule
