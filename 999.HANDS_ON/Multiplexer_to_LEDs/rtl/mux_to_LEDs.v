module mux_to_LEDs 
    #( parameter N = 4)
    (
        input i_sel,
        output [N-1:0] o_y);

    reg [N-1:0] bus_a = 4'b0000;
    reg [N-1:0] bus_b = 4'b1111;

    assign o_y = i_sel ? bus_b : bus_a;
    
endmodule