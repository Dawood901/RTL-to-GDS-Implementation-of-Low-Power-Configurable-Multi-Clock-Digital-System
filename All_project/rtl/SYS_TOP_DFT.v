
module SYS_TOP_DFT # ( parameter DATA_WIDTH = 8 ,  RF_ADDR = 4 )

(
 input   wire                          RST_N,
 input   wire                          UART_CLK,
 input   wire                          REF_CLK,
 input   wire                          UART_RX_IN,
 output  wire                          UART_TX_O,
 output  wire                          parity_error,
 output  wire                          framing_error,

// DFT signals
input wire scan_clk,
input wire scan_rst,
input wire test_mode,
input wire SI,
input wire SE,
output wire SO
);


wire                                   SYNC_UART_RST;
wire                                   SYNC_REF_RST;
									   
wire					               UART_TX_CLK;
wire					               UART_RX_CLK;


wire      [DATA_WIDTH-1:0]             Operand_A,
                                       Operand_B,
									   UART_Config,
									   DIV_RATIO;
									   
wire      [DATA_WIDTH-1:0]             DIV_RATIO_RX;
									   
wire      [DATA_WIDTH-1:0]             UART_RX_OUT;
wire         						   UART_RX_V_OUT;
wire      [DATA_WIDTH-1:0]			   UART_RX_SYNC;
wire                                   UART_RX_V_SYNC;

wire      [DATA_WIDTH-1:0]             UART_TX_IN;
wire        						   UART_TX_VLD;
wire      [DATA_WIDTH-1:0]             UART_TX_SYNC;
wire        						   UART_TX_V_SYNC;

wire                                   UART_TX_Busy;	
wire                                   UART_TX_Busy_PULSE;	
									   
wire                                   RF_WrEn;
wire                                   RF_RdEn;
wire      [RF_ADDR-1:0]                RF_Address;
wire      [DATA_WIDTH-1:0]             RF_WrData;
wire      [DATA_WIDTH-1:0]             RF_RdData;
wire                                   RF_RdData_VLD;									   

wire                                   CLKG_EN;
wire                                   ALU_EN;
wire      [3:0]                        ALU_FUN; 
wire      [DATA_WIDTH*2-1:0]           ALU_OUT;
wire                                   ALU_OUT_VLD; 
									   
wire                                   ALU_CLK ;								   

wire                                   FIFO_FULL ;
	
wire                                   CLKDIV_EN ;
//////////////////////////////////////////////////////////
//// DFT muxs and internal signals ////
    //---------dft muxing internal signals------//
    wire                  scan_fun_rst ;
    wire                  scan_fun_ref_clk ;
    wire                  scan_fun_uart_clk ;
    wire                  scan_fun_uart_tx_clk ;
    wire                  scan_fun_uart_rx_clk ;
    wire 		  scan_fun_uart_rst;
    wire 		  scan_fun_ref_rst;

mux2X1 U0_ref_clk_mux (
.IN_0(REF_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(scan_fun_ref_clk)
);

mux2X1 U0_rst_mux (
.IN_0(RST_N),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(scan_fun_rst)
);

mux2X1 U0_uart_clk_mux (
.IN_0(UART_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(scan_fun_uart_clk)
);

mux2X1 U0_uart_tx_clk_mux (
.IN_0(UART_TX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(scan_fun_uart_tx_clk)
);

mux2X1 U0_uart_rx_clk_mux (
.IN_0(UART_RX_CLK),
.IN_1(scan_clk),
.SEL(test_mode),
.OUT(scan_fun_uart_rx_clk)
);

mux2X1 U0_sync_uart_rst_mux (
.IN_0(SYNC_UART_RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(scan_fun_uart_rst)
);

mux2X1 U0_sync_ref_rst_mux (
.IN_0(SYNC_REF_RST),
.IN_1(scan_rst),
.SEL(test_mode),
.OUT(scan_fun_ref_rst)
);
//////////////////////////////////////////////////////////

	   

//////////////////// Reset synchronizers /////////////////////
RST_SYNC # (.NUM_STAGES(2)) U0_RST_SYNC (
.RST(scan_fun_rst),
.CLK(scan_fun_uart_clk),
.SYNC_RST(SYNC_UART_RST)
);

RST_SYNC # (.NUM_STAGES(2)) U1_RST_SYNC (
.RST(scan_fun_rst),
.CLK(scan_fun_ref_clk),
.SYNC_RST(SYNC_REF_RST)
);


////////////////////// Data Synchronizer /////////////////////
DATA_SYNC # (.NUM_STAGES(2) , .BUS_WIDTH(8)) U0_ref_sync (
.CLK(scan_fun_ref_clk),
.RST(scan_fun_ref_rst),
.unsync_bus(UART_RX_OUT),
.bus_enable(UART_RX_V_OUT),
.sync_bus(UART_RX_SYNC),
.enable_pulse_d(UART_RX_V_SYNC)
);


///////////////////////// Async FIFO /////////////////////////
Async_fifo #(.D_SIZE(DATA_WIDTH) , .P_SIZE(4)  , .F_DEPTH(8)) U0_UART_FIFO (
.i_w_clk(scan_fun_ref_clk),
.i_w_rstn(scan_fun_ref_rst),  
.i_w_inc(UART_TX_VLD),
.i_w_data(UART_TX_IN),             
.i_r_clk(scan_fun_uart_tx_clk),              
.i_r_rstn(scan_fun_uart_rst),              
.i_r_inc(UART_TX_Busy_PULSE),              
.o_r_data(UART_TX_SYNC),             
.o_full(FIFO_FULL),               
.o_empty(UART_TX_V_SYNC)               
);


//////////////////////// Pulse Generator /////////////////////
PULSE_GEN U0_PULSE_GEN (
.clk(scan_fun_uart_tx_clk),
.rst(scan_fun_uart_rst),
.lvl_sig(UART_TX_Busy),
.pulse_sig(UART_TX_Busy_PULSE)
);


//////////// Clock Divider for UART_TX Clock /////////////////
ClkDiv U0_ClkDiv (
.i_ref_clk(scan_fun_uart_clk),             
.i_rst(scan_fun_uart_rst),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO),           
.o_div_clk(UART_TX_CLK)             
);


/////////////////////// Custom Mux Clock /////////////////////
CLKDIV_MUX U0_CLKDIV_MUX (
.IN(UART_Config[7:2]),
.OUT(DIV_RATIO_RX)
);


//////////// Clock Divider for UART_RX Clock /////////////////
ClkDiv U1_ClkDiv (
.i_ref_clk(scan_fun_uart_clk),             
.i_rst(scan_fun_uart_rst),                 
.i_clk_en(CLKDIV_EN),               
.i_div_ratio(DIV_RATIO_RX),           
.o_div_clk(UART_RX_CLK)             
);


/////////////////////////// UART /////////////////////////////


UART #(.DATA_WIDTH(DATA_WIDTH)) U0_UART (
.RST(scan_fun_uart_rst),
.TX_CLK(scan_fun_uart_tx_clk),
.RX_CLK(scan_fun_uart_rx_clk),
.RX_IN_S(UART_RX_IN),
.RX_OUT_P(UART_RX_OUT),
.RX_OUT_V(UART_RX_V_OUT),
.TX_IN_P(UART_TX_SYNC),
.TX_IN_V(!UART_TX_V_SYNC),
.TX_OUT_S(UART_TX_O),
.TX_OUT_V(UART_TX_Busy),
.Prescale(UART_Config[7:2]),
.parity_enable(UART_Config[0]),
.parity_type(UART_Config[1]),
.parity_error(parity_error),
.framing_error(framing_error)
);


//////////////////// System Controller ///////////////////////

sys_ctrl sys_cntrl_inst(

.clk(scan_fun_ref_clk),
.rst(scan_fun_ref_rst),
.alu_out(ALU_OUT[DATA_WIDTH*2-1:0]),
.out_valid(ALU_OUT_VLD),
.alu_fun(ALU_FUN),
.en(ALU_EN),
.clk_en(CLKG_EN),
.address(RF_Address),
.wr_en(RF_WrEn),
.rd_en(RF_RdEn),
.wr_data(RF_WrData),
.rd_data(RF_RdData),
.rd_data_valid(RF_RdData_VLD),
.rx_p_data(UART_RX_SYNC),
.rx_d_valid(UART_RX_V_SYNC),
.tx_p_data(UART_TX_IN),
.tx_d_valid(UART_TX_VLD),
.clk_div_en(CLKDIV_EN)


);


/////////////////////// Register File ////////////////////////
RegFile U0_RegFile (
.CLK(scan_fun_ref_clk),
.RST(scan_fun_ref_rst),
.WrEn(RF_WrEn),
.RdEn(RF_RdEn),
.Address(RF_Address),
.WrData(RF_WrData),
.RdData(RF_RdData),
.RdData_VLD(RF_RdData_VLD),
.REG0(Operand_A),
.REG1(Operand_B),
.REG2(UART_Config),
.REG3(DIV_RATIO)
);


//////////////////////////// ALU /////////////////////////////
ALU U0_ALU (
.CLK(ALU_CLK),
.RST(scan_fun_ref_rst),  
.A(Operand_A), 
.B(Operand_B),
.EN(ALU_EN),
.ALU_FUN(ALU_FUN),
.ALU_OUT(ALU_OUT),
.OUT_VALID(ALU_OUT_VLD)
);


///////////////////////// Clock Gating ///////////////////////
CLK_GATE U0_CLK_GATE (
.CLK_EN(CLKG_EN||test_mode),
.CLK(scan_fun_ref_clk),
.GATED_CLK(ALU_CLK)
);

endmodule
 

