module mux_1bit (
    input a, b, x,
    output y);

    wire nox_x;
    wire bit1;
    wire bit2;

    not not1 (nox_x, x);
    and and1 (bit1, a, nox_x);
    and and2 (bit2, b, x);
    or (y, bit1, bit2);

endmodule