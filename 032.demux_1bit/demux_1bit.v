module demux_1bit (
    input x, sel,
    output y0, y1);

    wire sel_not;

    not not1(sel_not, sel);
    and and1 (y0, sel_not, x);
    and and2 (y1, sel, x);
    
endmodule