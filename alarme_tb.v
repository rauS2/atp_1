`timescale 1ns/1ns
`include "alarme.v"

module alarme_tb;

    reg A, B, C, D;
    wire S;
    alarme uut(A, B, C, D, S);

    initial begin
        $dumpfile("alarme_tb.vcd");
        $dumpvars(0, alarme_tb);

        A = 0; B = 0; C = 0; D = 0; #20;
        A = 0; B = 0; C = 0; D = 1; #20;
        A = 0; B = 0; C = 1; D = 0; #20;
        A = 0; B = 0; C = 1; D = 1; #20;
        A = 0; B = 1; C = 0; D = 0; #20;
        A = 0; B = 1; C = 0; D = 1; #20;
        A = 0; B = 1; C = 1; D = 0; #20;
        A = 0; B = 1; C = 1; D = 1; #20;
        A = 1; B = 0; C = 0; D = 0; #20;
        A = 1; B = 0; C = 0; D = 1; #20;
        A = 1; B = 0; C = 1; D = 0; #20;
        A = 1; B = 0; C = 1; D = 1; #20;
        A = 1; B = 1; C = 0; D = 0; #20;
        A = 1; B = 1; C = 0; D = 1; #20;
        A = 1; B = 1; C = 1; D = 0; #20;
        A = 1; B = 1; C = 1; D = 1; #20;

        $display("Teste completo");
    end

endmodule