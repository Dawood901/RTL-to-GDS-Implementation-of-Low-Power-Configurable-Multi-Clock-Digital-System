module uart_rx_top (
    rx_in,
    clk,
    rst_n,
    prescale,
    par_en,
    par_typ,
    p_data,
    par_err,
    stp_err,
    data_valid
);

input       rx_in;          // UART receive input
input    clk;                // Clock signal
input    rst_n;              // Active low reset
input [5:0]    prescale;
input       par_en;            // Parity enable signal
input       par_typ;          // Parity type (even/odd)
output       par_err;         // Parity error flag
output       stp_err;        // Stop bit error flag
output      [7:0] p_data; // Data output
output      data_valid;     // Data valid output signal








// Internal signals

wire data_samp_en;  // Data sampling enable
wire enable;         // Enable signal for the edge_bit_counter
wire par_chk_en;    // Parity check enable signal
wire strt_chk_en;   // Start bit check enable signal
wire stp_chk_en;    // Stop bit check enable signal
wire deser_en;      // Deserializer enable signal
wire [5:0] edge_cnt;      // Edge count for sampling
wire sampled_bit;  // Sampled bit for parity check
wire strt_glitch;  // Start bit glitch detection
wire [3:0] bit_cnt; // Bit count for current byte





// Instantiate the UART receiver finite state machine
uart_rx_fsm uart_rx_fsm_inst (
    .rx_in(rx_in),
    .clk(clk),
    .rst_n(rst_n),
    .data_samp_en(data_samp_en),
    .enable(enable),
    .par_en(par_en),
    .par_chk_en(par_chk_en),
    .strt_chk_en(strt_chk_en),
    .stp_chk_en(stp_chk_en),
    .deser_en(deser_en),
    .data_valid(data_valid),
    .par_err(par_err),
    .stp_err(stp_err),
    .edge_cnt(edge_cnt),
    .strt_glitch(strt_glitch),
    .bit_cnt(bit_cnt),
    .prescale(prescale)

);

parity_check parity_check_inst (
    .par_typ(par_typ),
    .par_chk_en(par_chk_en),
    .sampled_bit(sampled_bit),
    .clk(clk),
    .rst_n(rst_n),
    .p_data(p_data),
    .par_err(par_err)
);

start_check start_check_inst (
    .strt_chk_en(strt_chk_en),
    .sampled_bit(sampled_bit),
    .clk(clk),
    .rst_n(rst_n),
    .strt_glitch(strt_glitch)
);

stop_check stop_check_inst (
    .stp_chk_en(stp_chk_en),
    .sampled_bit(sampled_bit),
    .clk(clk),
    .rst_n(rst_n),
    .stp_err(stp_err),
    .p_data(p_data)
    
);

Deserializer deserializer_inst (
    .deser_en(deser_en),
    .clk(clk),
    .rst_n(rst_n),
    .p_data(p_data),
    .sampled_bit(sampled_bit),
    .edge_cnt(edge_cnt),
    .prescale(prescale)

);


data_sampling data_sampling_rx_inst (
    .data_samp_en(data_samp_en),
    .edge_cnt(edge_cnt),
    .clk(clk),
    .prescale(prescale),
    .rst_n(rst_n),
    .sampled_bit(sampled_bit),
    .rx_in(rx_in)

);

edge_bit_counter edge_bit_counter_inst (
    .enable(enable),
    .clk(clk),
    .rst_n(rst_n),
    .edge_cnt(edge_cnt),
    .bit_cnt(bit_cnt),
    .prescale(prescale)
);


endmodule