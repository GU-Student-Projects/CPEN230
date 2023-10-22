module multiply #(parameter n =8)(A,B,S);
    input [n-1:0] A, B;
    output reg [(n+n)-1:0] S;
    integer k;

    always @(*)
    begin
        S = 0;
        for (k=0; k<n; k=k+1)
        begin
            if (B[k] == 1)
            S = S + (A << k);
        end
    end
endmodule