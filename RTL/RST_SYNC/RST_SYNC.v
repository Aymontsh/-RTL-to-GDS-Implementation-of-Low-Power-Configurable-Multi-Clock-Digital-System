
/*
// Module: RST_SYNC.v
// Description: Reset Synchronization using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 13 Sep 2022
*/

module RST_SYNC 
#( parameter NUM_STAGES = 2 )

(
    // ---------- input & output ports --------------

    input       wire            RST,
    input       wire            CLK,
    output      reg             SYNC_RST               

);

    // --------------- internal signals -------------- 

    reg     [ NUM_STAGES-2 : 0 ]    Sync_flops  ; 

    // -------------- Reset synchronizer -----------------

    always @( posedge CLK or negedge RST )

        begin
            if (!RST)
                begin
                    SYNC_RST <= 'd0;
                    Sync_flops <= 'd0;
                end
            else 
                begin
                    { SYNC_RST , Sync_flops [ NUM_STAGES-2 : 0 ] } <= { Sync_flops [ NUM_STAGES-2 : 0 ]  , 1'b1 };
                end  
        end 

endmodule

