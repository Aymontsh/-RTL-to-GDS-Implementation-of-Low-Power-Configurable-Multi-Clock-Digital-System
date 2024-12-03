
/*
// Module: edge_bit_counter.v
// Description: 2 Counters to count edges and bits using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date  : 22 Sep 2022
*/

module edge_bit_counter (

    // ---------- input & output ports --------------

    input   wire                        enable,
    input   wire                        CLK,
    input   wire                        RST, 
    output  reg      [3:0]              bit_cnt,
    output  reg      [2:0]              edge_cnt

);

    // ----------------- internal signals ------------------

    wire                               edge_condition;
    wire                               bit_condition;
    reg          [3:0]                 bit_cnt_value;
    reg          [2:0]                 edge_cnt_value;

    // ----------------- assign signals --------------------

    assign edge_condition = ( edge_cnt == 3'd7 )   ? 1'b1 : 1'b0 ;
    assign bit_condition  = ( bit_cnt  == 4'd10 )  ? 1'b1 : 1'b0 ;

    // ------------------ edge counter -----------------------

    always @( posedge CLK or negedge RST )

        begin
            if ( !RST )
                begin
                    edge_cnt <= 3'd0;
                end
            else
                begin
                    edge_cnt <= edge_cnt_value ;
                end
        end

    always @ (*)

        begin
            if (enable && !edge_condition )
                begin
                    edge_cnt_value = edge_cnt + 1 ;
                end
            else
                begin
                    edge_cnt_value = 3'd0;
                end
        end

    // ------------------ Bit counter -----------------------

    always @( posedge CLK or negedge RST )

        begin
            if ( !RST )
                begin
                    bit_cnt <= 4'd0;
                end
            else
                begin
                    bit_cnt <= bit_cnt_value ;
                end
        end

    always @(*)
        begin
            if ( enable && edge_condition && !bit_condition )
                begin
                    bit_cnt_value = bit_cnt + 1;
                end
            else if ( !enable && bit_condition )
                begin
                    bit_cnt_value = 4'd0;
                end
            else 
                begin
                    bit_cnt_value = bit_cnt;
                end
        end

    

endmodule 

