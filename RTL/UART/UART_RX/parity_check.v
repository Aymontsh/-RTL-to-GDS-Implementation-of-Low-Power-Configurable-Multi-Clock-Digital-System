
/*
// Module: parity_check.v
// Description: Parity bit Check using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 21 Sep 2022
*/

module parity_check
#( parameter Data_width = 8 ) 

(

    // ---------- input & output ports --------------

    input    wire                                       par_chk_en,
    input    wire                                       sampled_bit,
    input    wire                                       PAR_TYPE,
    input    wire       [ Data_width-1 : 0 ]            P_DATA,
    output   reg                                        par_err   

);

    // ----------------- internal signals ------------------ 

    reg                parity_bit;

    // ----------------- Checking Parity ------------------ 

    always @(*)
        begin
            if ( par_chk_en )
                begin
                    par_err = parity_bit ^ sampled_bit ;
                end
        else
            begin
                par_err    = 'b0;
            end
        end

    always @(*)

        begin

            if ( par_chk_en )
                begin
                    case ( PAR_TYPE )
                
                    1'b1 : begin
                            parity_bit = ~^ P_DATA ;
                           end
                    
                    1'b0 : begin
                            parity_bit = ^ P_DATA ;
                           end 
                     endcase  
                end
            else
                begin
                    parity_bit = 'b0;
                end

        end

endmodule 