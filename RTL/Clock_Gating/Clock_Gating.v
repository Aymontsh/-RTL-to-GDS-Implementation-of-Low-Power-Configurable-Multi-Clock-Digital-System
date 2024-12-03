
/*
// Module: Clock_Gating.v
// Description: Integrated Clock Gating Cell using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 28 Sep 2022
*/

module Clock_Gating (

    // -------------- input & output ports --------------

    input   wire                    CLK_EN,
    input   wire                    CLK,
    output  wire                    GATED_CLK

);

    // --------------- internal signals -------------------

    reg             Latch_OUT ;

    // --------------- assign signals -------------------

    assign  GATED_CLK = CLK && Latch_OUT ;

    // ----------- Clock Gating Operation -------------------

    always @( CLK or CLK_EN )

        begin
            if( !CLK )     
                begin
                    Latch_OUT <= CLK_EN ;
                end
        end

    // -------------- ICG Cell Instantiation --------------

    /*TLATNCAX8M TLATNCAX8M_I0 (

        .E ( CLK_EN ),
        .CK ( CLK ),
        .ECK ( GATED_CLK )

    );*/

endmodule