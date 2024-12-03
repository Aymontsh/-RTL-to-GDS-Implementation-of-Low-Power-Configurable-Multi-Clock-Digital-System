
/*
// Module: ClkDiv.v
// Description: Integer Clock Divider using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 5 Sep 2022
*/

module ClkDiv 

#( parameter ratio_width = 4 )

(
    // -------------- input & output ports --------------

    input   wire                                i_ref_clk,      // Reference Frequency
    input   wire                                i_rst_n,        // Active Low Asynchronous Reset  
    input   wire                                i_clk_en,       // Clock Divider Block Enable
    input   wire    [ ratio_width-1 : 0 ]       i_div_ratio,    // The divided ratio (integer value)
    output  reg                                 o_div_clk       // Divided Frequency  

);
    // --------------- internal signals ------------------

    wire    [ ratio_width-1 : 0 ]       even_condition;      // Number of posedges in low or high state
    wire    [ ratio_width-1 : 0 ]       odd_low_condition;   // Number of posedges in low state
    wire    [ ratio_width-1 : 0 ]       odd_high_condition;  // Number of posedges in high state
    wire                                odd_number;          // to know the divided ratio odd or even
    wire                                even_toggle;         // Switch from high to low or low to high
    wire                                odd_low_toggle;      // Switch from high to low
    wire                                odd_high_toggle;     // Switch from low to high
    reg                                 Flag;                // to determine which state the clock is 
    reg     [ ratio_width-1 : 0 ]       counter;             // to count the posedges 


    // ----------------- assign signals --------------------

    assign even_condition     =  i_div_ratio >> 1 ;
    assign odd_high_condition =  i_div_ratio >> 1 ;
    assign odd_low_condition  =  odd_high_condition + 1 ;
    assign odd_number         =  i_div_ratio % 2 ;
    assign even_toggle        =  (  counter == even_condition-1     )   ? 1'b1 : 1'b0 ;
    assign odd_high_toggle    =  (  counter == odd_low_condition-1  )   ? 1'b1 : 1'b0 ;
    assign odd_low_toggle     =  (  counter == odd_high_condition-1 )   ? 1'b1 : 1'b0 ;


    // --------- Counter to count positive edges -------------

    always @( posedge i_ref_clk or negedge i_rst_n )

        begin
            if (!i_rst_n)
                begin
                    counter <= 'd0;
                end
            else
                begin
                    if ( i_clk_en && !odd_number && even_toggle )
                        begin
                            counter <= 'd0;
                        end
                    else if ( i_clk_en && odd_number && ( (odd_high_toggle && !Flag ) || (odd_low_toggle && Flag ) ) )
                        begin
                            counter <= 'd0;
                        end
                    else
                        begin
                            counter <= counter + 1;
                        end
                end
        end

    // ------------- Clock Divider Operation ----------------- 

    always @ ( posedge i_ref_clk or negedge i_rst_n )

        begin
            if (!i_rst_n)

                begin
                    o_div_clk <= 'd0;
                    Flag <= 'd0;
                end 

            else if ( i_clk_en && !odd_number && even_toggle )

                begin
                    o_div_clk <= !o_div_clk;
                end   

            else if ( i_clk_en && odd_number && ( (odd_high_toggle && !Flag ) || (odd_low_toggle && Flag ) )  )  
                
                begin
                    o_div_clk <= !o_div_clk;
                    Flag <= !Flag;
                end
        end

endmodule