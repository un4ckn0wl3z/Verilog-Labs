module reduction_operator ();

    reg [4:0] my_val1 = 5'b1_1111;
    reg [8:0] my_val2 = 9'b1_0101_1110;
    reg [8:0] result;

    initial begin
        $monitor("MON my_val1=%b, my_val2=%b, result=%b", my_val1, my_val2, result);
    end

    initial begin
        result = &my_val1; // AND Reduction 11111 
                           // result        1
        #1;
        result = &my_val2; // AND           101011110
                           // result        0
        #1;
        result = ~&my_val2; // NAND         101011110
                            // result       1
        #1;
        result = ~&my_val1; // NAND         11111
                            // result       0

        #1;
        result = |my_val2; // OR           010100001
                           // result       1

        #1;
        result = ~|my_val2; // NOR          010100001
                            // result       0

        #1;
        result = ^my_val1; // XOR          11111
                           // result       1

       #1;
       result = ~^my_val1; // NXOR         11111
                           // result       0

    end

endmodule