module easy_verilog_eaxample();
    reg x = 1'b0;
    reg y = 1'b1;
    reg z;

    // A procedure example
    always @(z) begin
        $display("x=%b, y=%b, z=%b", x, y, z);
    end

    // Another procedure
    initial begin
        #2;             // wait 2 time units
        z = x ^ y;      // bit-wise XOR between the 1 bit variables x and y
        #10;            // wait 10 time units
        y = 0;
        z = x | y;
        #10;
        z = ~z;
        #10;

    end

endmodule