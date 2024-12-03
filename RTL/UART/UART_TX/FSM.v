
/*
// Module: FSM.v
// Description: Finite State Machine using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 18 Sep 2022
*/

module FSM (

    // -------------- input & output ports -----------------

    input    wire                   Data_Vaild,
    input    wire                   PAR_EN,
    input    wire                   ser_done,
    input    wire                   CLK,
    input    wire                   RST,
    output   reg     [1:0]          mux_sel,
    output   reg                    ser_en,
    output   reg                    busy

);

    // ----------------- internal signals ------------------ 

    reg     [2:0]       current_state , next_state;
    reg                 busy_value;

    // ----------------  State Encoding -------------------

    localparam  IDLE         = 3'b000,
                start_state  = 3'b001,
                trans_state  = 3'b010,
                parity_state = 3'b011,
                stop_state   = 3'b100;

    // ---------------- State Transition -----------------

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

    // ----------- BUSY signal registered  --------------

    always @ ( posedge CLK or negedge RST )

        begin
            if (!RST)
                begin
                    busy <= 'b0;
                end
            else
                begin
                    busy <= busy_value;
                end          
        end

    // ------- Next state logic & output logic -----------

    always @(*)

        begin

            // initial values 
                
            mux_sel     = 2'b01 ;
            ser_en      = 1'b0  ;
            busy_value  = 1'b0  ;

            case ( current_state )

                IDLE      :  begin

                             mux_sel     = 2'b01 ;
                             ser_en      = 1'b0  ;
                             busy_value  = 1'b0  ;

                                if ( Data_Vaild )
                                    begin
                                        next_state  = start_state ;
                                    end
                                else    
                                    begin
                                        next_state  = IDLE ;                                   
                                    end
                            end
                
            start_state :   begin

                                mux_sel     = 2'b00 ;
                                ser_en      = 1'b0  ;
                                busy_value  = 1'b1  ;

                                next_state  = trans_state ; 

                            end
            
            trans_state :   begin

                                mux_sel     = 2'b10 ;
                                ser_en      = 1'b1  ;
                                busy_value  = 1'b1  ;
                                                                
                                if ( ser_done && PAR_EN )
                                    begin
                                        next_state  = parity_state ;
                                        ser_en      = 1'b0  ;
                                    end
                                else if ( ser_done && !PAR_EN )
                                    begin
                                        next_state  = stop_state ;
                                        ser_en      = 1'b0  ;                                        
                                    end
                                else
                                    begin
                                        next_state  = trans_state ;
                                        ser_en      = 1'b1  ;
                                    end
                            end

            parity_state :  begin

                                mux_sel     = 2'b11 ;
                                ser_en      = 1'b0  ;
                                busy_value  = 1'b1  ;                
                                next_state  = stop_state ;

                            end

            stop_state  :   begin

                                mux_sel     = 2'b01 ;
                                ser_en      = 1'b0  ;
                                busy_value  = 1'b1  ; 

                                if ( Data_Vaild )
                                    begin
                                        next_state  = start_state ;
                                    end
                                else    
                                    begin
                                        next_state  = IDLE ;                                   
                                    end
                            end
            
            default     :  begin

                                mux_sel     = 2'b00 ;
                                ser_en      = 1'b0  ;
                                busy_value  = 1'b0  ;                
                                next_state  = IDLE ;
                                
                           end
                
            endcase

        end

endmodule