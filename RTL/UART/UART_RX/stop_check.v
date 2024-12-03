
/*
// Module: stop_check.v
// Description: Start bit Check using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 21 Sep 2022
*/

module stop_check (

    // ---------------- input & output ports -----------------
    
    input   wire                    stp_chk_en,
    input   wire                    sampled_bit,
    output  reg                     stp_err

);

    // --------------- parameters & integers -----------------

    parameter stop_bit = 1'b1 ;

    // --------------- Checking Start bit ------------------

    always @(*)

        begin
            if ( stp_chk_en )
                begin
                    stp_err = stop_bit ^ sampled_bit;
                end
            else
                begin
                    stp_err = 'b0;
                end
        end

endmodule