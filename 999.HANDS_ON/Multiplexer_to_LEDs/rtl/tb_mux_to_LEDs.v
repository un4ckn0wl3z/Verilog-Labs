module tb_mux_to_LEDs ();

    parameter BUS_WIDTH = 4;
    reg i_sel;
    wire [BUS_WIDTH-1:0] o_y;
    integer i;

    mux_to_LEDs
    #(.N(BUS_WIDTH))
    MUX0
    (
        .i_sel(i_sel),
        .o_y(o_y)
    );

    initial begin
        $monitor($time, " i_sel = %b, o_y = %b", i_sel, o_y);
        #1; i_sel = 0;
        for (i = 0; i < 8 ; i=i+1 ) begin
            #1; i_sel = ~i_sel;
        end

    end
    
endmodule