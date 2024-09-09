module semafaro(A, B, As, Bs);

    input A, B;
    output As, Bs;

    assign As = A;
    assign Bs = ~A & B;
    
endmodule
