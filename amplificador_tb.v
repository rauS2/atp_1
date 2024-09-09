`timescale 1ns/1ns
`include "amplificador.v"

module amplificador_tb;

    reg A, B;
    wire S;
    amplificador uut(A, B, S);

    initial begin
        $dumpfile("amplificador_tb.vcd");
        $dumpvars(0, amplificador_tb);

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
