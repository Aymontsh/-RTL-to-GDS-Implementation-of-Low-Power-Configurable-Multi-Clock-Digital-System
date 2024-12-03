
/*
// Module: RegFile.v
// Description: 16 X 8 Register File using verilog code //
// Owner : Mohamed Ayman Elsayed 
// Date : 27 August 2022
*/

module RegFile 

#( parameter WIDTH = 8 , DEPTH = 16 )

(
    // -------------- input & output ports --------------

    input   wire    [      WIDTH-1     : 0 ]    WrData,
    input   wire    [ $clog2 (DEPTH)-1 : 0 ]    Address,
    input   wire                                WrEn,
    input   wire                                RdEn,
    input   wire                                CLK,
    input   wire                                RST,
    output  reg     [      WIDTH-1     : 0 ]    RdData,
    output  reg                                 RdData_Valid,
    output  wire    [      WIDTH-1     : 0 ]    REG0,                            
    output  wire    [      WIDTH-1     : 0 ]    REG1,
    output  wire    [      WIDTH-1     : 0 ]    REG2,
    output  wire    [      WIDTH-1     : 0 ]    REG3                              

);

    // -------------- 16 X 8 Register File --------------

    reg   [ WIDTH-1 : 0 ]   MEM   [ DEPTH-1 : 0 ];

    // ------------ Integers and Parameters --------------

    integer Register;

    // ----------------- assign signals --------------------

    assign REG0 = MEM [0];
    assign REG1 = MEM [1];
    assign REG2 = MEM [2];
    assign REG3 = MEM [3];

    // -------------- Register File Operation ------------------
    
    always @ ( posedge CLK or negedge RST )
    
        begin
            if (!RST)
                begin
                    RdData <= 'd0;
                    RdData_Valid <='b0;
                    for ( Register = 0 ; Register < DEPTH ; Register = Register + 1  )
                        begin 
                            if ( Register == 2 )
                                begin
                                    MEM [Register] <= 'b00100011;
                                end
                            else if ( Register == 3 )
                                begin
                                    MEM [Register] <= 'b00001000;
                                end
                            else
                                begin
                                    MEM [Register] <= 'd0;
                                end
                        end
                end
    // ----------------- Write Operation ------------------

            else if ( WrEn && !RdEn )
                begin
                    MEM [Address] <= WrData;
                end

    // ----------------- Read Operation ------------------ 

            else if ( RdEn && !WrEn )
                begin
                    RdData_Valid <='b1;
                    RdData <= MEM [Address];
                end
            else
                begin
                    RdData_Valid <='b0;
                end 
        end

endmodule