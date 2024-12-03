
/*
// Module: DATA_SYNC.v
// Description: Data Synchronization Scheme using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 13 Sep 2022
*/

module DATA_SYNC 
#( parameter NUM_STAGES = 2, BUS_WIDTH = 8 )

(
    // ---------------- input & output ports ------------------

    input   wire    [ BUS_WIDTH - 1 : 0 ]   Unsync_bus,
    input   wire                            bus_enable,
    input   wire                            CLK,
    input   wire                            RST,
    output  reg     [ BUS_WIDTH - 1 : 0 ]   sync_bus,
    output  reg                             enable_pulse                        

);
    // ------------------ internal signals -------------------- 

    wire                                   Sync_enable;
    wire                                   pulse_Gen_out;
    wire   [ BUS_WIDTH - 1 : 0 ]           mux_out;
    reg                                    pulse_Gen_Q;

    // ----------------- parameters & integers ----------------

    parameter  enable_Width = 1;

    // -------------------- assign signals ---------------------

    assign pulse_Gen_out = ( !pulse_Gen_Q ) && ( Sync_enable ) ;
    assign mux_out       = ( pulse_Gen_out == 1'b1 ) ? Unsync_bus : sync_bus ;   

    // ------------- Multi Flip Flop Instantation ---------------

    Multi_Flip_Flop #( .NUM_STAGES (NUM_STAGES), .BUS_WIDTH (enable_Width) ) MultiFlipFlop (

    .ASYNC  ( bus_enable  ),
    .CLK    (    CLK      ),
    .RST    (    RST      ),
    .SYNC   ( Sync_enable )
    );

    // -------------  Pulse Generator Flip Flop -----------------

    always @ ( posedge CLK or negedge RST )
        begin
            if( !RST )
                begin
                   pulse_Gen_Q <= 'b0; 
                end
            else
                begin
                   pulse_Gen_Q <= Sync_enable;
                end
        end
    
    // -------------  Enable Pulse Flip Flop -----------------

        always @ ( posedge CLK or negedge RST )
        begin
            if( !RST )
                begin
                   enable_pulse <= 'b0; 
                end
            else
                begin
                   enable_pulse <= pulse_Gen_out;
                end
        end

    // -------------  Sync_bus Flip Flop -----------------

        always @ ( posedge CLK or negedge RST )
        begin
            if( !RST )
                begin
                   sync_bus <= 'b0; 
                end
            else
                begin
                   sync_bus <= mux_out;
                end
        end

endmodule

