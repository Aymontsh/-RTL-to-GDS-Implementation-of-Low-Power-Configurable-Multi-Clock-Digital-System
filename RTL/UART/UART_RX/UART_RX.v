
/*
// Module: UART_RX.v
// Description: UART Receiver using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 22 Sep 2022
*/

module UART_RX 
#( parameter Data_width = 8 , Prescale_width = 5 )

(

    // ---------- input & output ports --------------

    input   wire                                        RX_IN, 
    input   wire                                        PAR_EN,
    input   wire        [ Prescale_width-1 : 0 ]        Prescale,
    input   wire                                        PAR_TYP,
    input   wire                                        CLK,
    input   wire                                        RST,
    output  wire                                        par_err,
    output  wire                                        stp_err,
    output  wire                                        data_valid,
    output  wire        [ Data_width-1 : 0 ]            P_DATA_RX

);

    // ----------------- internal signals ------------------

    wire                                deser_en;
    wire                                sampled_bit;
    wire            [2:0]               edge_cnt;
    wire                                par_chk_en;
    wire                                stp_chk_en;
    wire                                strt_chk_en;
    wire                                dat_samp_en;
    wire                                enable;
    wire            [3:0]               bit_cnt;
    wire                                strt_glitch;



    // ------------ Deserializer Instantation ----------------

    deserializer #( .Data_width ( Data_width ) ) deserializer_I (

        .deser_en ( deser_en ),
        .sampled_bit ( sampled_bit ),
        .edge_cnt (edge_cnt),
        .CLK ( CLK ),
        .RST (RST),
        .P_DATA (P_DATA_RX)

    );

    // ------------ Start bit Check Instantation ----------------

    strt_check strt_check_I (

        .strt_chk_en ( strt_chk_en ),
        .sampled_bit ( sampled_bit ),
        .strt_glitch ( strt_glitch )
    );

    // ------------ parity Check Instantation ------------------

    parity_check #( .Data_width ( Data_width ) ) parity_check_I (

        .par_chk_en ( par_chk_en ),
        .sampled_bit ( sampled_bit ),
        .PAR_TYPE ( PAR_TYP ),
        .P_DATA ( P_DATA_RX ),
        .par_err ( par_err )
    );

    // ------------ Stop bit Check Instantation ----------------

    stop_check  stop_check_I (

        .stp_chk_en ( stp_chk_en ),
        .sampled_bit ( sampled_bit ),
        .stp_err ( stp_err )
    );

    // ------------ Data Sampling Instantation ----------------

    data_sampling #( .Prescale_width ( Prescale_width ) ) data_sampling_I (

        .edge_cnt (edge_cnt),
        .dat_samp_en ( dat_samp_en ),
        .CLK ( CLK ),
        .RST ( RST ),
        .RX_IN ( RX_IN ),
        .Prescale ( Prescale ),
        .sampled_bit ( sampled_bit )
    );

    // ------------ Edge Bit Counter Instantation ----------------

    edge_bit_counter edge_bit_counter_I (

        .enable ( enable ),
        .CLK ( CLK ),
        .RST ( RST ),
        .bit_cnt ( bit_cnt ),
        .edge_cnt ( edge_cnt )
    );

    // ------------------ FSM Instantation --------------------

    RX_FSM RX_FSM (

        .RX_IN (RX_IN),
        .PAR_EN ( PAR_EN ),
        .bit_cnt ( bit_cnt ),
        .edge_cnt ( edge_cnt ),
        .par_err ( par_err ),
        .strt_glitch ( strt_glitch ),
        .stp_err ( stp_err ),
        .CLK ( CLK ),
        .RST ( RST ),
        .dat_samp_en ( dat_samp_en ),
        .par_chk_en ( par_chk_en ),
        .strt_chk_en ( strt_chk_en ),
        .stp_chk_en ( stp_chk_en ),
        .enable ( enable ),
        .deser_en ( deser_en ),
        .data_vaild ( data_valid )
    );

endmodule