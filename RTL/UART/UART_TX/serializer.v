
/*
// Module: serializer.v
// Description: Serializer using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 17 Sep 2022
*/

module serializer
#( parameter Data_width = 8 )

(

    // ---------- input & output ports --------------

    input   wire    [ Data_width-1 : 0 ]    P_DATA,
    input   wire                            ser_en,
    input   wire                            CLK,
    input   wire                            RST,
    input   wire                            Busy,
    input   wire          [1:0]             mux_sel,
    input   wire                            Data_Vaild,
    output  wire                            ser_data,
    output  wire                            ser_done      
    
);

    // --------------- internal signals --------------------

    reg        [   $clog2 ( Data_width ) -1  : 0 ]         Counter; 
    reg        [        Data_width - 1       : 0 ]         input_data; 
    wire                                                   NEW_DATA;


    // -------------- Serializer operation -----------------

    assign ser_data = input_data [0] ; 

    assign ser_done = ( Counter == 3'd7  ) ? 1'b1 : 1'b0 ;
     
    assign NEW_DATA = ( mux_sel == 2'b01 ) ? 1'b1 : 1'b0 ;

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
            else if ( ser_en  )
                begin
                    input_data  <= input_data >> 1;
                end
        end
    
        always @( posedge CLK or negedge RST )

        begin
            if ( !RST )
                begin
                    Counter  <= 'd0;
                end
            else if ( Data_Vaild && NEW_DATA )
                begin
                    Counter  <= 'd0;
                end
            else if ( ser_en  )
                begin
                    Counter  <= Counter + 1;
                end  
        end

endmodule