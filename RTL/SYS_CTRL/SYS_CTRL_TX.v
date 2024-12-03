
/*
// Module: SYS_CTRL_TX.v
// Description: Transmitter System Controller using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 1 October 2022
*/

module SYS_CTRL_TX 
#( parameter Data_width        = 8 ,
             OPERAND_WIDTH     = 8 ,
             ALU_OUT_WIDTH     = OPERAND_WIDTH + OPERAND_WIDTH 
 )

( 
    // ------------------------ input & output ports ----------------------------------

    input       wire               [ ALU_OUT_WIDTH-1 : 0 ]                  ALU_OUT,
    input       wire                                                        OUT_Valid,
    input       wire               [   Data_width-1  : 0 ]                  RDData,
    input       wire                                                        RdData_Valid,
    input       wire                                                        Busy,
    input       wire                                                        CLK,
    input       wire                                                        RST,
    output      reg                                                         clk_div_en,
    output      reg                [   Data_width-1  : 0 ]                  TX_P_DATA,
    output      reg                                                         TX_D_VLD

);

    // ---------------------------- internal signals ----------------------------------- 

    reg     [2:0]                       current_state , next_state;
    reg     [   Data_width-1  : 0 ]     TX_P_DATA_value;

    // ----------------------------  State Encoding ------------------------------------

    localparam  IDLE            = 3'b000,
                SEND_RDDATA     = 3'b001,
                SEND_ALUOUT1    = 3'b010,
                BUSY_State      = 3'b011,
                SEND_ALUOUT2    = 3'b100;

    // ---------------------------- State Transition -----------------------------------

    always @ ( posedge CLK or negedge RST )

        begin
            if (!RST)
                begin
                    current_state <= IDLE;
                end
            else
                begin
                    current_state <= next_state;
                end
        end
    
    // ---------------------- Next state logic & output logic --------------------------

    always @(*)
        begin

            clk_div_en = 'd1;
            TX_P_DATA  = 'd0;
            TX_D_VLD   = 'd0;
            next_state = IDLE;  
            
            case ( current_state ) 

                IDLE    :   begin

                                TX_P_DATA  = 'd0;
                                TX_D_VLD   = 'd0;    

                                if ( RdData_Valid )
                                    begin
                                        next_state = SEND_RDDATA;
                                    end
                                else if ( OUT_Valid )
                                    begin
                                        next_state = SEND_ALUOUT1;
                                    end
                                else
                                    begin
                                        next_state = IDLE;
                                    end
                            end
                
            SEND_RDDATA :   begin
                                TX_P_DATA  = RDData;
                                TX_D_VLD   = 'd1;
                                
                                if ( Busy )
                                    begin
                                       next_state  = IDLE; 
                                    end
                                else
                                    begin
                                        next_state = SEND_RDDATA;
                                    end
                                
                            end
                
            SEND_ALUOUT1 :   begin
                                TX_P_DATA  = ALU_OUT [ 7 : 0 ];
                                TX_D_VLD   = 'd1;

                                if ( Busy )
                                    begin
                                        next_state = BUSY_State;
                                    end
                                else
                                    begin
                                        next_state = SEND_ALUOUT1;
                                    end
                            end
            
            BUSY_State   :  begin
                                TX_P_DATA  = 'd0;
                                TX_D_VLD   = 'd0;

                                if ( !Busy )
                                    begin
                                        next_state = SEND_ALUOUT2;
                                    end
                                else
                                    begin
                                        next_state = BUSY_State;
                                    end
                            end

            SEND_ALUOUT2 :  begin

                                TX_P_DATA  = ALU_OUT [ 15 : 8 ];
                                TX_D_VLD   = 'd1;

                                if ( Busy )
                                    begin
                                        next_state = IDLE;
                                    end
                                else
                                    begin
                                        next_state = SEND_ALUOUT2;
                                    end                             
                                
                            end

            default     :   begin

                                TX_P_DATA  = 'd0;
                                TX_D_VLD   = 'd0;
                                next_state = IDLE; 

                            end

            endcase 
        end

endmodule
