
/*
// Module: SYS_TOP.v
// Description: System Controller using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 1 October 2022
*/

module SYS_TOP 
#( parameter Data_width          = 8 ,
             OPERAND_WIDTH       = 8 ,
             ALU_OUT_WIDTH       = OPERAND_WIDTH + OPERAND_WIDTH , 
             NUM_OF_OPERATIONS   = 16,
             DEPTH               = 16,
             NUM_STAGES          = 2,
             BIT_SYNC_BUS_WIDTH  = 1,
             DATA_SYNC_BUS_WIDTH = 8,
             ratio_width         = 4,
             Prescale_width      = 5   

 )

(
    // ------------------------ input & output ports ----------------------------------

    input   wire                                        RX_IN,
    input   wire                                        REF_CLK,
    input   wire                                        UART_CLK,
    input   wire                                        RST,
    input   wire                                        scan_clk,
    input   wire                                        scan_rst,
    input   wire                                        test_mode,
    input   wire                                        SE,
    input   wire            [2:0]                       SI,
    output  wire            [2:0]                       SO,
    output  wire                                        TX_OUT,
    output  wire                                        par_err,
    output  wire                                        stp_err

);

    // ---------------------------- internal signals -----------------------------------

    wire            [      Data_width-1     : 0 ]           WrData;
    wire            [    $clog2 (DEPTH)-1   : 0 ]           Address;
    wire                                                    WrEn;
    wire                                                    RdEn;
    wire                                                    SYNC_RST1;
    wire                                                    SYNC_RST2;
    wire            [      Data_width-1     : 0 ]           RdData;
    wire                                                    RdData_Valid;
    wire            [      Data_width-1     : 0 ]           REG0;
    wire            [      Data_width-1     : 0 ]           REG1;
    wire            [      Data_width-1     : 0 ]           REG2;
    wire            [      Data_width-1     : 0 ]           REG3;
    wire            [      Data_width-1     : 0 ]           RX_P_DATA;
    wire                                                    RX_D_VLD;
    wire            [     ALU_OUT_WIDTH-1   : 0 ]           ALU_OUT;
    wire                                                    OUT_Valid;
    wire                                                    SYNC_Busy;
    wire                                                    Busy;
    wire                                                    EN;
    wire       [   $clog2 (NUM_OF_OPERATIONS)-1 : 0 ]       ALU_FUN;
    wire                                                    CLK_EN;
    wire                                                    clk_div_en;
    wire            [      Data_width-1     : 0 ]           TX_P_DATA;
    wire                                                    TX_D_VLD;
    wire            [      Data_width-1     : 0 ]           P_DATA_TX;
    wire                                                    TX_CLK; 
    wire                                                    Data_Vaild_TX;
    wire                                                    data_valid_RX;
    wire            [      Data_width-1     : 0 ]           P_DATA_RX;
    wire                                                    ALU_CLK;
    wire                                                    CLK1_fun_scan;
    wire                                                    CLK2_fun_scan;
    wire                                                    CLK3_fun_scan;
    wire                                                    CLK4_fun_scan;
    wire                                                    RST_fun_scan;
    wire                                                    RST1_fun_scan;
    wire                                                    RST2_fun_scan;


    // ------------------------ Register File Instantation -----------------------------

    RegFile #( .WIDTH ( Data_width ) , .DEPTH ( DEPTH ) ) RegFile_I0 (

        .WrData ( WrData ),
        .Address ( Address ),
        .WrEn ( WrEn ),
        .RdEn ( RdEn ),
        .CLK ( CLK1_fun_scan ),
        .RST ( RST1_fun_scan ),
        .RdData ( RdData ),
        .RdData_Valid ( RdData_Valid ),
        .REG0 ( REG0 ),
        .REG1 ( REG1 ),
        .REG2 ( REG2 ),
        .REG3 ( REG3 )
    );

    // ------------------------ Clock Divider Instantation -----------------------------

    ClkDiv #( .ratio_width ( ratio_width ) ) ClkDiv_I0 (

        .i_ref_clk ( CLK2_fun_scan ),
        .i_rst_n ( RST2_fun_scan ),
        .i_clk_en ( clk_div_en ),
        .i_div_ratio ( REG3 [3:0] ),
        .o_div_clk ( TX_CLK )
    );

    // ------------------------ Clock Gating Instantation -----------------------------
    
    Clock_Gating Clock_Gating_I0 (

        .CLK_EN ( CLK_EN ),
        .CLK ( CLK1_fun_scan ),
        .GATED_CLK ( ALU_CLK )
    );

    // ----------------- Bit Synchronization Instantation -------------------------

    BIT_SYNC #( .NUM_STAGES ( NUM_STAGES ) , .BUS_WIDTH ( BIT_SYNC_BUS_WIDTH ) ) BIT_SYNC_I0 (

        .ASYNC ( Busy ),
        .CLK ( CLK1_fun_scan ),
        .RST ( RST1_fun_scan ),
        .SYNC ( SYNC_Busy )
    ); 

    // ------------------ Data Synchronization Instantation -------------------------

    // ------- Between RX and SYS_CTRL -------

    DATA_SYNC #( .NUM_STAGES ( NUM_STAGES ) , .BUS_WIDTH ( DATA_SYNC_BUS_WIDTH ) ) DATA_SYNC_I0 (

        .Unsync_bus ( P_DATA_RX ),
        .bus_enable ( data_valid_RX ),
        .CLK ( CLK1_fun_scan ),
        .RST ( RST1_fun_scan ),
        .sync_bus ( RX_P_DATA ),
        .enable_pulse ( RX_D_VLD )
    );

    // ------ Between TX and SYS_CTRL --------

    DATA_SYNC #( .NUM_STAGES ( NUM_STAGES ) , .BUS_WIDTH ( DATA_SYNC_BUS_WIDTH ) ) DATA_SYNC_I1 (

        .Unsync_bus ( TX_P_DATA ),
        .bus_enable ( TX_D_VLD ),
        .CLK ( CLK3_fun_scan ),
        .RST ( RST2_fun_scan ),
        .sync_bus ( P_DATA_TX ),
        .enable_pulse ( Data_Vaild_TX )
    );

    // ----------------- Reset Synchronization Instantation ------------------------

    RST_SYNC #( .NUM_STAGES ( NUM_STAGES ) ) RST_SYNC_I0 (

        .RST ( RST_fun_scan ),
        .CLK ( CLK1_fun_scan ),
        .SYNC_RST ( SYNC_RST1 )
    );

    RST_SYNC #( .NUM_STAGES ( NUM_STAGES ) ) RST_SYNC_I1 (

        .RST ( RST_fun_scan ),
        .CLK ( CLK2_fun_scan ),
        .SYNC_RST ( SYNC_RST2 )
    );

    // ------------------------ System Controller Instantation -----------------------------

    SYS_CTRL #( .Data_width ( Data_width ), .OPERAND_WIDTH ( OPERAND_WIDTH ) , .ALU_OUT_WIDTH ( ALU_OUT_WIDTH ) , .NUM_OF_OPERATIONS ( NUM_OF_OPERATIONS ) , .DEPTH ( DEPTH )  ) SYS_CTRL_I0 ( 

        .RX_P_DATA ( RX_P_DATA ),
        .RX_D_VLD ( RX_D_VLD ),
        .CLK ( CLK1_fun_scan ),
        .RST ( RST1_fun_scan ),
        .ALU_OUT ( ALU_OUT ),
        .OUT_Valid ( OUT_Valid ),
        .RDData ( RdData ),
        .RdData_Valid ( RdData_Valid ),
        .Busy ( SYNC_Busy ),
        .EN ( EN ),
        .ALU_FUN ( ALU_FUN ),
        .CLK_EN ( CLK_EN ),
        .Address ( Address ),
        .WrEn ( WrEn ),
        .RdEn ( RdEn ),
        .WrData ( WrData ),
        .clk_div_en ( clk_div_en ),
        .TX_P_DATA ( TX_P_DATA ),
        .TX_D_VLD ( TX_D_VLD )
    );

    // -------------------------- ALU Instantation ---------------------------------------

    ALU #( .OPERAND_WIDTH ( OPERAND_WIDTH ) , .RESULT_WIDTH ( ALU_OUT_WIDTH ) , .NUM_OF_OPERATIONS ( NUM_OF_OPERATIONS ) ) ALU_I0 (

        .A ( REG0 ),
        .B ( REG1 ),
        .ALU_FUN ( ALU_FUN ),
        .Enable ( EN ),
        .CLK ( CLK4_fun_scan ),
        .RST ( RST1_fun_scan ),
        .ALU_OUT ( ALU_OUT ),
        .OUT_VALID ( OUT_Valid )
     );

    // -------------------------- UART Instantation ---------------------------------------

    UART #( .Data_width ( Data_width ) , .Prescale_width ( Prescale_width ) ) UART_I0 (

        .RX_IN ( RX_IN ),
        .P_DATA_TX ( P_DATA_TX ),
        .RX_CLK ( CLK2_fun_scan ),
        .TX_CLK ( CLK3_fun_scan ),
        .RST ( RST2_fun_scan ),
        .PAR_EN ( REG2 [0] ),
        .PAR_TYP ( REG2 [1] ),
        .Prescale ( REG2 [6:2] ),
        .Data_Vaild_TX ( Data_Vaild_TX ),
        .data_valid_RX ( data_valid_RX ),
        .Busy ( Busy ),
        .TX_OUT ( TX_OUT ),
        .P_DATA_RX ( P_DATA_RX ),
        .par_err ( par_err ),
        .stp_err ( stp_err )

    );

    // ------------------ CLK MUX Instantation --------------------

    mux2X1 mux2X1_UO (

    .IN_0 (REF_CLK),
    .IN_1 (scan_clk),
    .SEL (test_mode),
    .OUT (CLK1_fun_scan)

    );

    mux2X1 mux2X1_U1 (

    .IN_0 (UART_CLK),
    .IN_1 (scan_clk),
    .SEL (test_mode),
    .OUT (CLK2_fun_scan)

    );

    mux2X1 mux2X1_U2 (

    .IN_0 (TX_CLK),
    .IN_1 (scan_clk),
    .SEL (test_mode),
    .OUT (CLK3_fun_scan)

    );

    mux2X1 mux2X1_U3 (

    .IN_0 (ALU_CLK),
    .IN_1 (scan_clk),
    .SEL (test_mode),
    .OUT (CLK4_fun_scan)

    );

    // ------------------ RST MUX Instantation --------------------

    mux2X1 mux2X1_U4 (

    .IN_0 (RST),
    .IN_1 (scan_rst),
    .SEL (test_mode),
    .OUT (RST_fun_scan)

    );

    mux2X1 mux2X1_U5 (

    .IN_0 (SYNC_RST1),
    .IN_1 (scan_rst),
    .SEL (test_mode),
    .OUT (RST1_fun_scan)
    );

    mux2X1 mux2X1_U6 (

    .IN_0 (SYNC_RST2),
    .IN_1 (scan_rst),
    .SEL (test_mode),
    .OUT (RST2_fun_scan)
    );

endmodule
