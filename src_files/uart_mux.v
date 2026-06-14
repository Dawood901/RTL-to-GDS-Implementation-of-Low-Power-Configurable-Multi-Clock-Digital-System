module uart_mux (
    mux_sel,ser_data,par_bit,tx_out
);

input [1:0] mux_sel;
//input start_bit,stop_bit;
input ser_data;
input par_bit;

output reg tx_out;

//reg tx_out;
  localparam start_bit = 1'b0 ;
  localparam stop_bit = 1'b1 ;

always @(*) begin
    case (mux_sel)
     2'b00   : tx_out = start_bit;
     2'b01   : tx_out = stop_bit;
     2'b10   : tx_out = ser_data;
     2'b11   : tx_out = par_bit;
        default: tx_out = 1'b0; 
    endcase



end
/*
assign start_bit = 1'b0; // Assuming start bit is always 0
assign stop_bit = 1'b1; // Assuming stop bit is always 1
  */

endmodule