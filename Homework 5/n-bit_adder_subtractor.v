module adder_subtractor #(parameter n =8)(carryin,SUB, X, Y, S, carryout,v);
    input carryin, SUB;
    input [n-1:0] X, Y;
    output reg [n-1:0] S;
    output reg carryout,v;
    reg [n:0] C;
    integer k;

    always @(X,Y,carryin)
    begin
        C[0] = carryin;
        for (k=0; k<n; k=k+1)
        begin

            if (SUB)
                S[k]=X[k]^(~Y[k])^C[k];
            else
                S[k]=X[k]^Y[k]^C[k];
            C[k+1] = (X[k]&Y[k])|(X[k]&C[k])|(C[k]&Y[k]);
        end
        carryout = C[n];
        if (SUB) 
            v = (X[n-1] & ~Y[n-1] & ~S[n-1]) | (~X[n-1] & Y[n-1] & S[n-1]);
        else 
            v = (X[n-1] & Y[n-1] & ~S[n-1]) | (~X[n-1] & ~Y[n-1] & S[n-1]);
    end
endmodule