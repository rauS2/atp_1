module amplificador(A, B, S);
    input A, B;
    output S;

    assign S = A | (~A & B) | (~A & ~B);
    
endmodule