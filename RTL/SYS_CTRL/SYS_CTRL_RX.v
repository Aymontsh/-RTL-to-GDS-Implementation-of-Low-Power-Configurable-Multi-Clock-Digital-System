
/*
// Module: SYS_CTRL_RX.v
// Description: Receiver System Controller using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 30 Sep 2022
*/

module SYS_CTRL_RX 
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
    output      reg                                                         EN,
    output      reg        [   $clog2 (NUM_OF_OPERATIONS)-1 : 0 ]           ALU_FUN,
    output      reg                                                         CLK_EN,
    output      reg               [ $clog2 (DEPTH)-1 : 0 ]                  Address,
    output      reg                                                         WrEn,
    output      reg                                                         RdEn,
    output      reg               [  Data_width-1    : 0 ]                  WrData

);

    // ---------------------------- internal signals ----------------------------------- 

    reg                     [ 3 : 0 ]                           current_state , next_state;
    reg             [ $clog2 (DEPTH)-1 : 0 ]                    Address_Value;      
    reg                                                         valid_Address;
    reg     [  $clog2 (NUM_OF_OPERATIONS)-1 : 0 ]               ALU_FUN_value;
    reg                                                         Valid_ALU_FUN;                   

    // -------------------------------- Parameters ------------------------------------

    localparam  Write_command    = 8'b10101010,
                Read_command     = 8'b10111011,
                ALU_OP_command   = 8'b11001100,
                ALU_NOOP_command = 8'b11011101; 
    
    // ----------------------------  State Encoding ------------------------------------

    localparam  IDLE             = 4'b0000,
                Frame1_WR        = 4'b0001,
                Frame2_WR        = 4'b0010,  
                Frame1_Rd        = 4'b0011,   
                Regfile_state    = 4'b0100,
                Frame1_ALU_OP    = 4'b0101,   
                Frame2_ALU_OP    = 4'b0110,
                Frame3_ALU_OP    = 4'b0111,
                ALU_state        = 4'b1000,
                Frame1_ALU_NO_OP = 4'b1001,
                ALU_state2       = 4'b1010;

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

    // --------------------- Address Registered --------------------------

    always @( posedge CLK or negedge RST )
        begin
            if ( !RST )
                begin
                    Address <= 'd0;
                end 
            else if ( valid_Address )
                begin
                    Address <= Address_Value;
                end
        end
    
    // --------------------- ALU Function Registered --------------------------

    always @( posedge CLK or negedge RST )
        begin
            if ( !RST )
                begin
                    ALU_FUN <= 'd0;
                end 
            else if ( Valid_ALU_FUN )
                begin
                    ALU_FUN <= ALU_FUN_value;
                end
        end
    
    // ---------------------- Next state logic & output logic --------------------------
    
    always @(*)
        begin
                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd0;
                                next_state      = IDLE;

            case ( current_state )

                IDLE    :   begin

                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd0;

                                if ( RX_D_VLD )
                                     begin
                                        case ( RX_P_DATA )

                                            Write_command   :   begin
                                                                    next_state = Frame1_WR;
                                                                end

                                            Read_command    :   begin
                                                                    next_state = Frame1_Rd;
                                                                end
                                            
                                            ALU_OP_command  :   begin
                                                                    next_state = Frame1_ALU_OP;
                                                                end

                                          ALU_NOOP_command  :   begin
                                                                    next_state = Frame1_ALU_NO_OP;
                                                                end

                                            default         :   begin
                                                                    next_state = IDLE;
                                                                end

                                        endcase
                                     end
                                else
                                    begin
                                        next_state = IDLE;
                                    end
                            end

    // ---------------------- Register File Write command --------------------------

            Frame1_WR   :   begin

                                EN              = 'd0; 
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;  
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = RX_P_DATA;
                                WrData          = 'd0;
                                valid_Address   = 'd1;
                                Valid_ALU_FUN   = 'd0;
                            
                                if ( RX_D_VLD )
                                    begin
                                        next_state = Frame2_WR;
                                    end
                                else
                                    begin
                                        next_state = Frame1_WR;
                                    end
                            end

            Frame2_WR   :   begin

                                EN              = 'd0; 
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;  
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd0;
                                
                                if ( RX_D_VLD )
                                    begin
                                        next_state  = IDLE;
                                        WrEn        = 'd1;
                                        WrData      = RX_P_DATA;
                                    end
                                else
                                    begin
                                        next_state  = Frame2_WR;
                                        WrEn        = 'd0;
                                        WrData      = 'd0;
                                    end

                            end
                            
            

    // ---------------------- Register File Read command --------------------------

            Frame1_Rd   :   begin

                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = RX_P_DATA;
                                WrData          = 'd0;
                                valid_Address   = 'd1;
                                Valid_ALU_FUN   = 'd0;

                                if ( RX_D_VLD )
                                    begin
                                        next_state = Regfile_state;
                                    end
                                else
                                    begin
                                        next_state = Frame1_Rd;
                                    end
                            end

        // Register File take 1 clock cycle for operation 

         Regfile_state  :   begin

                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;
                                WrEn            = 'd0;
                                RdEn            = 'd1;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                valid_Address   = 'd0;
                                next_state      = IDLE;
                                Valid_ALU_FUN   = 'd0;

                            end

    // ---------------------- ALU Operation command with operand --------------------------

          Frame1_ALU_OP :   begin

                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd1;
                                Address_Value   = 'd0;
                                valid_Address   = 'd1;
                                RdEn            = 'd0;
                                Valid_ALU_FUN   = 'd0;

                                if ( RX_D_VLD )
                                    begin
                                        next_state = Frame2_ALU_OP;
                                        WrData     =  RX_P_DATA;
                                        WrEn       = 'd1;
                                    end
                                else
                                    begin
                                        next_state = Frame1_ALU_OP;
                                        WrData     =  'd0;
                                        WrEn       = 'd0;
                                    end
                            end

          Frame2_ALU_OP :   begin

                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd1;
                                Address_Value   = 'd1;
                                valid_Address   = 'd1;
                                RdEn            = 'd0;
                                Valid_ALU_FUN   = 'd0;

                                if ( RX_D_VLD )
                                    begin
                                        next_state = Frame3_ALU_OP;
                                        WrData     =  RX_P_DATA;
                                        WrEn       = 'd1;
                                    end
                                else
                                    begin
                                        next_state = Frame2_ALU_OP;
                                        WrData     =  'd0;
                                        WrEn       = 'd0;
                                    end
                            end

          Frame3_ALU_OP :   begin

                                EN              = 'd0;
                                CLK_EN          = 'd1;
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd1;

                                if ( RX_D_VLD )
                                    begin
                                        next_state    = ALU_state;
                                        ALU_FUN_value = RX_P_DATA;
                                    end
                                else
                                    begin
                                        next_state    = Frame3_ALU_OP;
                                        ALU_FUN_value = 'd0;
                                    end
                            end
            
            

            ALU_state   :   begin

                                EN              = 'd1;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd1;
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd0;
                                next_state      = IDLE;

                            end

    // ---------------------- ALU Operation command with No operand --------------------------

        Frame1_ALU_NO_OP :  begin

                                EN              = 'd0;
                                CLK_EN          = 'd1;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                WrEn            = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd1;

                                if ( RX_D_VLD )
                                    begin
                                        next_state    = ALU_state2;
                                        ALU_FUN_value = RX_P_DATA;
                                    end
                                else
                                    begin
                                        next_state    = Frame1_ALU_NO_OP;
                                        ALU_FUN_value = 'd0;
                                    end
                            end     

            ALU_state2 :    begin

                                EN              = 'd1;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd1;
                                WrEn            = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd0;
                                next_state      = IDLE;

                            end     

    // --------------------------- Default -----------------------------------------

            default     :   begin
                                EN              = 'd0;
                                ALU_FUN_value   = 'd0;
                                CLK_EN          = 'd0;
                                RdEn            = 'd0;
                                Address_Value   = 'd0;
                                WrData          = 'd0;
                                WrEn            = 'd0;
                                valid_Address   = 'd0;
                                Valid_ALU_FUN   = 'd0;
                                next_state      = IDLE;
                            end

            endcase
        end
        

endmodule