
/*
// Module: SYS_TOP_tb.v
// Description: A testbench for System Controller using verilog code 
// Owner : Mohamed Ayman Elsayed 
// Date : 1 October 2022
*/

`timescale 1ns/1ps

module SYS_TOP_tb ();

// -------------- parameters & integers -----------

parameter   Data_width_tb          = 8;
parameter   OPERAND_WIDTH_tb       = 8;
parameter   ALU_OUT_WIDTH_tb       = OPERAND_WIDTH_tb + OPERAND_WIDTH_tb;
parameter   NUM_OF_OPERATIONS_tb   = 16;
parameter   DEPTH_tb               = 16;
parameter   NUM_STAGES_tb          = 2;
parameter   BIT_SYNC_BUS_WIDTH_tb  = 1;
parameter   DATA_SYNC_BUS_WIDTH_tb = 8;
parameter   ratio_width_tb         = 4;
parameter   Prescale_width_tb      = 5;
integer     i;

// ------------------ DUT Signals ------------------

reg                                         RX_IN_tb;
reg                                         REF_CLK_tb;
reg                                         UART_CLK_tb;
reg                                         RST_tb;
wire                                        TX_OUT_tb;
wire                                        par_err_tb;
wire                                        stp_err_tb; 

// ------------------ Commands ------------------

reg         [ 32 : 0 ]      WR_Command;
reg         [ 21 : 0 ]      Rd_Command;
reg         [ 43 : 0 ]      ALU_Operand_command;
reg         [ 21 : 0 ]      ALU_NO_Operand_command;

// ------------------ Expected outputs ------------------

reg         [ 10 : 0 ]      Rd_TXOUT;
reg         [ 10 : 0 ]      ALUOP1_TXOUT;
reg         [ 10 : 0 ]      ALUOP2_TXOUT;
reg         [ 10 : 0 ]      ALUNOOP1_TXOUT;
reg         [ 10 : 0 ]      ALUNOOP2_TXOUT; 

// -------------- Initial block ------------------

initial

    begin

        initialize ();

        reset ();

       // ---------------------- Register File Write command --------------------------

        Write_command ();

        // ---------------------- Register File Read command --------------------------

        Read_command ();
            
        // ---------------------- ALU Operation command with operand --------------------------

        ALUOP_command ();
            
        // ---------------------- ALU Operation command with No operand --------------------------

        ALUNOOP_command ();

        #100000

        $stop;
        
    end

// -------------- Intialize operation ------------

task initialize ();
    begin
        RX_IN_tb      = 'b1;
        REF_CLK_tb    = 'b0;
        UART_CLK_tb   = 'b0;
        RST_tb        = 'b0;
    end
endtask

// ---------------- Reset operation --------------

task reset ();
    begin
        @( negedge UART_CLK_tb )
        RST_tb        = 'b1;
    end
endtask

// --------- Register File Write command -------------

task Write_command ();
    begin

        WR_Command = 'b110101101001000000001011101010100;
        
        for ( i = 0 ; i < 33 ; i = i + 1 )
            begin
                repeat (8) @(posedge UART_CLK_tb);
                RX_IN_tb = WR_Command [i];
            end
    end
endtask

// -------- Register File Read command -----------------

task Read_command ();

    begin

        Rd_Command = 'b1000000001011101110110;
        Rd_TXOUT   = 'b11010110100;

        for ( i = 0 ; i < 22 ; i = i + 1 )
            begin
                repeat (8) @(posedge UART_CLK_tb);
                RX_IN_tb = Rd_Command [i];
            end

        $display ( " ----------------------------------------  " );
        $display ( "------Register File Write command -------  " );
        $display ( " ----------------------------------------  " );

        @( negedge TX_OUT_tb );

        for ( i = 0 ; i < 11 ; i = i + 1 )
            begin
                repeat (8) @ ( posedge UART_CLK_tb );

                if ( TX_OUT_tb == Rd_TXOUT [i] )
                    begin
                        $display ( " DATA [%d] IS PASSED  ",i);
                    end
                else
                    begin
                        $display ( " DATA [%d] IS FAILED  ",i);
                    end                
            end  
    end
    
endtask

// -------- ALU Operation command with operand -----------------

task ALUOP_command ();

    begin

        ALU_Operand_command = 'b10000000010100101011101101011010011110011000 ;
        ALUOP1_TXOUT        = 'b11000000110;
        ALUOP2_TXOUT        = 'b11000000000;

        for ( i = 0 ; i < 44 ; i = i + 1 )
            begin
                repeat (8) @(posedge UART_CLK_tb);
                RX_IN_tb = ALU_Operand_command [i];
            end

        $display ( " ----------------------------------------  " );
        $display ( "--- ALU Operation command with operand ---  " );
        $display ( " ----------------------------------------  " );

        $display ( "--- Least 8 bitS of ALU OUT  ---  " );

        @( negedge TX_OUT_tb );

        for ( i = 0 ; i < 11 ; i = i + 1 )
            begin
                repeat (8) @ ( posedge UART_CLK_tb );

                if ( TX_OUT_tb == ALUOP1_TXOUT [i] )
                    begin
                        $display ( " DATA [%d] IS PASSED  ",i);
                    end
                else
                    begin
                        $display ( " DATA [%d] IS FAILED  ",i);
                    end                
            end

        $display ( "--- Most 8 bits of ALU OUT ---  " );  

        @( negedge TX_OUT_tb );

        for ( i = 0 ; i < 11 ; i = i + 1 )
            begin
                repeat (8) @ ( posedge UART_CLK_tb );

                if ( TX_OUT_tb == ALUOP2_TXOUT [i] )
                    begin
                        $display ( " DATA [%d]  IS PASSED  ",i);
                    end
                else
                    begin
                        $display ( " DATA [%d] IS FAILED  ",i);
                    end                
            end
    end
    
endtask

// -------- ALU Operation command with No operand -----------------

task ALUNOOP_command ();

    begin

        
        ALUNOOP1_TXOUT        = 'b11100101100;
        ALUNOOP2_TXOUT        = 'b11000111100;
        ALU_NO_Operand_command = 'b1000000010011110111010;

        for ( i = 0 ; i < 22 ; i = i + 1 )
            begin
                repeat (8) @(posedge UART_CLK_tb);
                RX_IN_tb = ALU_NO_Operand_command [i];
            end

        $display ( " ----------------------------------------  " );
        $display ( "--- ALU Operation command with No operand ---  " );
        $display ( " ----------------------------------------  " );

        $display ( "--- Least 8 bitS of ALU OUT  ---  " );

        @( negedge TX_OUT_tb );

        for ( i = 0 ; i < 11 ; i = i + 1 )
            begin
                repeat (8) @ ( posedge UART_CLK_tb );

                if ( TX_OUT_tb == ALUNOOP1_TXOUT [i] )
                    begin
                        $display ( " DATA [%d] IS PASSED  ",i);
                    end
                else
                    begin
                        $display ( " DATA [%d] IS FAILED  ",i);
                    end                
            end

        $display ( "--- Most 8 bits of ALU OUT ---  " );  

        @( negedge TX_OUT_tb );

        for ( i = 0 ; i < 11 ; i = i + 1 )
            begin
                repeat (8) @ ( posedge UART_CLK_tb );

                if ( TX_OUT_tb == ALUNOOP2_TXOUT [i] )
                    begin
                        $display ( " DATA [%d]  IS PASSED  ",i);
                    end
                else
                    begin
                        $display ( " DATA [%d] IS FAILED  ",i);
                    end                
            end
    end
    
endtask

// ---------------- Clock generator ---------------

initial 
    begin
        forever #10 REF_CLK_tb = ~ REF_CLK_tb;
    end

initial 
    begin
        forever #52083 UART_CLK_tb = ~ UART_CLK_tb;
    end

// ---------------- Instantation ---------------

SYS_TOP #(  .Data_width ( Data_width_tb ) ,
            .OPERAND_WIDTH ( OPERAND_WIDTH_tb ),
            .ALU_OUT_WIDTH ( ALU_OUT_WIDTH_tb ),
            .NUM_OF_OPERATIONS ( NUM_OF_OPERATIONS_tb ),
            .DEPTH ( DEPTH_tb ),
            .NUM_STAGES ( NUM_STAGES_tb ),
            .BIT_SYNC_BUS_WIDTH ( BIT_SYNC_BUS_WIDTH_tb ),
            .DATA_SYNC_BUS_WIDTH ( DATA_SYNC_BUS_WIDTH_tb ),
            .ratio_width ( ratio_width_tb ),
            .Prescale_width ( Prescale_width_tb ) 
        )
        DUT
        (
            .RX_IN ( RX_IN_tb ),
            .REF_CLK ( REF_CLK_tb ),
            .UART_CLK ( UART_CLK_tb ),
            .RST ( RST_tb ),
            .TX_OUT (TX_OUT_tb ),
            .par_err ( par_err_tb),
            .stp_err ( stp_err_tb )

        );
endmodule
