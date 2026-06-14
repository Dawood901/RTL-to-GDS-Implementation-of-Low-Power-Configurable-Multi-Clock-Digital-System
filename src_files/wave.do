onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/ref_clk_period
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/uart_clk_period
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/rst_tb
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/ref_clk_tb
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/uart_clk_tb
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/rx_in_tb
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/tx_out_tb
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/parity_error
add wave -noupdate -expand -group TB_signals /SYSTEM_TB/framing_error
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/WIDTH
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/DEPTH
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/ADDR
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/CLK
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/RST
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/WrEn
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/RdEn
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/Address
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/WrData
add wave -noupdate -expand -group REG_FILE -color Yellow /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/RdData
add wave -noupdate -expand -group REG_FILE -color Yellow /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/RdData_VLD
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/REG0
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/REG1
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/REG2
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/REG3
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/I
add wave -noupdate -expand -group REG_FILE /SYSTEM_TB/U0_SYS_TOP/U0_RegFile/regArr
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/RF_wr_cmd
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/RF_rd_cmd
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/ALU_oper_w_op_cmd
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/ALU_oper_w_nop_cmd
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/idle
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/RF_wr_addr_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/RF_wr_data_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/RF_rd_addr_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/opA_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/opB_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_func_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_result_low_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_result_high_state
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/clk
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/rst
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_out
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/out_valid
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_fun
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/en
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/clk_en
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/address
add wave -noupdate -expand -group SYS_Cntrl -color Magenta /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/wr_en
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/rd_en
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/wr_data
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/rd_data
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/rd_data_valid
add wave -noupdate -expand -group SYS_Cntrl -color Yellow /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/rx_p_data
add wave -noupdate -expand -group SYS_Cntrl -color Cyan /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/rx_d_valid
add wave -noupdate -expand -group SYS_Cntrl -color Yellow /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/tx_p_data
add wave -noupdate -expand -group SYS_Cntrl -color Yellow /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/tx_d_valid
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/clk_div_en
add wave -noupdate -expand -group SYS_Cntrl -color Magenta /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/addr_stored_reg
add wave -noupdate -expand -group SYS_Cntrl -color Yellow /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/cs
add wave -noupdate -expand -group SYS_Cntrl -color Yellow /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/ns
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_result_reg
add wave -noupdate -expand -group SYS_Cntrl /SYSTEM_TB/U0_SYS_TOP/sys_cntrl_inst/alu_result_ready
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/idle
add wave -noupdate -group UART_RX_FSM -color Cyan /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/data_valid
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/start
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/data
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/parity
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/stop
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/valid
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/rx_in
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/clk
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/rst_n
add wave -noupdate -group UART_RX_FSM -radix unsigned /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/edge_cnt
add wave -noupdate -group UART_RX_FSM -radix unsigned /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/bit_cnt
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/par_en
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/strt_glitch
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/stp_err
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/par_err
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/prescale
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/data_samp_en
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/enable
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/par_chk_en
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/strt_chk_en
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/stp_chk_en
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/deser_en
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/cs
add wave -noupdate -group UART_RX_FSM /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/uart_rx_fsm_inst/ns
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/DATA_WIDTH
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/RST
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/TX_CLK
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/RX_CLK
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/RX_IN_S
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/RX_OUT_P
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/RX_OUT_V
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/TX_IN_P
add wave -noupdate -expand -group UART -color Magenta /SYSTEM_TB/U0_SYS_TOP/U0_UART/TX_IN_V
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/TX_OUT_S
add wave -noupdate -expand -group UART -color Cyan /SYSTEM_TB/U0_SYS_TOP/U0_UART/TX_OUT_V
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/Prescale
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/parity_enable
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/parity_type
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/parity_error
add wave -noupdate -expand -group UART /SYSTEM_TB/U0_SYS_TOP/U0_UART/framing_error
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/rx_in
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/clk
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/rst_n
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/prescale
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/par_en
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/par_typ
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/par_err
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/stp_err
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/p_data
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/data_valid
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/data_samp_en
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/enable
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/par_chk_en
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/strt_chk_en
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/stp_chk_en
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/deser_en
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/edge_cnt
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/sampled_bit
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/strt_glitch
add wave -noupdate -group UART_RX /SYSTEM_TB/U0_SYS_TOP/U0_UART/U0_UART_RX/bit_cnt
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/DATA_WIDTH
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/synchronizer_stages
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/w_clk
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/w_rst
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/w_inc
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/wr_data
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/r_clk
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/r_rst
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/r_inc
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/rd_data
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/full
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/empty
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/w_ptr
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/r_ptr
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/w_addr
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/raddr
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/w_full
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/r_empty
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/wq2_rptr
add wave -noupdate -expand -group FIFO /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/rq2_wptr
add wave -noupdate -expand -group FIFO -expand /SYSTEM_TB/U0_SYS_TOP/U0_UART_FIFO/mem_dut/reg_file
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {893013096 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {553904778 ps} {1361590082 ps}
