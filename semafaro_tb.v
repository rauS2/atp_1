`timescale 1ns/1ns
`include "semafaro.v"

module semafaro_tb;
    
    reg A, B;
    wire As, Bs;
    semafaro uut(A, B, As, Bs);

    initial begin
        $dumpfile("semafaro_tb.vcd");
        $dumpvars(0, semafaro_tb);

        A = 0;
        B = 0; #20;
        A = 0; 
        B = 1; #20;
        A = 1;
        B = 0; #20;
        A = 1;
        B = 1; #20;

        $display("Teste completo");
    end

endmodule
