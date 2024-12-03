

/*
// Module: ALU.v
// Description: 8 bit ALU using verilog code //
// Owner : Mohamed Ayman Elsayed 
// Date : 8 August 2022
*/

module ALU

#( parameter    OPERAND_WIDTH     = 8 , 
                RESULT_WIDTH      = OPERAND_WIDTH + OPERAND_WIDTH ,
                NUM_OF_OPERATIONS = 16 )

(
    // -------------- input & output ports --------------

    input   wire    [         OPERAND_WIDTH-1        : 0 ]          A,
    input   wire    [         OPERAND_WIDTH-1        : 0 ]          B,
    input   wire    [   $clog2 (NUM_OF_OPERATIONS)-1 : 0 ]          ALU_FUN,
    input   wire                                                    Enable,
    input   wire                                                    CLK,
    input   wire                                                    RST,
    output  reg     [         RESULT_WIDTH-1         : 0 ]          ALU_OUT,
    output  reg                                                     OUT_VALID
    
);

    // --------------- internal signals ----------------

    reg     [ RESULT_WIDTH-1 : 0 ]      ALU_Value;

    // -------------- Output Registered ------------------

    always @( posedge CLK or negedge RST )
    
        begin
            if ( !RST )
                begin
                    ALU_OUT   <= 'd0;
                end
            else
                begin
                    ALU_OUT   <= ALU_Value;
                end
        end

    // --------------- ALU Operation -------------------

    always @(*)

        begin
            if ( Enable )
                begin
                    OUT_VALID = 'b1;
                    case ( ALU_FUN )
                        4'b0000 :   begin 
                                        ALU_Value = A + B ;
                                    end
                        4'b0001 :   begin 
                                        ALU_Value = A - B ;
                                    end
                        4'b0010 :   begin 
                                        ALU_Value = A * B ;
                                    end
                        4'b0011 :   begin 
                                        ALU_Value = A / B ;
                                    end
                        4'b0100 :   begin 
                                        ALU_Value = A & B ;
                                    end
                        4'b0101 :   begin 
                                        ALU_Value = A | B ;
                                    end
                        4'b0110 :   begin 
                                        ALU_Value = ~(A & B) ;
                                    end
                        4'b0111 :   begin 
                                        ALU_Value = ~(A | B) ;
                                    end
                        4'b1000 :   begin 
                                        ALU_Value = A ^ B ;
                                    end
                        4'b1001 :   begin 
                                        ALU_Value = A ~^ B ;
                                    end
                        4'b1010 :   begin 
                                        if ( A == B )
                                            begin
                                                ALU_Value = 'd1;
                                            end
                                        else   
                                            begin
                                                ALU_Value = 'd0;
                                            end
                                    end
                        4'b1011 :   begin 
                                        if ( A > B )
                                            begin
                                                ALU_Value = 'd2;
                                            end
                                        else   
                                            begin
                                                ALU_Value = 'd0;
                                            end
                                    end
                        4'b1100 :   begin 
                                        if ( A < B )
                                            begin
                                                ALU_Value = 'd3;
                                            end
                                        else   
                                            begin
                                                ALU_Value = 'd0;
                                            end
                                    end  
                        4'b1101 :   begin 
                                        ALU_Value = A >> 1 ;
                                    end   
                        4'b1110 :   begin 
                                        ALU_Value = A << 1 ;
                                    end                 
                        default :   begin
                                        ALU_Value = 'd0 ;   
                                    end
                    endcase 
                end
            else
                begin
                    ALU_Value = 'd0 ;
                    OUT_VALID = 'b0;
                end
        end

endmodule