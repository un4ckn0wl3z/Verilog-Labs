module logical_oeprator_usage ();
    
    reg [2:0] my_val1 = 3'b111;
    reg [3:0] my_val2 = 4'b0000;

    initial begin
        #1;
        if (!my_val1) begin
            $display("GREAT! my_val1=%b", my_val1);
        end else begin
            $display(":( I expected my_val1=0 but my_val1=%b", my_val1);
        end

        #1;
        if (!my_val2) begin
            $display("GREAT! my_val2=%b", my_val2);
        end else begin
            $display(":( I expected my_val2=0 but my_val2=%b", my_val2);
        end

        #1;
        if (my_val1 && !(my_val2)) begin
            $display("GREAT! my_val1=%b, my_val2=%b", my_val1, my_val2);
        end else begin
            $display(":( I expected my_val1!=0 AND my_val2=0 but my_val1=%b, my_val2=%b",  my_val1, my_val2);
        end

        #1;
        while (my_val2 < 3) begin
             $display("WHILE LOOP my_val2=%d", my_val2);
             my_val2 = my_val2 + 1; // increment my_val2
        end

    end


endmodule