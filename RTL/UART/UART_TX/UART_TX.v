
/*
// Module: UART_TX.v
// Description: UART Transmitter using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 18 Sep 2022
*/

module UART_TX 
#( parameter Data_width = 8 )

(
    input   wire    [ Data_width-1 : 0 ]    P_DATA,
    input   wire                            Data_Vaild,
    input   wire                            PAR_EN,
    input   wire                            PAR_TYP,
    input   wire                            CLK,
    input   wire                            RST,
    output  wire                            TX_OUT,
    output  wire                            Busy

);

    // --------------- internal signals --------------------

    wire                        ser_en; 
    wire                        ser_data;
    wire                        ser_done;
    wire        [1:0]           mux_sel;
    wire                        par_bit;

    // ------------ Serializer Instantation ----------------

    serializer  #( .Data_width (Data_width) ) serializer_I (
        
        .P_DATA ( P_DATA ),
        .ser_en ( ser_en ),
        .CLK ( CLK ),
        .RST ( RST ),
        .Busy ( Busy ),
        .mux_sel ( mux_sel ),
        .Data_Vaild ( Data_Vaild ),
        .ser_data ( ser_data ),
        .ser_done ( ser_done )

    );

    // --------------- FSM Instantation -------------------

    FSM  FSM_I (

        .Data_Vaild ( Data_Vaild ),
        .PAR_EN ( PAR_EN ),
        .ser_done ( ser_done ),
        .CLK ( CLK ),
        .RST ( RST ),
        .mux_sel ( mux_sel ),
        .ser_en ( ser_en ),
        .busy ( Busy )

     );

     // --------------- MUX Instantation -------------------

     MUX MUX_I (

        .ser_data ( ser_data ),
        .mux_sel ( mux_sel ),
        .par_bit ( par_bit ),
        .CLK ( CLK ),
        .RST ( RST ),
        .TX_OUT ( TX_OUT )

     );

    // -------------- Parity Instantation ------------------

    Parity_Calc #( .Data_width (Data_width) ) Parity_Calc_I (

        .P_DATA ( P_DATA ),
        .Data_Vaild ( Data_Vaild ),
        .PAR_TYP (PAR_TYP),
        .mux_sel ( mux_sel ),
        .Busy (Busy),
        .CLK ( CLK ),
        .RST ( RST ),       
        .par_bit (par_bit)

    );

endmodule