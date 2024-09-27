module bitwise_operator ();
    
    reg [5:0] x = 0;
    reg [5:0] y = 0;
    reg [5:0] result = 0;

    initial begin
        $monitor("MON x=%b, y=%b, result=%b", x, y, result);
    end

    initial begin
        #1; // wait some time between examples
        x = 6'b00_0101;
        y = 6'b11_0001;

        result = x & y; // AND; result = 000001

        #1;
        result = x | y; // OR; result = 110101

        #1;
        result = ~(x | y); // NOR; result = 001010

        #1;
        x = 6'b01_0110;
        y = 6'b01_1011;

        result = x ^ y; // XOR; result = 001101

        #1;

        result = x ~^ y; // NXOR; result = 110010

        #1;
        x = y;
        result = ~(x ^ y); // NXOR; result = 111111

    end


endmodule