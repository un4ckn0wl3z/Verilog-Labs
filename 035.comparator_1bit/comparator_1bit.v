module comparator_1bit (
    input a, b,
    output smaller, equal, greater
);

    wire not_a;
    wire not_b;

    not NOT1 (not_a, a);
    not NOT2 (not_b, b);

    and AND1 (smaller, b, not_a);
    xnor XNOR1 (equal, a, b);
    and AND2 (greater, a, not_b);

    
endmodule