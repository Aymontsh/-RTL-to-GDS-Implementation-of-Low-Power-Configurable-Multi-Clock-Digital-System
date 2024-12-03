
/*
// Module: RX_FSM.v
// Description: Receiver Finite State Machine using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 21 Sep 2022
*/

module RX_FSM (

    // ---------- input & output ports --------------

    input    wire                       RX_IN,
    input    wire                       PAR_EN,
    input    wire        [3:0]          bit_cnt,
    input    wire        [2:0]          edge_cnt,
    input    wire                       par_err,
    input    wire                       strt_glitch,
    input    wire                       stp_err,
    input    wire                       CLK,
    input    wire                       RST,
    output   reg                        dat_samp_en,
    output   reg                        par_chk_en,
    output   reg                        strt_chk_en,
    output   reg                        stp_chk_en,
    output   reg                        enable,
    output   reg                        deser_en,
    output   reg                        data_vaild

);

    // ----------------- internal signals ------------------ 

    reg     [2:0]       current_state , next_state;
    wire                END_OF_EDGES;
    wire                END_OF_DATA;

    // ----------------- assign signals -------------------- 

    assign END_OF_EDGES  = ( edge_cnt == 3'd7 ) ? 1'b1 : 1'b0 ; 
    assign END_OF_DATA   = ( bit_cnt  == 4'd8 && END_OF_EDGES ) ? 1'b1 : 1'b0 ;

    // ----------------  State Encoding -------------------

    localparam  IDLE         = 3'b000,
                start_state  = 3'b001,
                trans_state  = 3'b010,
                parity_state = 3'b011,
                stop_state   = 3'b100,
                Valid_state  = 3'b101;

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
    
    // ------- Next state logic & output logic -----------

    always @(*)

        begin

            // initial values

            dat_samp_en = 'b0;
            par_chk_en  = 'b0;
            strt_chk_en = 'b0;
            stp_chk_en  = 'b0;
            enable      = 'b0;
            deser_en    = 'b0;
            data_vaild  = 'b0;
            next_state  = IDLE ;
            
            case ( current_state )

                IDLE      : begin

                                dat_samp_en = 'b0;
                                par_chk_en  = 'b0;
                                strt_chk_en = 'b0;
                                stp_chk_en  = 'b0;
                                deser_en    = 'b0;
                                data_vaild  = 'b0;

                                if ( !RX_IN )
                                    begin
                                        next_state = start_state ;
                                        enable      = 'b1; 
                                    end
                                else 
                                    begin
                                        next_state = IDLE ;
                                        enable      = 'b0;
                                    end
                            end

              start_state : begin

                                dat_samp_en = 'b1;
                                par_chk_en  = 'b0;
                                strt_chk_en = 'b1;
                                stp_chk_en  = 'b0;
                                enable      = 'b1;
                                deser_en    = 'b0;
                                data_vaild  = 'b0;

                                if ( END_OF_EDGES )
                                    begin
                                        if ( !strt_glitch )
                                            begin
                                                next_state = trans_state ;
                                            end
                                        else
                                            begin
                                                next_state = IDLE ;
                                            end
                                    end
                                else
                                    begin
                                        next_state = start_state ;
                                    end

                            end  

              trans_state : begin

                                dat_samp_en = 'b1;
                                par_chk_en  = 'b0;
                                strt_chk_en = 'b0;
                                stp_chk_en  = 'b0;
                                enable      = 'b1;
                                deser_en    = 'b1;
                                data_vaild  = 'b0;                                

                                if ( END_OF_DATA && PAR_EN )
                                    begin
                                        next_state = parity_state ;
                                    end
                                else if ( END_OF_DATA && !PAR_EN )
                                    begin
                                        next_state = stop_state ;
                                    end                                
                                else
                                    begin
                                        next_state = trans_state ;
                                    end
                            end

             parity_state : begin

                                dat_samp_en = 'b1;
                                par_chk_en  = 'b1;
                                strt_chk_en = 'b0;
                                stp_chk_en  = 'b0;
                                enable      = 'b1;
                                deser_en    = 'b0;
                                data_vaild  = 'b0;

                                if ( END_OF_EDGES )
                                    begin
                                        if ( !par_err )
                                            begin
                                                next_state = stop_state ;
                                            end
                                        else
                                            begin
                                                next_state = IDLE ;
                                            end
                                    end
                                else
                                    begin
                                        next_state = parity_state ;
                                    end
                            end

               stop_state : begin

                                dat_samp_en = 'b1;
                                par_chk_en  = 'b0;
                                strt_chk_en = 'b0;
                                stp_chk_en  = 'b1;
                                enable      = 'b1;
                                deser_en    = 'b0;
                                data_vaild  = 'b0;

                                if ( END_OF_EDGES )
                                    begin
                                        next_state  = Valid_state ;
                                    end
                                else
                                    begin
                                        next_state = stop_state ;
                                    end
                            end

                Valid_state : begin

                                dat_samp_en = 'b0;
                                par_chk_en  = 'b0;
                                strt_chk_en = 'b0;
                                stp_chk_en  = 'b0;
                                enable      = 'b0;
                                deser_en    = 'b0;

                                if ( !stp_err && !RX_IN )
                                    begin
                                        data_vaild  = 'b1;
                                        next_state = start_state ;
                                    end

                                else if ( !stp_err && RX_IN )
                                    begin
                                        data_vaild  = 'b1;
                                        next_state = IDLE ;
                                    end
                                else if ( stp_err && !RX_IN )
                                    begin
                                        data_vaild  = 'b0;
                                        next_state = start_state ;
                                    end
                                else
                                    begin
                                        data_vaild  = 'b0;
                                        next_state = IDLE ;                                        
                                    end
                             end
                              
                default  :  begin
                                
                                dat_samp_en = 'b0;
                                par_chk_en  = 'b0;
                                strt_chk_en = 'b0;
                                stp_chk_en  = 'b0;
                                enable      = 'b0;
                                deser_en    = 'b0;
                                data_vaild  = 'b0;      
                                next_state  = IDLE ;              
                                
                            end
            endcase
        end

endmodule