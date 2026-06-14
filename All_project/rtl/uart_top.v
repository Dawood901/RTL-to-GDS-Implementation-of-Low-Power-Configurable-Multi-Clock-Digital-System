module uart_top (
    p_data,data_valid,par_en,par_type,clk,rst_n,tx_out,busy
);

input [7:0] p_data; // Parallel data input
input data_valid; // Data valid signal
input par_en; // Parity enable signal
input par_type; // Parity type (0 for even, 1 for odd)
wire par_bit,ser_done,ser_en,ser_data;
//wire start_bit,stop_bit;
wire [1:0] mux_sel;



input clk; // Clock signal
input rst_n; // Reset signal
output tx_out; // Transmit output bit by bit serial
output busy; // Busy signal indicating transmission in progress




uart_fsm fsm_int (
    .data_valid(data_valid),
    .par_en(par_en),
    .ser_done(ser_done),
    .ser_en(ser_en),
    .mux_sel(mux_sel),
    .busy(busy),
    .clk(clk),
    .rst_n(rst_n)
);
parity parity_int (
    .p_data(p_data),
    .data_valid(data_valid),
    .par_en(par_en),
    .par_type(par_type),
    .clk(clk),
    .rst_n(rst_n),
    .par_bit(par_bit)
);

serializer serializer_int (
    .p_data(p_data),
    .ser_en(ser_en),
    .ser_done(ser_done),
    .ser_data(ser_data),
    .clk(clk),
    .rst_n(rst_n),
    .busy(busy)
);

uart_mux mux_inst (
    .mux_sel(mux_sel),
    .ser_data(ser_data),
    .par_bit(par_bit),
    .tx_out(tx_out)
);




endmodule