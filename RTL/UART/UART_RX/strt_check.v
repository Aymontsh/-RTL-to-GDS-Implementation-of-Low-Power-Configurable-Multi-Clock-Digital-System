
/*
// Module: strt_check.v
// Description: Start bit Check using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 21 Sep 2022
*/


module strt_check (

    // ---------------- input & output ports -----------------
    
    input   wire                    strt_chk_en,
    input   wire                    sampled_bit,
    output  reg                     strt_glitch

);

    // --------------- parameters & integers -----------------

    parameter start_bit = 1'b0 ;

    // --------------- Checking Start bit ------------------

    always @(*)
    
        begin
            if ( strt_chk_en )
                begin
                    strt_glitch = start_bit ^ sampled_bit ;
                end
            else
                begin
                    strt_glitch = 'b0;
                end
        end

endmodule