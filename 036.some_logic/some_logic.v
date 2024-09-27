module some_logic (
    input a,
    input b,
    output c);

    wire a_not;
    wire a_or_b;

    assign a_not = ~a;
    assign a_or_b = a | b;
    assign c = a_or_b | (a_not & a_or_b);
    
endmodule