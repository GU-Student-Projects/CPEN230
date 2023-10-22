module power2 #(parameter n = 8)(D,D_S);
    input [n-1:0] D;
    output reg [(n+n)-1:0] D_S;

    multiply #(n) mult (.A(D),.B(D),.S(D_S));

endmodule