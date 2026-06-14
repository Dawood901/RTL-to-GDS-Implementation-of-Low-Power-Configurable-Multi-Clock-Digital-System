
`timescale 1ns/1ps
// This file used to test the main 4 commands of the system
// ref_clk = 50MHz 
// uart_clk = 3.6864 MHz
// clock divider is always on 
module SYSTEM_TB ();
    localparam ref_clk_period = 20;
    localparam uart_clk_period = 271.267;

    // signal declaration
    reg rst_tb;
    reg ref_clk_tb;
    reg uart_clk_tb;
    reg rx_in_tb;
    wire tx_out_tb;
    wire parity_error;
    wire framing_error;

    // clock generation
    always #(ref_clk_period/2) ref_clk_tb = ~ref_clk_tb;
    always #(uart_clk_period/2) uart_clk_tb = ~uart_clk_tb;

    // DUT instantiation
    SYS_TOP #(.DATA_WIDTH(8), .RF_ADDR(4)) U0_SYS_TOP (
        .RST_N(rst_tb),
        .UART_CLK(uart_clk_tb),
        .REF_CLK(ref_clk_tb),
        .UART_RX_IN(rx_in_tb),
        .UART_TX_O(tx_out_tb),
        .parity_error(parity_error),
        .framing_error(framing_error)
    );
        
    // stimulus generation
    initial begin
        uart_clk_tb = 0;
        ref_clk_tb = 0;
        rst_tb = 0;
        rx_in_tb = 1; // idle state for UART RX "stop bit"
        #0;
        //#(uart_clk_period*32);
        rst_tb = 1; // release reset
        
        //-------- test write command (0xAA) 1010_1010 in address 0x5 and 0x6) ----------//
        send_byte(8'hAA);      
        // now send address 0x5
        send_byte(8'h05);
        // now send data 0xFF
        send_byte(8'hFF);
        // send the write command again 
        send_byte(8'hAA);
        // now send address 0x6   0000-0110  
        send_byte(8'h06);
        // now send data 0x66
        send_byte(8'h66);
        //-------- test read command (0xBB) 1011_1011 from address 0x5 and 0x6) ----------//
        send_byte(8'hBB);
        // now send address 0x5    The "0-1111-1111-0-1" is the data out from TX 
        send_byte(8'h05);
        #(uart_clk_period*32*20); // wait some time to receive the data from TX
        // now send read command again
        send_byte(8'hBB);
        // now send address 0x6   The "0-0110-0110-0-1" is the data out from TX
        send_byte(8'h06);
        #(uart_clk_period*32*20); // wait some time to receive the data from TX
        //-------- test ALU command (0xCC) 1100_1100 with ADD functuon
        send_byte(8'hCC);
        // now send operand A = 0x14
        send_byte(8'h14);
        // now send operand B = 0x02
        send_byte(8'h02);
        // now send ALU func ADD = 0x00
        send_byte(8'h00); // expected output = 0x16
        #(uart_clk_period*32*40); // wait some time to receive the data from TX we will receive 2 bytes (0x00 and 0x16)
        // TRY multiplication function
        send_byte(8'hCC);
        // now send operand A = 0xF4
        send_byte(8'hF4);
        // now send operand B = 0x1F
        send_byte(8'h1F);
        // now send ALU func MUL = 0x02
        send_byte(8'h02); // expected output = 0x1D8C
        #(uart_clk_period*32*40); // wait some time to receive the data from TX we will receive 2 bytes (0x1D and 0x8C)
        //-------- test ALU with out operand command (0xDD) 1101_1101 with SUB function ----------//
        send_byte(8'hDD);
        // now send ALU func SUB = 0x01
        send_byte(8'h01); // expected output = 0x00_D5
        #(uart_clk_period*32*40); // wait some time to receive the data from TX we will receive 2 bytes (0x00 and 0xD5)

        $stop();

    end

    // task to send a byte through UART RX
    task send_byte;
        input [7:0] data;
        integer i;
        begin
            rx_in_tb = 0; // start bit
            #(uart_clk_period*32);  
            for (i = 0; i < 8; i = i + 1) begin   // 8-bit data
                rx_in_tb = data[i];
                #(uart_clk_period*32);
            end
            rx_in_tb = ^data; // parity bit (even parity)
            #(uart_clk_period*32);
            rx_in_tb = 1; //stop bit
            #(uart_clk_period*32); 
            #(uart_clk_period*31);
        end
    endtask

endmodule