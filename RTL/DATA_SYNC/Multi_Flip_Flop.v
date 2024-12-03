
/*
// Module: Multi_Flip_Flop.v
// Description: Multi Flip Flop using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 12 Sep 2022
*/

module Multi_Flip_Flop 
#( parameter NUM_STAGES = 2, BUS_WIDTH = 1 )

(
    // ---------- input & output ports --------------

    input   wire    [ BUS_WIDTH - 1 : 0 ]   ASYNC,
    input   wire                            CLK,
    input   wire                            RST,
    output  reg     [ BUS_WIDTH - 1 : 0 ]   SYNC          

);  
    // --------------- internal signals -------------- 

    reg     [ NUM_STAGES-2 : 0 ]    Sync_flops  [ BUS_WIDTH - 1 : 0 ] ;

    // -------------- parameters & integers ----------

    integer   Sync_flop;

    // -------------- Data synchronizer -----------------

    always @( posedge CLK or negedge RST )

        begin
            if (!RST)
                begin
                    SYNC <= 'd0;
                    for ( Sync_flop = 0 ; Sync_flop < BUS_WIDTH ; Sync_flop = Sync_flop + 1  )
                        begin
                            Sync_flops [Sync_flop] <= 'd0;
                        end
                end
            else 
                begin
                    for ( Sync_flop = 0 ; Sync_flop < BUS_WIDTH ; Sync_flop = Sync_flop + 1  )
                        begin
                           { SYNC [Sync_flop] , Sync_flops [Sync_flop] } <= { Sync_flops[Sync_flop] [NUM_STAGES-2 : 0] , ASYNC[Sync_flop]  };
                        end
                end  
        end 

endmodule