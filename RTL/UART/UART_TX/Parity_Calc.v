
/*
// Module: Parity_Calc.v
// Description: Parity calculation using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 17 Sep 2022
*/


module Parity_Calc
#( parameter Data_width = 8 )

(

    // ---------- input & output ports --------------

    input   wire    [ Data_width-1 : 0 ]    P_DATA,
    input   wire                            Data_Vaild,
    input   wire                            PAR_TYP,
    input   wire          [1:0]             mux_sel,
    input   wire                            Busy,
    input   wire                            CLK,
    input   wire                            RST,
    output  reg                             par_bit

);
    
    // --------------- internal signals --------------------

    reg        [ Data_width - 1  : 0 ]         input_data;
    wire                                       NEW_DATA;  

    // ---------------- assign signals ----------------------

    assign NEW_DATA = ( mux_sel == 2'b01 ) ? 1'b1 : 1'b0 ;

    // ------------ Counter and Busy Operation --------------

    always @( posedge CLK or negedge RST )

        begin
            if ( !RST )
                begin
                    input_data  <= 'd0;
                end
            else if ( Data_Vaild && NEW_DATA )
                begin
                    input_data  <= P_DATA;
                end  
        end
    
    // ----------------- Parity Operation ------------------

    always @( posedge CLK or negedge RST )
    
        begin
            if ( !RST )
                begin
                    par_bit  <= 'd0;
                end
            else 
                begin
                    case ( PAR_TYP )
                
                    1'b1 : begin
                            par_bit  <= ~^ input_data ;
                           end
                    
                    1'b0 : begin
                            par_bit  <= ^ input_data ;
                           end 
                     endcase
                end        
        end
endmodule
