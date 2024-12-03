
/*
// Module: SYS_CTRL.v
// Description: System Controller using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 1 October 2022
*/

module SYS_CTRL 
#( parameter Data_width        = 8 ,
             OPERAND_WIDTH     = 8 ,
             ALU_OUT_WIDTH     = OPERAND_WIDTH + OPERAND_WIDTH , 
             NUM_OF_OPERATIONS = 16,
             DEPTH             = 16
 )

 (
    // ------------------------ input & output ports ----------------------------------

    input       wire               [  Data_width-1   : 0 ]                  RX_P_DATA,
    input       wire                                                        RX_D_VLD,
    input       wire                                                        CLK,
    input       wire                                                        RST,
    input       wire               [ ALU_OUT_WIDTH-1 : 0 ]                  ALU_OUT,
    input       wire                                                        OUT_Valid,
    input       wire               [   Data_width-1  : 0 ]                  RDData,
    input       wire                                                        RdData_Valid,
    input       wire                                                        Busy,
    output      wire                                                        EN,
    output      wire        [   $clog2 (NUM_OF_OPERATIONS)-1 : 0 ]          ALU_FUN,
    output      wire                                                        CLK_EN,
    output      wire               [ $clog2 (DEPTH)-1 : 0 ]                 Address,
    output      wire                                                        WrEn,
    output      wire                                                        RdEn,
    output      wire               [  Data_width-1    : 0 ]                 WrData,
    output      wire                                                        clk_div_en,
    output      wire                [   Data_width-1  : 0 ]                 TX_P_DATA,
    output      wire                                                        TX_D_VLD

 );

    // ------------------------ SYS CTRL RX Instantation ----------------------------------
    
    SYS_CTRL_RX #( .Data_width ( Data_width ), .OPERAND_WIDTH ( OPERAND_WIDTH ) , .ALU_OUT_WIDTH ( ALU_OUT_WIDTH ) , .NUM_OF_OPERATIONS ( NUM_OF_OPERATIONS ) , .DEPTH ( DEPTH )  ) SYS_CTRL_RX_I0 ( 

        .RX_P_DATA ( RX_P_DATA ),
        .RX_D_VLD ( RX_D_VLD ),
        .CLK ( CLK ),
        .RST ( RST ),
        .EN ( EN ),
        .ALU_FUN ( ALU_FUN ),
        .CLK_EN ( CLK_EN ),
        .Address ( Address ),
        .WrEn ( WrEn ),
        .RdEn ( RdEn ),
        .WrData ( WrData )
    );

    // ------------------------ SYS CTRL TX Instantation ----------------------------------

    SYS_CTRL_TX #( .Data_width ( Data_width ), .OPERAND_WIDTH ( OPERAND_WIDTH ) , .ALU_OUT_WIDTH ( ALU_OUT_WIDTH )) SYS_CTRL_TX_I0 (

        .ALU_OUT ( ALU_OUT ),
        .OUT_Valid ( OUT_Valid ),
        .RDData ( RDData ),
        .RdData_Valid ( RdData_Valid ),
        .Busy ( Busy ),
        .CLK ( CLK ),
        .RST ( RST ),
        .clk_div_en ( clk_div_en ),
        .TX_P_DATA ( TX_P_DATA ),
        .TX_D_VLD ( TX_D_VLD )

    ); 


endmodule