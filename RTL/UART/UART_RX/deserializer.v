
/*
// Module: deserializer.v
// Description: Deserializer using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date  : 22 Sep 2022
*/

module deserializer 
#( parameter Data_width = 8 )

(
    // ---------- input & output ports --------------

    input   wire                                        deser_en,
    input   wire                                        sampled_bit,
    input   wire               [2:0]                    edge_cnt,
    input   wire                                        CLK,
    input   wire                                        RST,
    output  reg         [ Data_width-1 : 0 ]            P_DATA

);
    
    // ----------------- internal signals ------------------

    wire                        NEW_BIT;

    // ----------------- assign signals --------------------

    assign NEW_BIT = ( edge_cnt == 3'd7 ) ? 1'b1 : 1'b0 ;  

    // ---------- Deserializer Operation --------------

    always @( posedge CLK or negedge RST )
        begin
            if ( !RST )
                begin
                    P_DATA <= 'd0;
                end
            else
                begin
                    if ( deser_en && NEW_BIT )
                        begin
                            P_DATA <= { sampled_bit , P_DATA [7:1] };
                        end 
                end
        end
    

endmodule