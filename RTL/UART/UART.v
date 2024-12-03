
/*
// Module: UART.v
// Description: Top Module for UART using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 23 Sep 2022
*/

module UART 
#( parameter Data_width = 8 , Prescale_width = 5 )

(

    // ---------- input & output ports --------------

    input   wire                                    RX_IN,
    input   wire    [ Data_width-1 : 0 ]            P_DATA_TX,
    input   wire                                    RX_CLK,
    input   wire                                    TX_CLK,
    input   wire                                    RST,
    input   wire                                    PAR_EN,
    input   wire                                    PAR_TYP,
    input   wire    [ Prescale_width-1 : 0 ]        Prescale,
    input   wire                                    Data_Vaild_TX,
    output  wire                                    data_valid_RX,
    output  wire                                    Busy,
    output  wire                                    TX_OUT,
    output  wire    [ Data_width-1 : 0 ]            P_DATA_RX,
    output  wire                                    par_err,
    output  wire                                    stp_err
        
);

    // --------------- UART_RX Instantation ----------------

    UART_RX #( .Data_width ( Data_width ) , .Prescale_width ( Prescale_width ) ) UART_RX_I0 (

        .RX_IN ( RX_IN ),
        .PAR_EN ( PAR_EN ),
        .Prescale ( Prescale ),
        .PAR_TYP ( PAR_TYP ),
        .CLK ( RX_CLK ),
        .RST ( RST ),
        .par_err ( par_err ),
        .stp_err ( stp_err ),
        .data_valid ( data_valid_RX ),
        .P_DATA_RX ( P_DATA_RX ) 
    );

    // --------------- UART_TX Instantation ----------------

    UART_TX #( .Data_width ( Data_width ) ) UART_TX_I0 (

        .P_DATA ( P_DATA_TX ),
        .Data_Vaild ( Data_Vaild_TX ),
        .PAR_EN ( PAR_EN ),
        .PAR_TYP ( PAR_TYP ),
        .CLK ( TX_CLK ),
        .RST ( RST ),
        .TX_OUT ( TX_OUT ),
        .Busy ( Busy )
    );
endmodule 