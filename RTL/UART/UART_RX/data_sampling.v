
/*
// Module: data_sampling.v
// Description: Data sampling using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date  : 22 Sep 2022
*/

module data_sampling 
#( parameter  Prescale_width = 5 )

(

    // ---------- input & output ports --------------

    input   wire        [2:0]                           edge_cnt,
    input   wire                                        dat_samp_en,
    input   wire                                        CLK,
    input   wire                                        RST,
    input   wire                                        RX_IN,
    input   wire        [Prescale_width-1:0]            Prescale,
    output  reg                                         sampled_bit

);

    // ----------------- internal signals ------------------

    wire            [3:0]              sample_edge;
    reg                                sample_bit_1;
    reg                                sample_bit_2;
    reg                                sample_bit_3;

    // ----------------- assign signals --------------------

    assign  sample_edge = ( Prescale >> 1 ) - 1'b1;

    // ----------------- Sampling Operation --------------------

    always @( posedge CLK or negedge RST )
        begin
            if ( !RST )
                begin
                    sample_bit_1 <= 'b0;
                    sample_bit_2 <= 'b0;
                    sample_bit_3 <= 'b0;
                    sampled_bit  <= 'b0;
                end
            else
                begin
                    if ( ( edge_cnt == ( sample_edge - 1'b1 ) ) && dat_samp_en )
                        begin
                            sample_bit_1 <= RX_IN; 
                        end
                    else if (( edge_cnt == sample_edge ) && dat_samp_en )
                        begin
                            sample_bit_2 <= RX_IN;
                        end
                    else if (( edge_cnt == ( sample_edge + 1'b1 ) ) && dat_samp_en )
                        begin
                            sample_bit_3 <= RX_IN;
                        end
                    else if ( dat_samp_en )
                        begin
                            sampled_bit <= ( sample_bit_1 && sample_bit_2 ) || ( sample_bit_2 && sample_bit_3 ) || ( sample_bit_1 && sample_bit_3);
                        end
                end

        end


endmodule