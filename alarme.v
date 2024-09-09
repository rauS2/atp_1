module alarme(A,B,C,D, S);
    input A, B, C, D;
    output S;

    assign S = C | (A & D) | (B & D);
endmodule