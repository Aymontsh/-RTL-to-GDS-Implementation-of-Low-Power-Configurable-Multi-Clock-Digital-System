
/*
// Module: MUX.v
// Description: Multiplexer using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 18 Sep 2022
*/

module MUX (

    // -------------- input & output ports --------------

    input   wire                  ser_data,       
    input   wire     [1:0]        mux_sel,
    input   wire                  par_bit,
    input   wire                  CLK,
    input   wire                  RST,
    output  reg                   TX_OUT

);

    // --------------- internal signals ---------------- 

    reg             MUX_OUT;

    // -------------- parameters & integers -------------

    localparam  start_bit = 1'b0 ;
    localparam  stop_bit  = 1'b1 ;

    // ------------------ MUX operation -----------------

    always @ (*)
        begin
            case (mux_sel)

                2'd0 :  begin
                            MUX_OUT = start_bit;
                        end

                2'd1 :  begin
                            MUX_OUT = stop_bit;
                        end

                2'd2 :   begin
                            MUX_OUT = ser_data;
                         end 

                2'd3 :   begin
                            MUX_OUT = par_bit;
                         end 

            endcase           
        end

    always @ ( posedge CLK or negedge RST )

        begin
            if (!RST)
                begin
                    TX_OUT <= 'b0;
                end
            else
                begin
                    TX_OUT <= MUX_OUT;
                end
        end

endmodule