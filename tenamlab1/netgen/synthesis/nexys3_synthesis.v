////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: nexys3_synthesis.v
// /___/   /\     Timestamp: Tue Apr 11 10:46:59 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim nexys3.ngc nexys3_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: nexys3.ngc
// Output file	: C:\Users\Student\Desktop\152alab10am\tenamlab1\netgen\synthesis\nexys3_synthesis.v
// # of Modules	: 1
// Design Name	: nexys3
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module nexys3 (
  RsRx, btnS, btnR, clk, RsTx, sw, led
);
  input RsRx;
  input btnS;
  input btnR;
  input clk;
  output RsTx;
  input [7 : 0] sw;
  output [7 : 0] led;
  wire sw_7_IBUF_0;
  wire sw_6_IBUF_1;
  wire sw_5_IBUF_2;
  wire sw_4_IBUF_3;
  wire sw_3_IBUF_4;
  wire sw_2_IBUF_5;
  wire sw_1_IBUF_6;
  wire sw_0_IBUF_7;
  wire btnS_IBUF_8;
  wire btnR_IBUF_9;
  wire clk_BUFGP_10;
  wire \uart_top_/uart_/tx_out_19 ;
  wire seq_tx_valid;
  wire clk_en_d_39;
  wire inst_vld_40;
  wire clk_dv_15_52;
  wire clk_dv_14_53;
  wire clk_dv_13_54;
  wire clk_dv_12_55;
  wire clk_dv_11_56;
  wire clk_dv_10_57;
  wire clk_dv_9_58;
  wire clk_dv_8_59;
  wire clk_dv_7_60;
  wire clk_dv_6_61;
  wire clk_dv_5_62;
  wire clk_dv_4_63;
  wire clk_dv_3_64;
  wire clk_dv_2_65;
  wire clk_dv_1_66;
  wire clk_dv_0_67;
  wire clk_en_68;
  wire clk_dv_16_69;
  wire \step_d[0]_clk_en_d_AND_2_o ;
  wire N0;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 ;
  wire \uart_top_/tfifo_in<7>2 ;
  wire \uart_top_/tfifo_in<8>1 ;
  wire \uart_top_/rst_inv ;
  wire \uart_top_/tfifo_in[0] ;
  wire \uart_top_/tfifo_in[1] ;
  wire \uart_top_/tfifo_in[2] ;
  wire \uart_top_/tfifo_in[3] ;
  wire \uart_top_/tfifo_in[4] ;
  wire \uart_top_/tfifo_in[6] ;
  wire \uart_top_/state[2]_state[2]_select_11_OUT<0> ;
  wire \uart_top_/state[2]_state[2]_select_11_OUT<1> ;
  wire \uart_top_/state[2]_state[2]_select_11_OUT<2> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<0> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<1> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<2> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<3> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<4>_143 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<5>_144 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<6>_145 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<7>_146 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<8>_147 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<9>_148 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<10> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<11>_150 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<12>_151 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<13>_152 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<14>_153 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<15>_154 ;
  wire \uart_top_/tfifo_rd_z_171 ;
  wire \uart_top_/tfifo_/fifo_empty_172 ;
  wire \uart_top_/tfifo_/fifo_full_173 ;
  wire \uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ;
  wire \uart_top_/uart_/Mmux__n02321115 ;
  wire \uart_top_/uart_/Mmux__n02321113_184 ;
  wire \uart_top_/uart_/Mmux__n02321112_185 ;
  wire \uart_top_/uart_/GND_10_o_reduce_nor_15_o61 ;
  wire \uart_top_/uart_/tx_clk_divider[0] ;
  wire \uart_top_/uart_/Mcount_tx_bits_remaining3 ;
  wire \uart_top_/uart_/Mcount_tx_bits_remaining2 ;
  wire \uart_top_/uart_/Mcount_tx_bits_remaining1 ;
  wire \uart_top_/uart_/Mcount_tx_bits_remaining ;
  wire \uart_top_/uart_/_n0242_inv ;
  wire \uart_top_/uart_/n0056_194 ;
  wire \uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<0> ;
  wire \uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<1> ;
  wire \uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<2> ;
  wire \uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<3> ;
  wire \uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<4> ;
  wire \uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<5> ;
  wire \uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<0> ;
  wire \uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<1> ;
  wire \uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<2> ;
  wire \uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<3> ;
  wire \uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<4> ;
  wire \uart_top_/uart_/tx_state[1]_tx_state[1]_wide_mux_64_OUT<0> ;
  wire \uart_top_/uart_/tx_state[1]_tx_state[1]_wide_mux_64_OUT<1> ;
  wire \uart_top_/uart_/tx_clk_divider[1] ;
  wire \uart_top_/uart_/tx_clk_divider[2] ;
  wire \uart_top_/uart_/tx_clk_divider[3] ;
  wire \uart_top_/uart_/tx_clk_divider[4] ;
  wire \uart_top_/uart_/tx_clk_divider[10] ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12_240 ;
  wire \uart_top_/tfifo_/wr_GND_9_o_Select_11_o2 ;
  wire \uart_top_/tfifo_/Maccum_wp_xor<2>11 ;
  wire \uart_top_/tfifo_/Maccum_rp_xor<2>11 ;
  wire \uart_top_/tfifo_/Maccum_wp_xor<7>11_244 ;
  wire \uart_top_/tfifo_/Maccum_rp_xor<7>11_245 ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>1_246 ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>1_247 ;
  wire \uart_top_/tfifo_/Result<9>1 ;
  wire \uart_top_/tfifo_/Result<8>1 ;
  wire \uart_top_/tfifo_/Result<7>1 ;
  wire \uart_top_/tfifo_/Result<6>1 ;
  wire \uart_top_/tfifo_/Result<5>1 ;
  wire \uart_top_/tfifo_/Result<4>1 ;
  wire \uart_top_/tfifo_/Result<3>1 ;
  wire \uart_top_/tfifo_/Result<2>1 ;
  wire \uart_top_/tfifo_/Result<1>1 ;
  wire \uart_top_/tfifo_/wr_GND_9_o_Select_12_o ;
  wire \uart_top_/tfifo_/wr_GND_9_o_Select_11_o_297 ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<0> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<1> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<3> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<4> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<5> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<7> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<8> ;
  wire \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<9> ;
  wire \uart_top_/tfifo_/wr ;
  wire \uart_top_/tfifo_/rd ;
  wire \seq_/alu_valid_in ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<0> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<1> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<2> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<3> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<4> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<5> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<6> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<7> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<8> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<9> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<10> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<11> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<12> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<13> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<14> ;
  wire \seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<15> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<0> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<1> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<2> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<3> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<4> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<5> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<6> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<7> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<8> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<9> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<10> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<11> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<12> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<13> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<14> ;
  wire \seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<15> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<0> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<1> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<2> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<3> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<4> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<5> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<6> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<7> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<8> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<9> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<10> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<11> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<12> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<13> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<14> ;
  wire \seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<15> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<0> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<1> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<2> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<3> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<4> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<5> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<6> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<7> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<8> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<9> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<10> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<11> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<12> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<13> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<14> ;
  wire \seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<15> ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<10>2 ;
  wire \uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N16;
  wire N18;
  wire N20;
  wire N22;
  wire N24;
  wire N26;
  wire \uart_top_/uart_/Mmux__n0232111 ;
  wire \uart_top_/uart_/Mmux__n02321111 ;
  wire \uart_top_/uart_/Mmux__n0232112 ;
  wire \uart_top_/uart_/Mmux__n02321121_539 ;
  wire N36;
  wire \uart_top_/tfifo_/wr_GND_9_o_Select_12_o1_541 ;
  wire \Madd_n0047_cy<1>_rt_562 ;
  wire \Madd_n0047_cy<2>_rt_563 ;
  wire \Madd_n0047_cy<3>_rt_564 ;
  wire \Madd_n0047_cy<4>_rt_565 ;
  wire \Madd_n0047_cy<5>_rt_566 ;
  wire \Madd_n0047_cy<6>_rt_567 ;
  wire \Madd_n0047_cy<7>_rt_568 ;
  wire \Madd_n0047_cy<8>_rt_569 ;
  wire \Madd_n0047_cy<9>_rt_570 ;
  wire \Madd_n0047_cy<10>_rt_571 ;
  wire \Madd_n0047_cy<11>_rt_572 ;
  wire \Madd_n0047_cy<12>_rt_573 ;
  wire \Madd_n0047_cy<13>_rt_574 ;
  wire \Madd_n0047_cy<14>_rt_575 ;
  wire \Madd_n0047_cy<15>_rt_576 ;
  wire \Madd_n0047_cy<16>_rt_577 ;
  wire \Mcount_inst_cnt_cy<1>_rt_578 ;
  wire \Mcount_inst_cnt_cy<2>_rt_579 ;
  wire \Mcount_inst_cnt_cy<3>_rt_580 ;
  wire \Mcount_inst_cnt_cy<4>_rt_581 ;
  wire \Mcount_inst_cnt_cy<5>_rt_582 ;
  wire \Mcount_inst_cnt_cy<6>_rt_583 ;
  wire \Mcount_inst_cnt_xor<7>_rt_584 ;
  wire \uart_top_/uart_/tx_out_rstpot_585 ;
  wire N38;
  wire N39;
  wire N50;
  wire N51;
  wire N62;
  wire N63;
  wire N74;
  wire N75;
  wire N86;
  wire N87;
  wire N98;
  wire N99;
  wire N110;
  wire N111;
  wire N122;
  wire N123;
  wire N134;
  wire N135;
  wire N146;
  wire N147;
  wire N158;
  wire N159;
  wire N170;
  wire N171;
  wire N182;
  wire N183;
  wire N194;
  wire N195;
  wire N206;
  wire N207;
  wire N218;
  wire N219;
  wire N230;
  wire N232;
  wire N234;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_CARRYOUTF_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_CARRYOUT_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<17>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<16>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<15>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<14>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<13>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<12>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<11>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<10>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<9>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<8>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<7>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<6>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<5>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<4>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<3>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<2>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<1>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<0>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<47>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<46>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<45>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<44>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<43>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<42>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<41>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<40>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<39>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<38>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<37>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<36>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<35>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<34>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<33>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<32>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<31>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<30>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<29>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<28>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<27>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<26>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<25>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<24>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<23>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<22>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<21>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<20>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<19>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<18>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<17>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<16>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<15>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<14>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<13>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<12>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<11>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<10>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<9>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<8>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<7>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<6>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<5>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<4>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<3>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<2>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<1>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<0>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<47>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<46>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<45>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<44>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<43>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<42>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<41>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<40>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<39>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<38>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<37>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<36>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<35>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<34>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<33>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<32>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<31>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<30>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<29>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<28>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<27>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<26>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<25>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<24>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<23>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<22>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<21>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<20>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<19>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<18>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<17>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<16>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<15>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<14>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<13>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<12>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<11>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<10>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<9>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<8>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<7>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<6>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<5>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<4>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<3>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<2>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<1>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_P<0>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<47>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<46>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<45>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<44>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<43>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<42>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<41>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<40>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<39>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<38>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<37>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<36>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<35>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<34>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<33>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<32>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<31>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<30>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<29>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<28>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<27>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<26>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<25>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<24>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<23>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<22>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<21>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<20>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<19>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<18>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<17>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<16>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<15>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<14>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<13>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<12>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<11>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<10>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<9>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<8>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<7>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<6>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<5>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<4>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<3>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<2>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<1>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<0>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<35>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<34>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<33>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<32>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<31>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<30>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<29>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<28>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<27>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<26>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<25>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<24>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<23>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<22>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<21>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<20>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<19>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<18>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<17>_UNCONNECTED ;
  wire \NLW_seq_/alu_/mult_/Mmult_n0002_M<16>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<15>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<14>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<13>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<12>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<11>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<10>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<9>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<8>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<7>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<6>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<5>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<4>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<3>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<2>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOADO<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOPBDOP<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_ADDRAWRADDR<2>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_ADDRAWRADDR<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_ADDRAWRADDR<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<15>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<14>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<13>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<12>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<11>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<10>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<9>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<8>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<7>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<6>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<5>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<4>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<3>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<2>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<15>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<14>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<13>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<12>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<11>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<10>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<9>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIADI<8>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_ADDRBRDADDR<2>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_ADDRBRDADDR<1>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_ADDRBRDADDR<0>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<15>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<14>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<13>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<12>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<11>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<10>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<9>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<8>_UNCONNECTED ;
  wire \NLW_uart_top_/tfifo_/Mram_mem_DIPADIP<1>_UNCONNECTED ;
  wire [7 : 0] inst_wd;
  wire [1 : 0] arst_ff;
  wire [15 : 0] seq_tx_data;
  wire [2 : 0] step_d;
  wire [7 : 0] inst_cnt;
  wire [16 : 0] n0047;
  wire [7 : 0] Result;
  wire [0 : 0] Madd_n0047_lut;
  wire [16 : 0] Madd_n0047_cy;
  wire [0 : 0] Mcount_inst_cnt_lut;
  wire [6 : 0] Mcount_inst_cnt_cy;
  wire [2 : 0] \uart_top_/state ;
  wire [15 : 0] \uart_top_/tx_data ;
  wire [7 : 0] \uart_top_/tfifo_out ;
  wire [5 : 0] \uart_top_/uart_/tx_countdown ;
  wire [7 : 0] \uart_top_/uart_/tx_data ;
  wire [3 : 0] \uart_top_/uart_/tx_bits_remaining ;
  wire [1 : 0] \uart_top_/uart_/tx_state ;
  wire [7 : 0] \uart_top_/uart_/_n0243 ;
  wire [9 : 0] \uart_top_/tfifo_/wp ;
  wire [0 : 0] \uart_top_/tfifo_/Maccum_wp_lut ;
  wire [9 : 0] \uart_top_/tfifo_/rp ;
  wire [0 : 0] \uart_top_/tfifo_/Maccum_rp_lut ;
  wire [9 : 0] \uart_top_/tfifo_/fifo_cnt ;
  wire [9 : 1] \uart_top_/tfifo_/Result ;
  wire [15 : 0] \seq_/alu_/add_/Madd_o_data_lut ;
  wire [14 : 0] \seq_/alu_/add_/Madd_o_data_cy ;
  wire [15 : 0] \seq_/alu_/add_data ;
  wire [15 : 0] \seq_/alu_/mult_data ;
  wire [1 : 0] \seq_/rf_wsel ;
  wire [15 : 0] \seq_/rf_data_b ;
  wire [63 : 0] \seq_/rf_/rf_3 ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\uart_top_/uart_/tx_clk_divider[10] )
  );
  FDP   arst_ff_0 (
    .C(clk_BUFGP_10),
    .D(arst_ff[1]),
    .PRE(btnR_IBUF_9),
    .Q(arst_ff[0])
  );
  FDP   arst_ff_1 (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_clk_divider[10] ),
    .PRE(btnR_IBUF_9),
    .Q(arst_ff[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_en (
    .C(clk_BUFGP_10),
    .D(n0047[0]),
    .R(arst_ff[0]),
    .Q(clk_en_68)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_0 (
    .C(clk_BUFGP_10),
    .D(n0047[1]),
    .R(arst_ff[0]),
    .Q(clk_dv_0_67)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_1 (
    .C(clk_BUFGP_10),
    .D(n0047[2]),
    .R(arst_ff[0]),
    .Q(clk_dv_1_66)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_2 (
    .C(clk_BUFGP_10),
    .D(n0047[3]),
    .R(arst_ff[0]),
    .Q(clk_dv_2_65)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_3 (
    .C(clk_BUFGP_10),
    .D(n0047[4]),
    .R(arst_ff[0]),
    .Q(clk_dv_3_64)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_4 (
    .C(clk_BUFGP_10),
    .D(n0047[5]),
    .R(arst_ff[0]),
    .Q(clk_dv_4_63)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_5 (
    .C(clk_BUFGP_10),
    .D(n0047[6]),
    .R(arst_ff[0]),
    .Q(clk_dv_5_62)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_6 (
    .C(clk_BUFGP_10),
    .D(n0047[7]),
    .R(arst_ff[0]),
    .Q(clk_dv_6_61)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_7 (
    .C(clk_BUFGP_10),
    .D(n0047[8]),
    .R(arst_ff[0]),
    .Q(clk_dv_7_60)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_8 (
    .C(clk_BUFGP_10),
    .D(n0047[9]),
    .R(arst_ff[0]),
    .Q(clk_dv_8_59)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_9 (
    .C(clk_BUFGP_10),
    .D(n0047[10]),
    .R(arst_ff[0]),
    .Q(clk_dv_9_58)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_10 (
    .C(clk_BUFGP_10),
    .D(n0047[11]),
    .R(arst_ff[0]),
    .Q(clk_dv_10_57)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_11 (
    .C(clk_BUFGP_10),
    .D(n0047[12]),
    .R(arst_ff[0]),
    .Q(clk_dv_11_56)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_12 (
    .C(clk_BUFGP_10),
    .D(n0047[13]),
    .R(arst_ff[0]),
    .Q(clk_dv_12_55)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_13 (
    .C(clk_BUFGP_10),
    .D(n0047[14]),
    .R(arst_ff[0]),
    .Q(clk_dv_13_54)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_14 (
    .C(clk_BUFGP_10),
    .D(n0047[15]),
    .R(arst_ff[0]),
    .Q(clk_dv_14_53)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_15 (
    .C(clk_BUFGP_10),
    .D(n0047[16]),
    .R(arst_ff[0]),
    .Q(clk_dv_15_52)
  );
  FDR #(
    .INIT ( 1'b0 ))
  clk_dv_16 (
    .C(clk_BUFGP_10),
    .D(Madd_n0047_cy[16]),
    .R(arst_ff[0]),
    .Q(clk_dv_16_69)
  );
  FDR   inst_vld (
    .C(clk_BUFGP_10),
    .D(\step_d[0]_clk_en_d_AND_2_o ),
    .R(arst_ff[0]),
    .Q(inst_vld_40)
  );
  FDRE   inst_wd_0 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_0_IBUF_7),
    .R(arst_ff[0]),
    .Q(inst_wd[0])
  );
  FDRE   inst_wd_1 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_1_IBUF_6),
    .R(arst_ff[0]),
    .Q(inst_wd[1])
  );
  FDRE   inst_wd_2 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_2_IBUF_5),
    .R(arst_ff[0]),
    .Q(inst_wd[2])
  );
  FDRE   inst_wd_3 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_3_IBUF_4),
    .R(arst_ff[0]),
    .Q(inst_wd[3])
  );
  FDRE   inst_wd_4 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_4_IBUF_3),
    .R(arst_ff[0]),
    .Q(inst_wd[4])
  );
  FDRE   inst_wd_5 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_5_IBUF_2),
    .R(arst_ff[0]),
    .Q(inst_wd[5])
  );
  FDRE   inst_wd_6 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_6_IBUF_1),
    .R(arst_ff[0]),
    .Q(inst_wd[6])
  );
  FDRE   inst_wd_7 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(sw_7_IBUF_0),
    .R(arst_ff[0]),
    .Q(inst_wd[7])
  );
  FDR   clk_en_d (
    .C(clk_BUFGP_10),
    .D(clk_dv_16_69),
    .R(arst_ff[0]),
    .Q(clk_en_d_39)
  );
  FDRE   step_d_0 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(step_d[1]),
    .R(arst_ff[0]),
    .Q(step_d[0])
  );
  FDRE   step_d_1 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(step_d[2]),
    .R(arst_ff[0]),
    .Q(step_d[1])
  );
  FDRE   step_d_2 (
    .C(clk_BUFGP_10),
    .CE(clk_dv_16_69),
    .D(btnS_IBUF_8),
    .R(arst_ff[0]),
    .Q(step_d[2])
  );
  FDRE   inst_cnt_0 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[0]),
    .R(arst_ff[0]),
    .Q(inst_cnt[0])
  );
  FDRE   inst_cnt_1 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[1]),
    .R(arst_ff[0]),
    .Q(inst_cnt[1])
  );
  FDRE   inst_cnt_2 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[2]),
    .R(arst_ff[0]),
    .Q(inst_cnt[2])
  );
  FDRE   inst_cnt_3 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[3]),
    .R(arst_ff[0]),
    .Q(inst_cnt[3])
  );
  FDRE   inst_cnt_4 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[4]),
    .R(arst_ff[0]),
    .Q(inst_cnt[4])
  );
  FDRE   inst_cnt_5 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[5]),
    .R(arst_ff[0]),
    .Q(inst_cnt[5])
  );
  FDRE   inst_cnt_6 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[6]),
    .R(arst_ff[0]),
    .Q(inst_cnt[6])
  );
  FDRE   inst_cnt_7 (
    .C(clk_BUFGP_10),
    .CE(inst_vld_40),
    .D(Result[7]),
    .R(arst_ff[0]),
    .Q(inst_cnt[7])
  );
  MUXCY   \Madd_n0047_cy<0>  (
    .CI(\uart_top_/uart_/tx_clk_divider[10] ),
    .DI(N0),
    .S(Madd_n0047_lut[0]),
    .O(Madd_n0047_cy[0])
  );
  XORCY   \Madd_n0047_xor<0>  (
    .CI(\uart_top_/uart_/tx_clk_divider[10] ),
    .LI(Madd_n0047_lut[0]),
    .O(n0047[0])
  );
  MUXCY   \Madd_n0047_cy<1>  (
    .CI(Madd_n0047_cy[0]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<1>_rt_562 ),
    .O(Madd_n0047_cy[1])
  );
  XORCY   \Madd_n0047_xor<1>  (
    .CI(Madd_n0047_cy[0]),
    .LI(\Madd_n0047_cy<1>_rt_562 ),
    .O(n0047[1])
  );
  MUXCY   \Madd_n0047_cy<2>  (
    .CI(Madd_n0047_cy[1]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<2>_rt_563 ),
    .O(Madd_n0047_cy[2])
  );
  XORCY   \Madd_n0047_xor<2>  (
    .CI(Madd_n0047_cy[1]),
    .LI(\Madd_n0047_cy<2>_rt_563 ),
    .O(n0047[2])
  );
  MUXCY   \Madd_n0047_cy<3>  (
    .CI(Madd_n0047_cy[2]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<3>_rt_564 ),
    .O(Madd_n0047_cy[3])
  );
  XORCY   \Madd_n0047_xor<3>  (
    .CI(Madd_n0047_cy[2]),
    .LI(\Madd_n0047_cy<3>_rt_564 ),
    .O(n0047[3])
  );
  MUXCY   \Madd_n0047_cy<4>  (
    .CI(Madd_n0047_cy[3]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<4>_rt_565 ),
    .O(Madd_n0047_cy[4])
  );
  XORCY   \Madd_n0047_xor<4>  (
    .CI(Madd_n0047_cy[3]),
    .LI(\Madd_n0047_cy<4>_rt_565 ),
    .O(n0047[4])
  );
  MUXCY   \Madd_n0047_cy<5>  (
    .CI(Madd_n0047_cy[4]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<5>_rt_566 ),
    .O(Madd_n0047_cy[5])
  );
  XORCY   \Madd_n0047_xor<5>  (
    .CI(Madd_n0047_cy[4]),
    .LI(\Madd_n0047_cy<5>_rt_566 ),
    .O(n0047[5])
  );
  MUXCY   \Madd_n0047_cy<6>  (
    .CI(Madd_n0047_cy[5]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<6>_rt_567 ),
    .O(Madd_n0047_cy[6])
  );
  XORCY   \Madd_n0047_xor<6>  (
    .CI(Madd_n0047_cy[5]),
    .LI(\Madd_n0047_cy<6>_rt_567 ),
    .O(n0047[6])
  );
  MUXCY   \Madd_n0047_cy<7>  (
    .CI(Madd_n0047_cy[6]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<7>_rt_568 ),
    .O(Madd_n0047_cy[7])
  );
  XORCY   \Madd_n0047_xor<7>  (
    .CI(Madd_n0047_cy[6]),
    .LI(\Madd_n0047_cy<7>_rt_568 ),
    .O(n0047[7])
  );
  MUXCY   \Madd_n0047_cy<8>  (
    .CI(Madd_n0047_cy[7]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<8>_rt_569 ),
    .O(Madd_n0047_cy[8])
  );
  XORCY   \Madd_n0047_xor<8>  (
    .CI(Madd_n0047_cy[7]),
    .LI(\Madd_n0047_cy<8>_rt_569 ),
    .O(n0047[8])
  );
  MUXCY   \Madd_n0047_cy<9>  (
    .CI(Madd_n0047_cy[8]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<9>_rt_570 ),
    .O(Madd_n0047_cy[9])
  );
  XORCY   \Madd_n0047_xor<9>  (
    .CI(Madd_n0047_cy[8]),
    .LI(\Madd_n0047_cy<9>_rt_570 ),
    .O(n0047[9])
  );
  MUXCY   \Madd_n0047_cy<10>  (
    .CI(Madd_n0047_cy[9]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<10>_rt_571 ),
    .O(Madd_n0047_cy[10])
  );
  XORCY   \Madd_n0047_xor<10>  (
    .CI(Madd_n0047_cy[9]),
    .LI(\Madd_n0047_cy<10>_rt_571 ),
    .O(n0047[10])
  );
  MUXCY   \Madd_n0047_cy<11>  (
    .CI(Madd_n0047_cy[10]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<11>_rt_572 ),
    .O(Madd_n0047_cy[11])
  );
  XORCY   \Madd_n0047_xor<11>  (
    .CI(Madd_n0047_cy[10]),
    .LI(\Madd_n0047_cy<11>_rt_572 ),
    .O(n0047[11])
  );
  MUXCY   \Madd_n0047_cy<12>  (
    .CI(Madd_n0047_cy[11]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<12>_rt_573 ),
    .O(Madd_n0047_cy[12])
  );
  XORCY   \Madd_n0047_xor<12>  (
    .CI(Madd_n0047_cy[11]),
    .LI(\Madd_n0047_cy<12>_rt_573 ),
    .O(n0047[12])
  );
  MUXCY   \Madd_n0047_cy<13>  (
    .CI(Madd_n0047_cy[12]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<13>_rt_574 ),
    .O(Madd_n0047_cy[13])
  );
  XORCY   \Madd_n0047_xor<13>  (
    .CI(Madd_n0047_cy[12]),
    .LI(\Madd_n0047_cy<13>_rt_574 ),
    .O(n0047[13])
  );
  MUXCY   \Madd_n0047_cy<14>  (
    .CI(Madd_n0047_cy[13]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<14>_rt_575 ),
    .O(Madd_n0047_cy[14])
  );
  XORCY   \Madd_n0047_xor<14>  (
    .CI(Madd_n0047_cy[13]),
    .LI(\Madd_n0047_cy<14>_rt_575 ),
    .O(n0047[14])
  );
  MUXCY   \Madd_n0047_cy<15>  (
    .CI(Madd_n0047_cy[14]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<15>_rt_576 ),
    .O(Madd_n0047_cy[15])
  );
  XORCY   \Madd_n0047_xor<15>  (
    .CI(Madd_n0047_cy[14]),
    .LI(\Madd_n0047_cy<15>_rt_576 ),
    .O(n0047[15])
  );
  MUXCY   \Madd_n0047_cy<16>  (
    .CI(Madd_n0047_cy[15]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Madd_n0047_cy<16>_rt_577 ),
    .O(Madd_n0047_cy[16])
  );
  XORCY   \Madd_n0047_xor<16>  (
    .CI(Madd_n0047_cy[15]),
    .LI(\Madd_n0047_cy<16>_rt_577 ),
    .O(n0047[16])
  );
  MUXCY   \Mcount_inst_cnt_cy<0>  (
    .CI(\uart_top_/uart_/tx_clk_divider[10] ),
    .DI(N0),
    .S(Mcount_inst_cnt_lut[0]),
    .O(Mcount_inst_cnt_cy[0])
  );
  XORCY   \Mcount_inst_cnt_xor<0>  (
    .CI(\uart_top_/uart_/tx_clk_divider[10] ),
    .LI(Mcount_inst_cnt_lut[0]),
    .O(Result[0])
  );
  MUXCY   \Mcount_inst_cnt_cy<1>  (
    .CI(Mcount_inst_cnt_cy[0]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Mcount_inst_cnt_cy<1>_rt_578 ),
    .O(Mcount_inst_cnt_cy[1])
  );
  XORCY   \Mcount_inst_cnt_xor<1>  (
    .CI(Mcount_inst_cnt_cy[0]),
    .LI(\Mcount_inst_cnt_cy<1>_rt_578 ),
    .O(Result[1])
  );
  MUXCY   \Mcount_inst_cnt_cy<2>  (
    .CI(Mcount_inst_cnt_cy[1]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Mcount_inst_cnt_cy<2>_rt_579 ),
    .O(Mcount_inst_cnt_cy[2])
  );
  XORCY   \Mcount_inst_cnt_xor<2>  (
    .CI(Mcount_inst_cnt_cy[1]),
    .LI(\Mcount_inst_cnt_cy<2>_rt_579 ),
    .O(Result[2])
  );
  MUXCY   \Mcount_inst_cnt_cy<3>  (
    .CI(Mcount_inst_cnt_cy[2]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Mcount_inst_cnt_cy<3>_rt_580 ),
    .O(Mcount_inst_cnt_cy[3])
  );
  XORCY   \Mcount_inst_cnt_xor<3>  (
    .CI(Mcount_inst_cnt_cy[2]),
    .LI(\Mcount_inst_cnt_cy<3>_rt_580 ),
    .O(Result[3])
  );
  MUXCY   \Mcount_inst_cnt_cy<4>  (
    .CI(Mcount_inst_cnt_cy[3]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Mcount_inst_cnt_cy<4>_rt_581 ),
    .O(Mcount_inst_cnt_cy[4])
  );
  XORCY   \Mcount_inst_cnt_xor<4>  (
    .CI(Mcount_inst_cnt_cy[3]),
    .LI(\Mcount_inst_cnt_cy<4>_rt_581 ),
    .O(Result[4])
  );
  MUXCY   \Mcount_inst_cnt_cy<5>  (
    .CI(Mcount_inst_cnt_cy[4]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Mcount_inst_cnt_cy<5>_rt_582 ),
    .O(Mcount_inst_cnt_cy[5])
  );
  XORCY   \Mcount_inst_cnt_xor<5>  (
    .CI(Mcount_inst_cnt_cy[4]),
    .LI(\Mcount_inst_cnt_cy<5>_rt_582 ),
    .O(Result[5])
  );
  MUXCY   \Mcount_inst_cnt_cy<6>  (
    .CI(Mcount_inst_cnt_cy[5]),
    .DI(\uart_top_/uart_/tx_clk_divider[10] ),
    .S(\Mcount_inst_cnt_cy<6>_rt_583 ),
    .O(Mcount_inst_cnt_cy[6])
  );
  XORCY   \Mcount_inst_cnt_xor<6>  (
    .CI(Mcount_inst_cnt_cy[5]),
    .LI(\Mcount_inst_cnt_cy<6>_rt_583 ),
    .O(Result[6])
  );
  XORCY   \Mcount_inst_cnt_xor<7>  (
    .CI(Mcount_inst_cnt_cy[6]),
    .LI(\Mcount_inst_cnt_xor<7>_rt_584 ),
    .O(Result[7])
  );
  FDE   \uart_top_/tx_data_15  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<15>_154 ),
    .Q(\uart_top_/tx_data [15])
  );
  FDE   \uart_top_/tx_data_14  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<14>_153 ),
    .Q(\uart_top_/tx_data [14])
  );
  FDE   \uart_top_/tx_data_13  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<13>_152 ),
    .Q(\uart_top_/tx_data [13])
  );
  FDE   \uart_top_/tx_data_12  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<12>_151 ),
    .Q(\uart_top_/tx_data [12])
  );
  FDE   \uart_top_/tx_data_11  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<11>_150 ),
    .Q(\uart_top_/tx_data [11])
  );
  FDE   \uart_top_/tx_data_10  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10> ),
    .Q(\uart_top_/tx_data [10])
  );
  FDE   \uart_top_/tx_data_9  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<9>_148 ),
    .Q(\uart_top_/tx_data [9])
  );
  FDE   \uart_top_/tx_data_8  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<8>_147 ),
    .Q(\uart_top_/tx_data [8])
  );
  FDE   \uart_top_/tx_data_7  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<7>_146 ),
    .Q(\uart_top_/tx_data [7])
  );
  FDE   \uart_top_/tx_data_6  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<6>_145 ),
    .Q(\uart_top_/tx_data [6])
  );
  FDE   \uart_top_/tx_data_5  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<5>_144 ),
    .Q(\uart_top_/tx_data [5])
  );
  FDE   \uart_top_/tx_data_4  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<4>_143 ),
    .Q(\uart_top_/tx_data [4])
  );
  FDE   \uart_top_/tx_data_3  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<3> ),
    .Q(\uart_top_/tx_data [3])
  );
  FDE   \uart_top_/tx_data_2  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<2> ),
    .Q(\uart_top_/tx_data [2])
  );
  FDE   \uart_top_/tx_data_1  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<1> ),
    .Q(\uart_top_/tx_data [1])
  );
  FDE   \uart_top_/tx_data_0  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/rst_inv ),
    .D(\uart_top_/state[2]_tx_data[15]_select_12_OUT<0> ),
    .Q(\uart_top_/tx_data [0])
  );
  FDR   \uart_top_/tfifo_rd_z  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/rd ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_rd_z_171 )
  );
  FDR   \uart_top_/state_2  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/state[2]_state[2]_select_11_OUT<2> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/state [2])
  );
  FDR   \uart_top_/state_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/state[2]_state[2]_select_11_OUT<1> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/state [1])
  );
  FDR   \uart_top_/state_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/state[2]_state[2]_select_11_OUT<0> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/state [0])
  );
  FDE   \uart_top_/uart_/tx_bits_remaining_3  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/Mcount_tx_bits_remaining3 ),
    .Q(\uart_top_/uart_/tx_bits_remaining [3])
  );
  FDE   \uart_top_/uart_/tx_bits_remaining_2  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/Mcount_tx_bits_remaining2 ),
    .Q(\uart_top_/uart_/tx_bits_remaining [2])
  );
  FDE   \uart_top_/uart_/tx_bits_remaining_1  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/Mcount_tx_bits_remaining1 ),
    .Q(\uart_top_/uart_/tx_bits_remaining [1])
  );
  FDE   \uart_top_/uart_/tx_bits_remaining_0  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/Mcount_tx_bits_remaining ),
    .Q(\uart_top_/uart_/tx_bits_remaining [0])
  );
  FD   \uart_top_/uart_/tx_countdown_5  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<5> ),
    .Q(\uart_top_/uart_/tx_countdown [5])
  );
  FD   \uart_top_/uart_/tx_countdown_4  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<4> ),
    .Q(\uart_top_/uart_/tx_countdown [4])
  );
  FD   \uart_top_/uart_/tx_countdown_3  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<3> ),
    .Q(\uart_top_/uart_/tx_countdown [3])
  );
  FD   \uart_top_/uart_/tx_countdown_2  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<2> ),
    .Q(\uart_top_/uart_/tx_countdown [2])
  );
  FD   \uart_top_/uart_/tx_countdown_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<1> ),
    .Q(\uart_top_/uart_/tx_countdown [1])
  );
  FD   \uart_top_/uart_/tx_countdown_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<0> ),
    .Q(\uart_top_/uart_/tx_countdown [0])
  );
  FD #(
    .INIT ( 1'b1 ))
  \uart_top_/uart_/tx_clk_divider_4  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<4> ),
    .Q(\uart_top_/uart_/tx_clk_divider[4] )
  );
  FD #(
    .INIT ( 1'b1 ))
  \uart_top_/uart_/tx_clk_divider_3  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<3> ),
    .Q(\uart_top_/uart_/tx_clk_divider[3] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_top_/uart_/tx_clk_divider_2  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<2> ),
    .Q(\uart_top_/uart_/tx_clk_divider[2] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_top_/uart_/tx_clk_divider_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<1> ),
    .Q(\uart_top_/uart_/tx_clk_divider[1] )
  );
  FD #(
    .INIT ( 1'b1 ))
  \uart_top_/uart_/tx_clk_divider_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<0> ),
    .Q(\uart_top_/uart_/tx_clk_divider[0] )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_top_/uart_/tx_state_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_state[1]_wide_mux_64_OUT<1> ),
    .Q(\uart_top_/uart_/tx_state [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_top_/uart_/tx_state_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_state[1]_tx_state[1]_wide_mux_64_OUT<0> ),
    .Q(\uart_top_/uart_/tx_state [0])
  );
  FDE   \uart_top_/uart_/tx_data_7  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [7]),
    .Q(\uart_top_/uart_/tx_data [7])
  );
  FDE   \uart_top_/uart_/tx_data_6  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [6]),
    .Q(\uart_top_/uart_/tx_data [6])
  );
  FDE   \uart_top_/uart_/tx_data_5  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [5]),
    .Q(\uart_top_/uart_/tx_data [5])
  );
  FDE   \uart_top_/uart_/tx_data_4  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [4]),
    .Q(\uart_top_/uart_/tx_data [4])
  );
  FDE   \uart_top_/uart_/tx_data_3  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [3]),
    .Q(\uart_top_/uart_/tx_data [3])
  );
  FDE   \uart_top_/uart_/tx_data_2  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [2]),
    .Q(\uart_top_/uart_/tx_data [2])
  );
  FDE   \uart_top_/uart_/tx_data_1  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [1]),
    .Q(\uart_top_/uart_/tx_data [1])
  );
  FDE   \uart_top_/uart_/tx_data_0  (
    .C(clk_BUFGP_10),
    .CE(\uart_top_/uart_/Mmux__n0232111 ),
    .D(\uart_top_/uart_/_n0243 [0]),
    .Q(\uart_top_/uart_/tx_data [0])
  );
  FDR   \uart_top_/tfifo_/rp_9  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [9]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [9])
  );
  FDR   \uart_top_/tfifo_/rp_8  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [8]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [8])
  );
  FDR   \uart_top_/tfifo_/rp_7  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [7]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [7])
  );
  FDR   \uart_top_/tfifo_/rp_6  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [6]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [6])
  );
  FDR   \uart_top_/tfifo_/rp_5  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [5]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [5])
  );
  FDR   \uart_top_/tfifo_/rp_4  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [4]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [4])
  );
  FDR   \uart_top_/tfifo_/rp_3  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [3]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [3])
  );
  FDR   \uart_top_/tfifo_/rp_2  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [2]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [2])
  );
  FDR   \uart_top_/tfifo_/rp_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result [1]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [1])
  );
  FDR   \uart_top_/tfifo_/rp_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Maccum_rp_lut [0]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/rp [0])
  );
  FDR   \uart_top_/tfifo_/wp_9  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<9>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [9])
  );
  FDR   \uart_top_/tfifo_/wp_8  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<8>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [8])
  );
  FDR   \uart_top_/tfifo_/wp_7  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<7>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [7])
  );
  FDR   \uart_top_/tfifo_/wp_6  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<6>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [6])
  );
  FDR   \uart_top_/tfifo_/wp_5  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<5>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [5])
  );
  FDR   \uart_top_/tfifo_/wp_4  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<4>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [4])
  );
  FDR   \uart_top_/tfifo_/wp_3  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<3>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [3])
  );
  FDR   \uart_top_/tfifo_/wp_2  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<2>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [2])
  );
  FDR   \uart_top_/tfifo_/wp_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Result<1>1 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [1])
  );
  FDR   \uart_top_/tfifo_/wp_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/Maccum_wp_lut [0]),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/wp [0])
  );
  FDS   \uart_top_/tfifo_/fifo_empty  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_GND_9_o_Select_12_o ),
    .S(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_empty_172 )
  );
  FDR   \uart_top_/tfifo_/fifo_full  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o_297 ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_full_173 )
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_9  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<9> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [9])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_8  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<8> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [8])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_7  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<7> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [7])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_6  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [6])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_5  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<5> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [5])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_4  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<4> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [4])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_3  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<3> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [3])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_2  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [2])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_1  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<1> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [1])
  );
  FDR   \uart_top_/tfifo_/fifo_cnt_0  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<0> ),
    .R(arst_ff[0]),
    .Q(\uart_top_/tfifo_/fifo_cnt [0])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<15>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [14]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [15]),
    .O(\seq_/alu_/add_data [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<15>  (
    .I0(seq_tx_data[15]),
    .I1(\seq_/rf_data_b [15]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [15])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<14>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [13]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [14]),
    .O(\seq_/alu_/add_data [14])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<14>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [13]),
    .DI(seq_tx_data[14]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [14]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<14>  (
    .I0(seq_tx_data[14]),
    .I1(\seq_/rf_data_b [14]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [14])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<13>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [12]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [13]),
    .O(\seq_/alu_/add_data [13])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<13>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [12]),
    .DI(seq_tx_data[13]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [13]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<13>  (
    .I0(seq_tx_data[13]),
    .I1(\seq_/rf_data_b [13]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [13])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<12>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [11]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [12]),
    .O(\seq_/alu_/add_data [12])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<12>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [11]),
    .DI(seq_tx_data[12]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [12]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<12>  (
    .I0(seq_tx_data[12]),
    .I1(\seq_/rf_data_b [12]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [12])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<11>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [10]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [11]),
    .O(\seq_/alu_/add_data [11])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<11>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [10]),
    .DI(seq_tx_data[11]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [11]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<11>  (
    .I0(seq_tx_data[11]),
    .I1(\seq_/rf_data_b [11]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [11])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<10>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [9]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [10]),
    .O(\seq_/alu_/add_data [10])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<10>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [9]),
    .DI(seq_tx_data[10]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [10]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<10>  (
    .I0(seq_tx_data[10]),
    .I1(\seq_/rf_data_b [10]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [10])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<9>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [8]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [9]),
    .O(\seq_/alu_/add_data [9])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<9>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [8]),
    .DI(seq_tx_data[9]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [9]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<9>  (
    .I0(seq_tx_data[9]),
    .I1(\seq_/rf_data_b [9]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [9])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<8>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [7]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [8]),
    .O(\seq_/alu_/add_data [8])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<8>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [7]),
    .DI(seq_tx_data[8]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [8]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<8>  (
    .I0(seq_tx_data[8]),
    .I1(\seq_/rf_data_b [8]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [8])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<7>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [6]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [7]),
    .O(\seq_/alu_/add_data [7])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<7>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [6]),
    .DI(seq_tx_data[7]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [7]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<7>  (
    .I0(seq_tx_data[7]),
    .I1(\seq_/rf_data_b [7]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [7])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<6>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [5]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [6]),
    .O(\seq_/alu_/add_data [6])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<6>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [5]),
    .DI(seq_tx_data[6]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [6]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<6>  (
    .I0(seq_tx_data[6]),
    .I1(\seq_/rf_data_b [6]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [6])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<5>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [4]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [5]),
    .O(\seq_/alu_/add_data [5])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<5>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [4]),
    .DI(seq_tx_data[5]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [5]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<5>  (
    .I0(\seq_/rf_data_b [5]),
    .I1(seq_tx_data[5]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [5])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<4>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [3]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [4]),
    .O(\seq_/alu_/add_data [4])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<4>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [3]),
    .DI(seq_tx_data[4]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [4]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<4>  (
    .I0(\seq_/rf_data_b [4]),
    .I1(seq_tx_data[4]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [4])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<3>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [2]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [3]),
    .O(\seq_/alu_/add_data [3])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<3>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [2]),
    .DI(seq_tx_data[3]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [3]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<3>  (
    .I0(\seq_/rf_data_b [3]),
    .I1(seq_tx_data[3]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [3])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<2>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [1]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [2]),
    .O(\seq_/alu_/add_data [2])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<2>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [1]),
    .DI(seq_tx_data[2]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [2]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<2>  (
    .I0(\seq_/rf_data_b [2]),
    .I1(seq_tx_data[2]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [2])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<1>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [0]),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [1]),
    .O(\seq_/alu_/add_data [1])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<1>  (
    .CI(\seq_/alu_/add_/Madd_o_data_cy [0]),
    .DI(seq_tx_data[1]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [1]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<1>  (
    .I0(\seq_/rf_data_b [1]),
    .I1(seq_tx_data[1]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [1])
  );
  XORCY   \seq_/alu_/add_/Madd_o_data_xor<0>  (
    .CI(\uart_top_/uart_/tx_clk_divider[10] ),
    .LI(\seq_/alu_/add_/Madd_o_data_lut [0]),
    .O(\seq_/alu_/add_data [0])
  );
  MUXCY   \seq_/alu_/add_/Madd_o_data_cy<0>  (
    .CI(\uart_top_/uart_/tx_clk_divider[10] ),
    .DI(seq_tx_data[0]),
    .S(\seq_/alu_/add_/Madd_o_data_lut [0]),
    .O(\seq_/alu_/add_/Madd_o_data_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \seq_/alu_/add_/Madd_o_data_lut<0>  (
    .I0(\seq_/rf_data_b [0]),
    .I1(seq_tx_data[0]),
    .O(\seq_/alu_/add_/Madd_o_data_lut [0])
  );
  DSP48A1 #(
    .CARRYINSEL ( "OPMODE5" ),
    .A0REG ( 0 ),
    .A1REG ( 0 ),
    .B0REG ( 0 ),
    .B1REG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .OPMODEREG ( 0 ),
    .CARRYINREG ( 0 ),
    .CARRYOUTREG ( 0 ),
    .RSTTYPE ( "SYNC" ),
    .DREG ( 0 ))
  \seq_/alu_/mult_/Mmult_n0002  (
    .CECARRYIN(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTC(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTCARRYIN(\uart_top_/uart_/tx_clk_divider[10] ),
    .CED(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTD(\uart_top_/uart_/tx_clk_divider[10] ),
    .CEOPMODE(\uart_top_/uart_/tx_clk_divider[10] ),
    .CEC(\uart_top_/uart_/tx_clk_divider[10] ),
    .CARRYOUTF(\NLW_seq_/alu_/mult_/Mmult_n0002_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTM(\uart_top_/uart_/tx_clk_divider[10] ),
    .CLK(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTB(\uart_top_/uart_/tx_clk_divider[10] ),
    .CEM(\uart_top_/uart_/tx_clk_divider[10] ),
    .CEB(\uart_top_/uart_/tx_clk_divider[10] ),
    .CARRYIN(\uart_top_/uart_/tx_clk_divider[10] ),
    .CEP(\uart_top_/uart_/tx_clk_divider[10] ),
    .CEA(\uart_top_/uart_/tx_clk_divider[10] ),
    .CARRYOUT(\NLW_seq_/alu_/mult_/Mmult_n0002_CARRYOUT_UNCONNECTED ),
    .RSTA(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTP(\uart_top_/uart_/tx_clk_divider[10] ),
    .B({\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , seq_tx_data[15], seq_tx_data[14], seq_tx_data[13], seq_tx_data[12]
, seq_tx_data[11], seq_tx_data[10], seq_tx_data[9], seq_tx_data[8], seq_tx_data[7], seq_tx_data[6], seq_tx_data[5], seq_tx_data[4], seq_tx_data[3], 
seq_tx_data[2], seq_tx_data[1], seq_tx_data[0]}),
    .BCOUT({\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<17>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<16>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<15>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<14>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<13>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<12>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<11>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<10>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<9>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<8>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<7>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<6>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<5>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<4>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<3>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<2>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<1>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_BCOUT<0>_UNCONNECTED }),
    .PCIN({\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<47>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<46>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<45>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<44>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<43>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<42>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<41>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<40>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<39>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<38>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<37>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<36>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<35>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<34>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<33>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<32>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<31>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<30>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<29>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<28>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<27>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<26>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<25>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<24>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<23>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<22>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<21>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<20>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<19>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<18>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<17>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<16>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<15>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<14>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<13>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<12>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<11>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<10>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<9>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<8>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<7>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<6>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<5>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<4>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<3>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<2>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<1>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCIN<0>_UNCONNECTED }),
    .C({\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] }),
    .P({\NLW_seq_/alu_/mult_/Mmult_n0002_P<47>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<46>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<45>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<44>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<43>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<42>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<41>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<40>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<39>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<38>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<37>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<36>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<35>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<34>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<33>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<32>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<31>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<30>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<29>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<28>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<27>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<26>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<25>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<24>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<23>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<22>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<21>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<20>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<19>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<18>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<17>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<16>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<15>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<14>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<13>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<12>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<11>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<10>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<9>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<8>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<7>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<6>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<5>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<4>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<3>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<2>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_P<1>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_P<0>_UNCONNECTED }),
    .OPMODE({\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, N0}),
    .D({\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] 
, \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/uart_/tx_clk_divider[10] }),
    .PCOUT({\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<47>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<46>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<45>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<44>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<43>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<42>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<41>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<40>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<39>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<38>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<37>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<36>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<35>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<34>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<33>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<32>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<31>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<30>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<29>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<28>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<27>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<26>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<25>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<24>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<23>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<22>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<21>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<20>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<19>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<18>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<17>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<16>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<15>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<14>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<13>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<12>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<11>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<10>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<9>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<8>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<7>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<6>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<5>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<4>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<3>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<2>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<1>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_PCOUT<0>_UNCONNECTED }),
    .A({\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] , \seq_/rf_data_b [15], \seq_/rf_data_b [14], \seq_/rf_data_b [13], 
\seq_/rf_data_b [12], \seq_/rf_data_b [11], \seq_/rf_data_b [10], \seq_/rf_data_b [9], \seq_/rf_data_b [8], \seq_/rf_data_b [7], \seq_/rf_data_b [6], 
\seq_/rf_data_b [5], \seq_/rf_data_b [4], \seq_/rf_data_b [3], \seq_/rf_data_b [2], \seq_/rf_data_b [1], \seq_/rf_data_b [0]}),
    .M({\NLW_seq_/alu_/mult_/Mmult_n0002_M<35>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<34>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<33>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<32>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<31>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<30>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<29>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<28>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<27>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<26>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<25>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<24>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<23>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<22>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<21>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<20>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<19>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<18>_UNCONNECTED , 
\NLW_seq_/alu_/mult_/Mmult_n0002_M<17>_UNCONNECTED , \NLW_seq_/alu_/mult_/Mmult_n0002_M<16>_UNCONNECTED , \seq_/alu_/mult_data [15], 
\seq_/alu_/mult_data [14], \seq_/alu_/mult_data [13], \seq_/alu_/mult_data [12], \seq_/alu_/mult_data [11], \seq_/alu_/mult_data [10], 
\seq_/alu_/mult_data [9], \seq_/alu_/mult_data [8], \seq_/alu_/mult_data [7], \seq_/alu_/mult_data [6], \seq_/alu_/mult_data [5], 
\seq_/alu_/mult_data [4], \seq_/alu_/mult_data [3], \seq_/alu_/mult_data [2], \seq_/alu_/mult_data [1], \seq_/alu_/mult_data [0]})
  );
  FDRE   \seq_/rf_/rf_3_63  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<15> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [63])
  );
  FDRE   \seq_/rf_/rf_3_62  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<14> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [62])
  );
  FDRE   \seq_/rf_/rf_3_61  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<13> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [61])
  );
  FDRE   \seq_/rf_/rf_3_60  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<12> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [60])
  );
  FDRE   \seq_/rf_/rf_3_59  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<11> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [59])
  );
  FDRE   \seq_/rf_/rf_3_58  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<10> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [58])
  );
  FDRE   \seq_/rf_/rf_3_57  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<9> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [57])
  );
  FDRE   \seq_/rf_/rf_3_56  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<8> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [56])
  );
  FDRE   \seq_/rf_/rf_3_55  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<7> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [55])
  );
  FDRE   \seq_/rf_/rf_3_54  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<6> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [54])
  );
  FDRE   \seq_/rf_/rf_3_53  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<5> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [53])
  );
  FDRE   \seq_/rf_/rf_3_52  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<4> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [52])
  );
  FDRE   \seq_/rf_/rf_3_51  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<3> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [51])
  );
  FDRE   \seq_/rf_/rf_3_50  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<2> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [50])
  );
  FDRE   \seq_/rf_/rf_3_49  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<1> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [49])
  );
  FDRE   \seq_/rf_/rf_3_48  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<0> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [48])
  );
  FDRE   \seq_/rf_/rf_3_47  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<15> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [47])
  );
  FDRE   \seq_/rf_/rf_3_46  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<14> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [46])
  );
  FDRE   \seq_/rf_/rf_3_45  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<13> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [45])
  );
  FDRE   \seq_/rf_/rf_3_44  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<12> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [44])
  );
  FDRE   \seq_/rf_/rf_3_43  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<11> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [43])
  );
  FDRE   \seq_/rf_/rf_3_42  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<10> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [42])
  );
  FDRE   \seq_/rf_/rf_3_41  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<9> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [41])
  );
  FDRE   \seq_/rf_/rf_3_40  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<8> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [40])
  );
  FDRE   \seq_/rf_/rf_3_39  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<7> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [39])
  );
  FDRE   \seq_/rf_/rf_3_38  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<6> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [38])
  );
  FDRE   \seq_/rf_/rf_3_37  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<5> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [37])
  );
  FDRE   \seq_/rf_/rf_3_36  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<4> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [36])
  );
  FDRE   \seq_/rf_/rf_3_35  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<3> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [35])
  );
  FDRE   \seq_/rf_/rf_3_34  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<2> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [34])
  );
  FDRE   \seq_/rf_/rf_3_33  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<1> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [33])
  );
  FDRE   \seq_/rf_/rf_3_32  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<0> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [32])
  );
  FDRE   \seq_/rf_/rf_3_31  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<15> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [31])
  );
  FDRE   \seq_/rf_/rf_3_30  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<14> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [30])
  );
  FDRE   \seq_/rf_/rf_3_29  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<13> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [29])
  );
  FDRE   \seq_/rf_/rf_3_28  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<12> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [28])
  );
  FDRE   \seq_/rf_/rf_3_27  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<11> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [27])
  );
  FDRE   \seq_/rf_/rf_3_26  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<10> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [26])
  );
  FDRE   \seq_/rf_/rf_3_25  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<9> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [25])
  );
  FDRE   \seq_/rf_/rf_3_24  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<8> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [24])
  );
  FDRE   \seq_/rf_/rf_3_23  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<7> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [23])
  );
  FDRE   \seq_/rf_/rf_3_22  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<6> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [22])
  );
  FDRE   \seq_/rf_/rf_3_21  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<5> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [21])
  );
  FDRE   \seq_/rf_/rf_3_20  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<4> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [20])
  );
  FDRE   \seq_/rf_/rf_3_19  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<3> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [19])
  );
  FDRE   \seq_/rf_/rf_3_18  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<2> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [18])
  );
  FDRE   \seq_/rf_/rf_3_17  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<1> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [17])
  );
  FDRE   \seq_/rf_/rf_3_16  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<0> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [16])
  );
  FDRE   \seq_/rf_/rf_3_15  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<15> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [15])
  );
  FDRE   \seq_/rf_/rf_3_14  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<14> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [14])
  );
  FDRE   \seq_/rf_/rf_3_13  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<13> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [13])
  );
  FDRE   \seq_/rf_/rf_3_12  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<12> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [12])
  );
  FDRE   \seq_/rf_/rf_3_11  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<11> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [11])
  );
  FDRE   \seq_/rf_/rf_3_10  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<10> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [10])
  );
  FDRE   \seq_/rf_/rf_3_9  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<9> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [9])
  );
  FDRE   \seq_/rf_/rf_3_8  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<8> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [8])
  );
  FDRE   \seq_/rf_/rf_3_7  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<7> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [7])
  );
  FDRE   \seq_/rf_/rf_3_6  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<6> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [6])
  );
  FDRE   \seq_/rf_/rf_3_5  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<5> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [5])
  );
  FDRE   \seq_/rf_/rf_3_4  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<4> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [4])
  );
  FDRE   \seq_/rf_/rf_3_3  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<3> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [3])
  );
  FDRE   \seq_/rf_/rf_3_2  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<2> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [2])
  );
  FDRE   \seq_/rf_/rf_3_1  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<1> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [1])
  );
  FDRE   \seq_/rf_/rf_3_0  (
    .C(clk_BUFGP_10),
    .CE(\seq_/alu_valid_in ),
    .D(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<0> ),
    .R(arst_ff[0]),
    .Q(\seq_/rf_/rf_3 [0])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \step_d[0]_clk_en_d_AND_2_o1  (
    .I0(clk_en_d_39),
    .I1(step_d[1]),
    .I2(step_d[0]),
    .O(\step_d[0]_clk_en_d_AND_2_o )
  );
  LUT6 #(
    .INIT ( 64'h00D700D700D7D7D7 ))
  \uart_top_/tfifo_in<4>1  (
    .I0(\uart_top_/state [2]),
    .I1(\uart_top_/state [0]),
    .I2(\uart_top_/state [1]),
    .I3(\uart_top_/tx_data [15]),
    .I4(\uart_top_/tx_data [13]),
    .I5(\uart_top_/tx_data [14]),
    .O(\uart_top_/tfifo_in[4] )
  );
  LUT6 #(
    .INIT ( 64'hD700D700D7000000 ))
  \uart_top_/_n0078<6>1  (
    .I0(\uart_top_/state [2]),
    .I1(\uart_top_/state [0]),
    .I2(\uart_top_/state [1]),
    .I3(\uart_top_/tx_data [15]),
    .I4(\uart_top_/tx_data [13]),
    .I5(\uart_top_/tx_data [14]),
    .O(\uart_top_/tfifo_in[6] )
  );
  LUT5 #(
    .INIT ( 32'hAAE8AAEB ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<10>11  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/state [2]),
    .I2(\uart_top_/state [1]),
    .I3(\uart_top_/state [0]),
    .I4(seq_tx_valid),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 )
  );
  LUT6 #(
    .INIT ( 64'h282828FF28282828 ))
  \uart_top_/tfifo_in<5>1  (
    .I0(\uart_top_/state [2]),
    .I1(\uart_top_/state [0]),
    .I2(\uart_top_/state [1]),
    .I3(\uart_top_/tx_data [13]),
    .I4(\uart_top_/tx_data [14]),
    .I5(\uart_top_/tx_data [15]),
    .O(\uart_top_/tfifo_in[3] )
  );
  LUT4 #(
    .INIT ( 16'hA6A2 ))
  \uart_top_/state[2]_state[2]_select_11_OUT<2>11  (
    .I0(\uart_top_/state [2]),
    .I1(\uart_top_/state [1]),
    .I2(\uart_top_/tfifo_/fifo_full_173 ),
    .I3(\uart_top_/state [0]),
    .O(\uart_top_/state[2]_state[2]_select_11_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h899D8998 ))
  \uart_top_/state[2]_state[2]_select_11_OUT<0>11  (
    .I0(\uart_top_/state [0]),
    .I1(\uart_top_/tfifo_/fifo_full_173 ),
    .I2(\uart_top_/state [2]),
    .I3(\uart_top_/state [1]),
    .I4(seq_tx_valid),
    .O(\uart_top_/state[2]_state[2]_select_11_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \uart_top_/n0000<2>1  (
    .I0(\uart_top_/state [2]),
    .I1(\uart_top_/state [1]),
    .I2(\uart_top_/state [0]),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 )
  );
  LUT5 #(
    .INIT ( 32'hF8888888 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<2>1  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 ),
    .I1(\uart_top_/tx_data [2]),
    .I2(seq_tx_data[2]),
    .I3(seq_tx_valid),
    .I4(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hF8888888 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<3>1  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 ),
    .I1(\uart_top_/tx_data [3]),
    .I2(seq_tx_data[3]),
    .I3(seq_tx_valid),
    .I4(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hF8888888 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<1>1  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 ),
    .I1(\uart_top_/tx_data [1]),
    .I2(seq_tx_data[1]),
    .I3(seq_tx_valid),
    .I4(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hF8888888 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<0>1  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 ),
    .I1(\uart_top_/tx_data [0]),
    .I2(seq_tx_data[0]),
    .I3(seq_tx_valid),
    .I4(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \uart_top_/tfifo_in<7>21  (
    .I0(\uart_top_/state [0]),
    .I1(\uart_top_/state [2]),
    .I2(\uart_top_/state [1]),
    .O(\uart_top_/tfifo_in<7>2 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \uart_top_/tfifo_in<8>11  (
    .I0(\uart_top_/state [1]),
    .I1(\uart_top_/state [2]),
    .I2(\uart_top_/state [0]),
    .O(\uart_top_/tfifo_in<8>1 )
  );
  LUT6 #(
    .INIT ( 64'h88808888FFFFFFFF ))
  \uart_top_/tfifo_in<6>1  (
    .I0(\uart_top_/tx_data [14]),
    .I1(\uart_top_/tfifo_in<8>1 ),
    .I2(\uart_top_/tx_data [13]),
    .I3(\uart_top_/tx_data [12]),
    .I4(\uart_top_/tx_data [15]),
    .I5(\uart_top_/tfifo_in<7>2 ),
    .O(\uart_top_/tfifo_in[2] )
  );
  LUT6 #(
    .INIT ( 64'h82888088FFFFFFFF ))
  \uart_top_/tfifo_in<7>1  (
    .I0(\uart_top_/tfifo_in<7>2 ),
    .I1(\uart_top_/tx_data [13]),
    .I2(\uart_top_/tx_data [12]),
    .I3(\uart_top_/tx_data [15]),
    .I4(\uart_top_/tx_data [14]),
    .I5(\uart_top_/tfifo_in<8>1 ),
    .O(\uart_top_/tfifo_in[1] )
  );
  LUT4 #(
    .INIT ( 16'h989A ))
  \uart_top_/state[2]_state[2]_select_11_OUT<1>1  (
    .I0(\uart_top_/state [1]),
    .I1(\uart_top_/tfifo_/fifo_full_173 ),
    .I2(\uart_top_/state [0]),
    .I3(\uart_top_/state [2]),
    .O(\uart_top_/state[2]_state[2]_select_11_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \uart_top_/tfifo_rd1  (
    .I0(\uart_top_/tfifo_/fifo_empty_172 ),
    .I1(\uart_top_/tfifo_rd_z_171 ),
    .I2(\uart_top_/uart_/tx_state [1]),
    .I3(\uart_top_/uart_/tx_state [0]),
    .O(\uart_top_/tfifo_/rd )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA9FFFF ))
  \uart_top_/uart_/Mcount_tx_bits_remaining_xor<3>11  (
    .I0(\uart_top_/uart_/tx_bits_remaining [3]),
    .I1(\uart_top_/uart_/tx_bits_remaining [2]),
    .I2(\uart_top_/uart_/tx_bits_remaining [0]),
    .I3(\uart_top_/uart_/tx_bits_remaining [1]),
    .I4(\uart_top_/uart_/tx_state [0]),
    .I5(arst_ff[0]),
    .O(\uart_top_/uart_/Mcount_tx_bits_remaining3 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \uart_top_/uart_/Mmux__n023211121  (
    .I0(\uart_top_/uart_/tx_bits_remaining [2]),
    .I1(\uart_top_/uart_/tx_bits_remaining [0]),
    .I2(\uart_top_/uart_/tx_bits_remaining [1]),
    .I3(\uart_top_/uart_/tx_bits_remaining [3]),
    .O(\uart_top_/uart_/Mmux__n02321112_185 )
  );
  LUT4 #(
    .INIT ( 16'h4441 ))
  \uart_top_/uart_/Mmux__n02321131  (
    .I0(\uart_top_/uart_/Mmux__n02321113_184 ),
    .I1(\uart_top_/uart_/tx_countdown [4]),
    .I2(\uart_top_/uart_/Mmux__n02321115 ),
    .I3(\uart_top_/uart_/tx_countdown [3]),
    .O(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'h44444441 ))
  \uart_top_/uart_/Mmux__n02321141  (
    .I0(\uart_top_/uart_/Mmux__n02321113_184 ),
    .I1(\uart_top_/uart_/tx_countdown [5]),
    .I2(\uart_top_/uart_/Mmux__n02321115 ),
    .I3(\uart_top_/uart_/tx_countdown [3]),
    .I4(\uart_top_/uart_/tx_countdown [4]),
    .O(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \uart_top_/uart_/Mmux__n0232181  (
    .I0(\uart_top_/tfifo_out [7]),
    .I1(\uart_top_/uart_/tx_state [0]),
    .I2(arst_ff[0]),
    .O(\uart_top_/uart_/_n0243 [7])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \uart_top_/uart_/GND_10_o_reduce_nor_15_o521  (
    .I0(\uart_top_/uart_/tx_clk_divider[4] ),
    .I1(\uart_top_/uart_/tx_clk_divider[1] ),
    .I2(\uart_top_/uart_/tx_clk_divider[2] ),
    .I3(\uart_top_/uart_/tx_clk_divider[3] ),
    .O(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 )
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232113  (
    .I0(\uart_top_/tfifo_out [0]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [1]),
    .O(\uart_top_/uart_/_n0243 [0])
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232121  (
    .I0(\uart_top_/tfifo_out [1]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [2]),
    .O(\uart_top_/uart_/_n0243 [1])
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232141  (
    .I0(\uart_top_/tfifo_out [3]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [4]),
    .O(\uart_top_/uart_/_n0243 [3])
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232131  (
    .I0(\uart_top_/tfifo_out [2]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [3]),
    .O(\uart_top_/uart_/_n0243 [2])
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232151  (
    .I0(\uart_top_/tfifo_out [4]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [5]),
    .O(\uart_top_/uart_/_n0243 [4])
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232171  (
    .I0(\uart_top_/tfifo_out [6]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [7]),
    .O(\uart_top_/uart_/_n0243 [6])
  );
  LUT4 #(
    .INIT ( 16'hBA8A ))
  \uart_top_/uart_/Mmux__n0232161  (
    .I0(\uart_top_/tfifo_out [5]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_data [6]),
    .O(\uart_top_/uart_/_n0243 [5])
  );
  LUT4 #(
    .INIT ( 16'hAA02 ))
  \uart_top_/uart_/Mmux__n023211131  (
    .I0(\uart_top_/tfifo_rd_z_171 ),
    .I1(\uart_top_/uart_/tx_state [0]),
    .I2(\uart_top_/uart_/tx_state [1]),
    .I3(arst_ff[0]),
    .O(\uart_top_/uart_/Mmux__n02321113_184 )
  );
  LUT4 #(
    .INIT ( 16'h4004 ))
  \uart_top_/uart_/Mcount_tx_bits_remaining_xor<1>11  (
    .I0(arst_ff[0]),
    .I1(\uart_top_/uart_/tx_state [0]),
    .I2(\uart_top_/uart_/tx_bits_remaining [0]),
    .I3(\uart_top_/uart_/tx_bits_remaining [1]),
    .O(\uart_top_/uart_/Mcount_tx_bits_remaining1 )
  );
  LUT5 #(
    .INIT ( 32'h44404450 ))
  \uart_top_/uart_/Mmux__n02321161  (
    .I0(arst_ff[0]),
    .I1(\uart_top_/uart_/tx_state [1]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/n0056_194 ),
    .I4(\uart_top_/uart_/Mmux__n02321112_185 ),
    .O(\uart_top_/uart_/tx_state[1]_tx_state[1]_wide_mux_64_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h4441 ))
  \uart_top_/uart_/Mmux_tx_state[1]_GND_10_o_wide_mux_69_OUT41  (
    .I0(\uart_top_/uart_/Mmux__n02321113_184 ),
    .I1(\uart_top_/uart_/tx_clk_divider[2] ),
    .I2(\uart_top_/uart_/tx_clk_divider[0] ),
    .I3(\uart_top_/uart_/tx_clk_divider[1] ),
    .O(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h40404004 ))
  \uart_top_/uart_/Mcount_tx_bits_remaining_xor<2>11  (
    .I0(arst_ff[0]),
    .I1(\uart_top_/uart_/tx_state [0]),
    .I2(\uart_top_/uart_/tx_bits_remaining [2]),
    .I3(\uart_top_/uart_/tx_bits_remaining [0]),
    .I4(\uart_top_/uart_/tx_bits_remaining [1]),
    .O(\uart_top_/uart_/Mcount_tx_bits_remaining2 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \uart_top_/uart_/GND_10_o_reduce_nor_15_o611  (
    .I0(\uart_top_/uart_/tx_clk_divider[4] ),
    .I1(\uart_top_/uart_/tx_clk_divider[3] ),
    .I2(\uart_top_/uart_/tx_clk_divider[2] ),
    .I3(\uart_top_/uart_/tx_clk_divider[1] ),
    .I4(\uart_top_/uart_/tx_clk_divider[0] ),
    .O(\uart_top_/uart_/GND_10_o_reduce_nor_15_o61 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \uart_top_/uart_/Mcount_tx_bits_remaining_xor<0>11  (
    .I0(\uart_top_/uart_/tx_bits_remaining [0]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .O(\uart_top_/uart_/Mcount_tx_bits_remaining )
  );
  LUT6 #(
    .INIT ( 64'h9AAAAAAAAAAAAAAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<6>11  (
    .I0(\uart_top_/tfifo_/wp [6]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/wp [3]),
    .I3(\uart_top_/tfifo_/wp [4]),
    .I4(\uart_top_/tfifo_/wp [5]),
    .I5(\uart_top_/tfifo_/wp [2]),
    .O(\uart_top_/tfifo_/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'h9AAAAAAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<5>11  (
    .I0(\uart_top_/tfifo_/wp [5]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/wp [3]),
    .I3(\uart_top_/tfifo_/wp [4]),
    .I4(\uart_top_/tfifo_/wp [2]),
    .O(\uart_top_/tfifo_/Result<5>1 )
  );
  LUT6 #(
    .INIT ( 64'hDFFFFFFFFFFFFFFF ))
  \uart_top_/tfifo_/Maccum_wp_xor<7>111  (
    .I0(\uart_top_/tfifo_/wp [5]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/wp [3]),
    .I3(\uart_top_/tfifo_/wp [2]),
    .I4(\uart_top_/tfifo_/wp [4]),
    .I5(\uart_top_/tfifo_/wp [6]),
    .O(\uart_top_/tfifo_/Maccum_wp_xor<7>11_244 )
  );
  LUT6 #(
    .INIT ( 64'h9AAAAAAAAAAAAAAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<6>11  (
    .I0(\uart_top_/tfifo_/rp [6]),
    .I1(\uart_top_/tfifo_/Maccum_rp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/rp [3]),
    .I3(\uart_top_/tfifo_/rp [4]),
    .I4(\uart_top_/tfifo_/rp [5]),
    .I5(\uart_top_/tfifo_/rp [2]),
    .O(\uart_top_/tfifo_/Result [6])
  );
  LUT5 #(
    .INIT ( 32'h9AAAAAAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<5>11  (
    .I0(\uart_top_/tfifo_/rp [5]),
    .I1(\uart_top_/tfifo_/Maccum_rp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/rp [3]),
    .I3(\uart_top_/tfifo_/rp [4]),
    .I4(\uart_top_/tfifo_/rp [2]),
    .O(\uart_top_/tfifo_/Result [5])
  );
  LUT6 #(
    .INIT ( 64'hDFFFFFFFFFFFFFFF ))
  \uart_top_/tfifo_/Maccum_rp_xor<7>111  (
    .I0(\uart_top_/tfifo_/rp [5]),
    .I1(\uart_top_/tfifo_/Maccum_rp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/rp [3]),
    .I3(\uart_top_/tfifo_/rp [2]),
    .I4(\uart_top_/tfifo_/rp [4]),
    .I5(\uart_top_/tfifo_/rp [6]),
    .O(\uart_top_/tfifo_/Maccum_rp_xor<7>11_245 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA9AAAAAA6 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<9>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [9]),
    .I1(\uart_top_/tfifo_/rd ),
    .I2(\uart_top_/tfifo_/fifo_cnt [8]),
    .I3(\uart_top_/tfifo_/fifo_cnt [7]),
    .I4(\uart_top_/tfifo_/fifo_cnt [6]),
    .I5(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>1_246 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<9> )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<4>11  (
    .I0(\uart_top_/tfifo_/wp [4]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<2>11 ),
    .I2(\uart_top_/tfifo_/wp [3]),
    .I3(\uart_top_/tfifo_/wp [2]),
    .O(\uart_top_/tfifo_/Result<4>1 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \uart_top_/tfifo_/Maccum_wp_xor<8>11  (
    .I0(\uart_top_/tfifo_/wp [8]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<7>11_244 ),
    .I2(\uart_top_/tfifo_/wp [7]),
    .O(\uart_top_/tfifo_/Result<8>1 )
  );
  LUT3 #(
    .INIT ( 8'h9A ))
  \uart_top_/tfifo_/Maccum_rp_xor<8>11  (
    .I0(\uart_top_/tfifo_/rp [8]),
    .I1(\uart_top_/tfifo_/Maccum_rp_xor<7>11_245 ),
    .I2(\uart_top_/tfifo_/rp [7]),
    .O(\uart_top_/tfifo_/Result [8])
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<9>11  (
    .I0(\uart_top_/tfifo_/wp [9]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<7>11_244 ),
    .I2(\uart_top_/tfifo_/wp [8]),
    .I3(\uart_top_/tfifo_/wp [7]),
    .O(\uart_top_/tfifo_/Result<9>1 )
  );
  LUT4 #(
    .INIT ( 16'h9AAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<9>11  (
    .I0(\uart_top_/tfifo_/rp [9]),
    .I1(\uart_top_/tfifo_/Maccum_rp_xor<7>11_245 ),
    .I2(\uart_top_/tfifo_/rp [8]),
    .I3(\uart_top_/tfifo_/rp [7]),
    .O(\uart_top_/tfifo_/Result [9])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_top_/tfifo_/wr_GND_9_o_Select_11_o21  (
    .I0(\uart_top_/tfifo_/fifo_cnt [2]),
    .I1(\uart_top_/tfifo_/fifo_cnt [1]),
    .I2(\uart_top_/tfifo_/fifo_cnt [3]),
    .I3(\uart_top_/tfifo_/fifo_cnt [4]),
    .O(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o2 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \uart_top_/tfifo_/Maccum_wp_xor<7>11  (
    .I0(\uart_top_/tfifo_/wp [7]),
    .I1(\uart_top_/tfifo_/Maccum_wp_xor<7>11_244 ),
    .O(\uart_top_/tfifo_/Result<7>1 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \uart_top_/tfifo_/Maccum_rp_xor<7>11  (
    .I0(\uart_top_/tfifo_/rp [7]),
    .I1(\uart_top_/tfifo_/Maccum_rp_xor<7>11_245 ),
    .O(\uart_top_/tfifo_/Result [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [2]),
    .I1(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>1_247 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'h2A ))
  \seq_/alu_valid_in1  (
    .I0(inst_vld_40),
    .I1(inst_wd[6]),
    .I2(inst_wd[7]),
    .O(\seq_/alu_valid_in )
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  \seq_/Mmux_rf_wsel11  (
    .I0(inst_wd[0]),
    .I1(inst_wd[6]),
    .I2(inst_wd[7]),
    .I3(inst_wd[4]),
    .O(\seq_/rf_wsel [0])
  );
  LUT4 #(
    .INIT ( 16'hABA8 ))
  \seq_/Mmux_rf_wsel21  (
    .I0(inst_wd[1]),
    .I1(inst_wd[6]),
    .I2(inst_wd[7]),
    .I3(inst_wd[5]),
    .O(\seq_/rf_wsel [1])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b91  (
    .I0(\seq_/rf_/rf_3 [18]),
    .I1(\seq_/rf_/rf_3 [50]),
    .I2(\seq_/rf_/rf_3 [34]),
    .I3(\seq_/rf_/rf_3 [2]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [2])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b81  (
    .I0(\seq_/rf_/rf_3 [17]),
    .I1(\seq_/rf_/rf_3 [49]),
    .I2(\seq_/rf_/rf_3 [33]),
    .I3(\seq_/rf_/rf_3 [1]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [1])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b71  (
    .I0(\seq_/rf_/rf_3 [31]),
    .I1(\seq_/rf_/rf_3 [63]),
    .I2(\seq_/rf_/rf_3 [47]),
    .I3(\seq_/rf_/rf_3 [15]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [15])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b61  (
    .I0(\seq_/rf_/rf_3 [30]),
    .I1(\seq_/rf_/rf_3 [62]),
    .I2(\seq_/rf_/rf_3 [46]),
    .I3(\seq_/rf_/rf_3 [14]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [14])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b51  (
    .I0(\seq_/rf_/rf_3 [29]),
    .I1(\seq_/rf_/rf_3 [61]),
    .I2(\seq_/rf_/rf_3 [45]),
    .I3(\seq_/rf_/rf_3 [13]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [13])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b41  (
    .I0(\seq_/rf_/rf_3 [28]),
    .I1(\seq_/rf_/rf_3 [60]),
    .I2(\seq_/rf_/rf_3 [44]),
    .I3(\seq_/rf_/rf_3 [12]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [12])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b31  (
    .I0(\seq_/rf_/rf_3 [27]),
    .I1(\seq_/rf_/rf_3 [59]),
    .I2(\seq_/rf_/rf_3 [43]),
    .I3(\seq_/rf_/rf_3 [11]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [11])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b21  (
    .I0(\seq_/rf_/rf_3 [26]),
    .I1(\seq_/rf_/rf_3 [58]),
    .I2(\seq_/rf_/rf_3 [42]),
    .I3(\seq_/rf_/rf_3 [10]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [10])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b161  (
    .I0(\seq_/rf_/rf_3 [25]),
    .I1(\seq_/rf_/rf_3 [57]),
    .I2(\seq_/rf_/rf_3 [41]),
    .I3(\seq_/rf_/rf_3 [9]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [9])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b151  (
    .I0(\seq_/rf_/rf_3 [24]),
    .I1(\seq_/rf_/rf_3 [56]),
    .I2(\seq_/rf_/rf_3 [40]),
    .I3(\seq_/rf_/rf_3 [8]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [8])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b141  (
    .I0(\seq_/rf_/rf_3 [23]),
    .I1(\seq_/rf_/rf_3 [55]),
    .I2(\seq_/rf_/rf_3 [39]),
    .I3(\seq_/rf_/rf_3 [7]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [7])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b131  (
    .I0(\seq_/rf_/rf_3 [22]),
    .I1(\seq_/rf_/rf_3 [54]),
    .I2(\seq_/rf_/rf_3 [38]),
    .I3(\seq_/rf_/rf_3 [6]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [6])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b121  (
    .I0(\seq_/rf_/rf_3 [21]),
    .I1(\seq_/rf_/rf_3 [53]),
    .I2(\seq_/rf_/rf_3 [37]),
    .I3(\seq_/rf_/rf_3 [5]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [5])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b111  (
    .I0(\seq_/rf_/rf_3 [20]),
    .I1(\seq_/rf_/rf_3 [52]),
    .I2(\seq_/rf_/rf_3 [36]),
    .I3(\seq_/rf_/rf_3 [4]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [4])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b101  (
    .I0(\seq_/rf_/rf_3 [19]),
    .I1(\seq_/rf_/rf_3 [51]),
    .I2(\seq_/rf_/rf_3 [35]),
    .I3(\seq_/rf_/rf_3 [3]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [3])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_b11  (
    .I0(\seq_/rf_/rf_3 [16]),
    .I1(\seq_/rf_/rf_3 [48]),
    .I2(\seq_/rf_/rf_3 [32]),
    .I3(\seq_/rf_/rf_3 [0]),
    .I4(inst_wd[3]),
    .I5(inst_wd[2]),
    .O(\seq_/rf_data_b [0])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a91  (
    .I0(\seq_/rf_/rf_3 [18]),
    .I1(\seq_/rf_/rf_3 [50]),
    .I2(\seq_/rf_/rf_3 [34]),
    .I3(\seq_/rf_/rf_3 [2]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[2])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a81  (
    .I0(\seq_/rf_/rf_3 [17]),
    .I1(\seq_/rf_/rf_3 [49]),
    .I2(\seq_/rf_/rf_3 [33]),
    .I3(\seq_/rf_/rf_3 [1]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[1])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a71  (
    .I0(\seq_/rf_/rf_3 [31]),
    .I1(\seq_/rf_/rf_3 [63]),
    .I2(\seq_/rf_/rf_3 [47]),
    .I3(\seq_/rf_/rf_3 [15]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[15])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a61  (
    .I0(\seq_/rf_/rf_3 [30]),
    .I1(\seq_/rf_/rf_3 [62]),
    .I2(\seq_/rf_/rf_3 [46]),
    .I3(\seq_/rf_/rf_3 [14]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[14])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a51  (
    .I0(\seq_/rf_/rf_3 [29]),
    .I1(\seq_/rf_/rf_3 [61]),
    .I2(\seq_/rf_/rf_3 [45]),
    .I3(\seq_/rf_/rf_3 [13]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[13])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a41  (
    .I0(\seq_/rf_/rf_3 [28]),
    .I1(\seq_/rf_/rf_3 [60]),
    .I2(\seq_/rf_/rf_3 [44]),
    .I3(\seq_/rf_/rf_3 [12]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[12])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a31  (
    .I0(\seq_/rf_/rf_3 [27]),
    .I1(\seq_/rf_/rf_3 [59]),
    .I2(\seq_/rf_/rf_3 [43]),
    .I3(\seq_/rf_/rf_3 [11]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[11])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a21  (
    .I0(\seq_/rf_/rf_3 [26]),
    .I1(\seq_/rf_/rf_3 [58]),
    .I2(\seq_/rf_/rf_3 [42]),
    .I3(\seq_/rf_/rf_3 [10]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[10])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a161  (
    .I0(\seq_/rf_/rf_3 [25]),
    .I1(\seq_/rf_/rf_3 [57]),
    .I2(\seq_/rf_/rf_3 [41]),
    .I3(\seq_/rf_/rf_3 [9]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[9])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a151  (
    .I0(\seq_/rf_/rf_3 [24]),
    .I1(\seq_/rf_/rf_3 [56]),
    .I2(\seq_/rf_/rf_3 [40]),
    .I3(\seq_/rf_/rf_3 [8]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[8])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a141  (
    .I0(\seq_/rf_/rf_3 [23]),
    .I1(\seq_/rf_/rf_3 [55]),
    .I2(\seq_/rf_/rf_3 [39]),
    .I3(\seq_/rf_/rf_3 [7]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[7])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a131  (
    .I0(\seq_/rf_/rf_3 [22]),
    .I1(\seq_/rf_/rf_3 [54]),
    .I2(\seq_/rf_/rf_3 [38]),
    .I3(\seq_/rf_/rf_3 [6]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[6])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a121  (
    .I0(\seq_/rf_/rf_3 [21]),
    .I1(\seq_/rf_/rf_3 [53]),
    .I2(\seq_/rf_/rf_3 [37]),
    .I3(\seq_/rf_/rf_3 [5]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[5])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a111  (
    .I0(\seq_/rf_/rf_3 [20]),
    .I1(\seq_/rf_/rf_3 [52]),
    .I2(\seq_/rf_/rf_3 [36]),
    .I3(\seq_/rf_/rf_3 [4]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[4])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a101  (
    .I0(\seq_/rf_/rf_3 [19]),
    .I1(\seq_/rf_/rf_3 [51]),
    .I2(\seq_/rf_/rf_3 [35]),
    .I3(\seq_/rf_/rf_3 [3]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[3])
  );
  LUT6 #(
    .INIT ( 64'hFF00F0F0AAAACCCC ))
  \seq_/rf_/Mmux_o_data_a11  (
    .I0(\seq_/rf_/rf_3 [16]),
    .I1(\seq_/rf_/rf_3 [48]),
    .I2(\seq_/rf_/rf_3 [32]),
    .I3(\seq_/rf_/rf_3 [0]),
    .I4(inst_wd[5]),
    .I5(inst_wd[4]),
    .O(seq_tx_data[0])
  );
  LUT5 #(
    .INIT ( 32'h40444440 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [6]),
    .I2(\uart_top_/state [0]),
    .I3(\uart_top_/state [1]),
    .I4(\uart_top_/state [2]),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>2 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFF80FF80FF80 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3  (
    .I0(seq_tx_valid),
    .I1(seq_tx_data[10]),
    .I2(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I3(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>2 ),
    .I4(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>1_123 ),
    .I5(\uart_top_/tx_data [10]),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<11>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [7]),
    .I2(\uart_top_/tx_data [11]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<11>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [11]),
    .I3(seq_tx_data[11]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N4),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<11>_150 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<12>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [8]),
    .I2(\uart_top_/tx_data [12]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<12>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [12]),
    .I3(seq_tx_data[12]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N6),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<12>_151 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<13>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [9]),
    .I2(\uart_top_/tx_data [13]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<13>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [13]),
    .I3(seq_tx_data[13]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N8),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<13>_152 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<14>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [10]),
    .I2(\uart_top_/tx_data [14]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<14>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [14]),
    .I3(seq_tx_data[14]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N10),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<14>_153 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<15>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [11]),
    .I2(\uart_top_/tx_data [15]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<15>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [15]),
    .I3(seq_tx_data[15]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N12),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<15>_154 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<4>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [0]),
    .I2(\uart_top_/tx_data [4]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<4>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [4]),
    .I3(seq_tx_data[4]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N14),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<4>_143 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<5>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [1]),
    .I2(\uart_top_/tx_data [5]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<5>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [5]),
    .I3(seq_tx_data[5]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N16),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<5>_144 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<6>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [2]),
    .I2(\uart_top_/tx_data [6]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<6>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [6]),
    .I3(seq_tx_data[6]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N18),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<6>_145 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<7>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [3]),
    .I2(\uart_top_/tx_data [7]),
    .O(N20)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<7>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [7]),
    .I3(seq_tx_data[7]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N20),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<7>_146 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<8>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [4]),
    .I2(\uart_top_/tx_data [8]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<8>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [8]),
    .I3(seq_tx_data[8]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N22),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<8>_147 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<9>_SW0  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tx_data [5]),
    .I2(\uart_top_/tx_data [9]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFD75F8F0A820F8F0 ))
  \uart_top_/state[2]_tx_data[15]_select_12_OUT<9>  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(seq_tx_valid),
    .I2(\uart_top_/tx_data [9]),
    .I3(seq_tx_data[9]),
    .I4(\uart_top_/tfifo_in<7>2 ),
    .I5(N24),
    .O(\uart_top_/state[2]_tx_data[15]_select_12_OUT<9>_148 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \uart_top_/tfifo_in<8>_SW0  (
    .I0(\uart_top_/tx_data [14]),
    .I1(\uart_top_/tx_data [13]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hAFAA0AAA6F660666 ))
  \uart_top_/tfifo_in<8>  (
    .I0(\uart_top_/tx_data [12]),
    .I1(\uart_top_/tx_data [15]),
    .I2(\uart_top_/state [0]),
    .I3(\uart_top_/state [2]),
    .I4(\uart_top_/state [1]),
    .I5(N26),
    .O(\uart_top_/tfifo_in[0] )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAA8A ))
  \uart_top_/uart_/Mmux__n02321113  (
    .I0(\uart_top_/uart_/Mmux__n02321111 ),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/uart_/n0056_194 ),
    .I5(\uart_top_/uart_/Mmux__n0232111 ),
    .O(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \uart_top_/uart_/Mmux__n02321121  (
    .I0(\uart_top_/uart_/tx_countdown [3]),
    .I1(\uart_top_/uart_/Mmux__n02321115 ),
    .O(\uart_top_/uart_/Mmux__n0232112 )
  );
  LUT6 #(
    .INIT ( 64'h55FD55CD00000000 ))
  \uart_top_/uart_/Mmux__n02321122  (
    .I0(\uart_top_/tfifo_rd_z_171 ),
    .I1(\uart_top_/uart_/tx_state [1]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(arst_ff[0]),
    .I4(\uart_top_/uart_/n0056_194 ),
    .I5(\uart_top_/uart_/Mmux__n0232112 ),
    .O(\uart_top_/uart_/Mmux__n02321121_539 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00000100 ))
  \uart_top_/uart_/Mmux__n02321123  (
    .I0(\uart_top_/uart_/tx_state [1]),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/Mmux__n02321112_185 ),
    .I3(\uart_top_/uart_/tx_state [0]),
    .I4(\uart_top_/uart_/n0056_194 ),
    .I5(\uart_top_/uart_/Mmux__n02321121_539 ),
    .O(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hDFFFFFFFFFFFFFFF ))
  \uart_top_/tfifo_/wr_GND_9_o_Select_11_o_SW0  (
    .I0(\uart_top_/tfifo_/fifo_cnt [9]),
    .I1(\uart_top_/tfifo_/fifo_cnt [0]),
    .I2(\uart_top_/tfifo_/fifo_cnt [8]),
    .I3(\uart_top_/tfifo_/fifo_cnt [7]),
    .I4(\uart_top_/tfifo_/fifo_cnt [6]),
    .I5(\uart_top_/tfifo_/fifo_cnt [5]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \uart_top_/tfifo_/wr_GND_9_o_Select_12_o1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [8]),
    .I1(\uart_top_/tfifo_/fifo_cnt [9]),
    .I2(\uart_top_/tfifo_/fifo_cnt [7]),
    .I3(\uart_top_/tfifo_/fifo_cnt [6]),
    .I4(\uart_top_/tfifo_/fifo_cnt [5]),
    .I5(\uart_top_/tfifo_/fifo_cnt [4]),
    .O(\uart_top_/tfifo_/wr_GND_9_o_Select_12_o1_541 )
  );
  IBUF   sw_7_IBUF (
    .I(sw[7]),
    .O(sw_7_IBUF_0)
  );
  IBUF   sw_6_IBUF (
    .I(sw[6]),
    .O(sw_6_IBUF_1)
  );
  IBUF   sw_5_IBUF (
    .I(sw[5]),
    .O(sw_5_IBUF_2)
  );
  IBUF   sw_4_IBUF (
    .I(sw[4]),
    .O(sw_4_IBUF_3)
  );
  IBUF   sw_3_IBUF (
    .I(sw[3]),
    .O(sw_3_IBUF_4)
  );
  IBUF   sw_2_IBUF (
    .I(sw[2]),
    .O(sw_2_IBUF_5)
  );
  IBUF   sw_1_IBUF (
    .I(sw[1]),
    .O(sw_1_IBUF_6)
  );
  IBUF   sw_0_IBUF (
    .I(sw[0]),
    .O(sw_0_IBUF_7)
  );
  IBUF   btnS_IBUF (
    .I(btnS),
    .O(btnS_IBUF_8)
  );
  IBUF   btnR_IBUF (
    .I(btnR),
    .O(btnR_IBUF_9)
  );
  OBUF   led_7_OBUF (
    .I(inst_cnt[7]),
    .O(led[7])
  );
  OBUF   led_6_OBUF (
    .I(inst_cnt[6]),
    .O(led[6])
  );
  OBUF   led_5_OBUF (
    .I(inst_cnt[5]),
    .O(led[5])
  );
  OBUF   led_4_OBUF (
    .I(inst_cnt[4]),
    .O(led[4])
  );
  OBUF   led_3_OBUF (
    .I(inst_cnt[3]),
    .O(led[3])
  );
  OBUF   led_2_OBUF (
    .I(inst_cnt[2]),
    .O(led[2])
  );
  OBUF   led_1_OBUF (
    .I(inst_cnt[1]),
    .O(led[1])
  );
  OBUF   led_0_OBUF (
    .I(inst_cnt[0]),
    .O(led[0])
  );
  OBUF   RsTx_OBUF (
    .I(\uart_top_/uart_/tx_out_19 ),
    .O(RsTx)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<1>_rt  (
    .I0(clk_dv_0_67),
    .O(\Madd_n0047_cy<1>_rt_562 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<2>_rt  (
    .I0(clk_dv_1_66),
    .O(\Madd_n0047_cy<2>_rt_563 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<3>_rt  (
    .I0(clk_dv_2_65),
    .O(\Madd_n0047_cy<3>_rt_564 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<4>_rt  (
    .I0(clk_dv_3_64),
    .O(\Madd_n0047_cy<4>_rt_565 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<5>_rt  (
    .I0(clk_dv_4_63),
    .O(\Madd_n0047_cy<5>_rt_566 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<6>_rt  (
    .I0(clk_dv_5_62),
    .O(\Madd_n0047_cy<6>_rt_567 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<7>_rt  (
    .I0(clk_dv_6_61),
    .O(\Madd_n0047_cy<7>_rt_568 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<8>_rt  (
    .I0(clk_dv_7_60),
    .O(\Madd_n0047_cy<8>_rt_569 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<9>_rt  (
    .I0(clk_dv_8_59),
    .O(\Madd_n0047_cy<9>_rt_570 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<10>_rt  (
    .I0(clk_dv_9_58),
    .O(\Madd_n0047_cy<10>_rt_571 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<11>_rt  (
    .I0(clk_dv_10_57),
    .O(\Madd_n0047_cy<11>_rt_572 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<12>_rt  (
    .I0(clk_dv_11_56),
    .O(\Madd_n0047_cy<12>_rt_573 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<13>_rt  (
    .I0(clk_dv_12_55),
    .O(\Madd_n0047_cy<13>_rt_574 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<14>_rt  (
    .I0(clk_dv_13_54),
    .O(\Madd_n0047_cy<14>_rt_575 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<15>_rt  (
    .I0(clk_dv_14_53),
    .O(\Madd_n0047_cy<15>_rt_576 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_n0047_cy<16>_rt  (
    .I0(clk_dv_15_52),
    .O(\Madd_n0047_cy<16>_rt_577 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_cy<1>_rt  (
    .I0(inst_cnt[1]),
    .O(\Mcount_inst_cnt_cy<1>_rt_578 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_cy<2>_rt  (
    .I0(inst_cnt[2]),
    .O(\Mcount_inst_cnt_cy<2>_rt_579 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_cy<3>_rt  (
    .I0(inst_cnt[3]),
    .O(\Mcount_inst_cnt_cy<3>_rt_580 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_cy<4>_rt  (
    .I0(inst_cnt[4]),
    .O(\Mcount_inst_cnt_cy<4>_rt_581 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_cy<5>_rt  (
    .I0(inst_cnt[5]),
    .O(\Mcount_inst_cnt_cy<5>_rt_582 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_cy<6>_rt  (
    .I0(inst_cnt[6]),
    .O(\Mcount_inst_cnt_cy<6>_rt_583 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcount_inst_cnt_xor<7>_rt  (
    .I0(inst_cnt[7]),
    .O(\Mcount_inst_cnt_xor<7>_rt_584 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \uart_top_/uart_/tx_out  (
    .C(clk_BUFGP_10),
    .D(\uart_top_/uart_/tx_out_rstpot_585 ),
    .Q(\uart_top_/uart_/tx_out_19 )
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data101_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [3]),
    .I2(inst_wd[6]),
    .I3(inst_wd[3]),
    .I4(seq_tx_data[3]),
    .O(N38)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data101_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[3]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [3]),
    .I4(inst_wd[3]),
    .O(N39)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data11_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [0]),
    .I2(inst_wd[6]),
    .I3(inst_wd[0]),
    .I4(seq_tx_data[0]),
    .O(N50)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data11_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[0]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [0]),
    .I4(inst_wd[0]),
    .O(N51)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data111_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [4]),
    .I2(inst_wd[6]),
    .I3(seq_tx_data[0]),
    .I4(seq_tx_data[4]),
    .O(N62)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data111_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[4]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [4]),
    .I4(seq_tx_data[0]),
    .O(N63)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data121_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [5]),
    .I2(inst_wd[6]),
    .I3(seq_tx_data[1]),
    .I4(seq_tx_data[5]),
    .O(N74)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data121_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[5]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [5]),
    .I4(seq_tx_data[1]),
    .O(N75)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data131_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [6]),
    .I2(inst_wd[6]),
    .I3(seq_tx_data[2]),
    .I4(seq_tx_data[6]),
    .O(N86)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data131_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[6]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [6]),
    .I4(seq_tx_data[2]),
    .O(N87)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data141_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [7]),
    .I2(inst_wd[6]),
    .I3(seq_tx_data[3]),
    .I4(seq_tx_data[7]),
    .O(N98)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data141_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[7]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [7]),
    .I4(seq_tx_data[3]),
    .O(N99)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data151_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [8]),
    .I2(inst_wd[6]),
    .I3(seq_tx_data[4]),
    .I4(seq_tx_data[8]),
    .O(N110)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data151_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[8]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [8]),
    .I4(seq_tx_data[4]),
    .O(N111)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data161_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [9]),
    .I2(inst_wd[6]),
    .I3(seq_tx_data[5]),
    .I4(seq_tx_data[9]),
    .O(N122)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data161_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[9]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [9]),
    .I4(seq_tx_data[5]),
    .O(N123)
  );
  LUT5 #(
    .INIT ( 32'hB3A29180 ))
  \seq_/alu_/Mmux_o_data21_SW0  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[10]),
    .I3(seq_tx_data[6]),
    .I4(\seq_/alu_/add_data [10]),
    .O(N134)
  );
  LUT5 #(
    .INIT ( 32'hFE76DC54 ))
  \seq_/alu_/Mmux_o_data21_SW1  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[6]),
    .I3(seq_tx_data[10]),
    .I4(\seq_/alu_/add_data [10]),
    .O(N135)
  );
  LUT5 #(
    .INIT ( 32'hB3A29180 ))
  \seq_/alu_/Mmux_o_data31_SW0  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[11]),
    .I3(seq_tx_data[7]),
    .I4(\seq_/alu_/add_data [11]),
    .O(N146)
  );
  LUT5 #(
    .INIT ( 32'hFE76DC54 ))
  \seq_/alu_/Mmux_o_data31_SW1  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[7]),
    .I3(seq_tx_data[11]),
    .I4(\seq_/alu_/add_data [11]),
    .O(N147)
  );
  LUT5 #(
    .INIT ( 32'hB3A29180 ))
  \seq_/alu_/Mmux_o_data41_SW0  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[12]),
    .I3(seq_tx_data[8]),
    .I4(\seq_/alu_/add_data [12]),
    .O(N158)
  );
  LUT5 #(
    .INIT ( 32'hF7E6D5C4 ))
  \seq_/alu_/Mmux_o_data41_SW1  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[12]),
    .I3(seq_tx_data[8]),
    .I4(\seq_/alu_/add_data [12]),
    .O(N159)
  );
  LUT5 #(
    .INIT ( 32'hB3A29180 ))
  \seq_/alu_/Mmux_o_data51_SW0  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[13]),
    .I3(seq_tx_data[9]),
    .I4(\seq_/alu_/add_data [13]),
    .O(N170)
  );
  LUT5 #(
    .INIT ( 32'hF7E6D5C4 ))
  \seq_/alu_/Mmux_o_data51_SW1  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[13]),
    .I3(seq_tx_data[9]),
    .I4(\seq_/alu_/add_data [13]),
    .O(N171)
  );
  LUT5 #(
    .INIT ( 32'hB3A29180 ))
  \seq_/alu_/Mmux_o_data61_SW0  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[14]),
    .I3(seq_tx_data[10]),
    .I4(\seq_/alu_/add_data [14]),
    .O(N182)
  );
  LUT5 #(
    .INIT ( 32'hF7E6D5C4 ))
  \seq_/alu_/Mmux_o_data61_SW1  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[14]),
    .I3(seq_tx_data[10]),
    .I4(\seq_/alu_/add_data [14]),
    .O(N183)
  );
  LUT5 #(
    .INIT ( 32'hB3A29180 ))
  \seq_/alu_/Mmux_o_data71_SW0  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[15]),
    .I3(seq_tx_data[11]),
    .I4(\seq_/alu_/add_data [15]),
    .O(N194)
  );
  LUT5 #(
    .INIT ( 32'hF7E6D5C4 ))
  \seq_/alu_/Mmux_o_data71_SW1  (
    .I0(inst_wd[6]),
    .I1(inst_wd[7]),
    .I2(seq_tx_data[15]),
    .I3(seq_tx_data[11]),
    .I4(\seq_/alu_/add_data [15]),
    .O(N195)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data81_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [1]),
    .I2(inst_wd[6]),
    .I3(inst_wd[1]),
    .I4(seq_tx_data[1]),
    .O(N206)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data81_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[1]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [1]),
    .I4(inst_wd[1]),
    .O(N207)
  );
  LUT5 #(
    .INIT ( 32'hE5E04540 ))
  \seq_/alu_/Mmux_o_data91_SW0  (
    .I0(inst_wd[7]),
    .I1(\seq_/alu_/add_data [2]),
    .I2(inst_wd[6]),
    .I3(inst_wd[2]),
    .I4(seq_tx_data[2]),
    .O(N218)
  );
  LUT5 #(
    .INIT ( 32'hDF8FDA8A ))
  \seq_/alu_/Mmux_o_data91_SW1  (
    .I0(inst_wd[7]),
    .I1(seq_tx_data[2]),
    .I2(inst_wd[6]),
    .I3(\seq_/alu_/add_data [2]),
    .I4(inst_wd[2]),
    .O(N219)
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT101  (
    .I0(\seq_/rf_/rf_3 [51]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N39),
    .I4(N38),
    .I5(\seq_/alu_/mult_data [3]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT101  (
    .I0(\seq_/rf_/rf_3 [19]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N39),
    .I4(N38),
    .I5(\seq_/alu_/mult_data [3]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT101  (
    .I0(\seq_/rf_/rf_3 [3]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N39),
    .I4(N38),
    .I5(\seq_/alu_/mult_data [3]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT101  (
    .I0(\seq_/rf_/rf_3 [35]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N39),
    .I4(N38),
    .I5(\seq_/alu_/mult_data [3]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT17  (
    .I0(\seq_/rf_/rf_3 [48]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N51),
    .I4(N50),
    .I5(\seq_/alu_/mult_data [0]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT17  (
    .I0(\seq_/rf_/rf_3 [16]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N51),
    .I4(N50),
    .I5(\seq_/alu_/mult_data [0]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT17  (
    .I0(\seq_/rf_/rf_3 [0]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N51),
    .I4(N50),
    .I5(\seq_/alu_/mult_data [0]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT17  (
    .I0(\seq_/rf_/rf_3 [32]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N51),
    .I4(N50),
    .I5(\seq_/alu_/mult_data [0]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT111  (
    .I0(\seq_/rf_/rf_3 [52]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N63),
    .I4(N62),
    .I5(\seq_/alu_/mult_data [4]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT111  (
    .I0(\seq_/rf_/rf_3 [20]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N63),
    .I4(N62),
    .I5(\seq_/alu_/mult_data [4]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT111  (
    .I0(\seq_/rf_/rf_3 [4]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N63),
    .I4(N62),
    .I5(\seq_/alu_/mult_data [4]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT111  (
    .I0(\seq_/rf_/rf_3 [36]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N63),
    .I4(N62),
    .I5(\seq_/alu_/mult_data [4]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT121  (
    .I0(\seq_/rf_/rf_3 [53]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N75),
    .I4(N74),
    .I5(\seq_/alu_/mult_data [5]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT121  (
    .I0(\seq_/rf_/rf_3 [21]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N75),
    .I4(N74),
    .I5(\seq_/alu_/mult_data [5]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT121  (
    .I0(\seq_/rf_/rf_3 [5]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N75),
    .I4(N74),
    .I5(\seq_/alu_/mult_data [5]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT121  (
    .I0(\seq_/rf_/rf_3 [37]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N75),
    .I4(N74),
    .I5(\seq_/alu_/mult_data [5]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT131  (
    .I0(\seq_/rf_/rf_3 [54]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N87),
    .I4(N86),
    .I5(\seq_/alu_/mult_data [6]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT131  (
    .I0(\seq_/rf_/rf_3 [22]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N87),
    .I4(N86),
    .I5(\seq_/alu_/mult_data [6]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT131  (
    .I0(\seq_/rf_/rf_3 [6]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N87),
    .I4(N86),
    .I5(\seq_/alu_/mult_data [6]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT131  (
    .I0(\seq_/rf_/rf_3 [38]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N87),
    .I4(N86),
    .I5(\seq_/alu_/mult_data [6]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT141  (
    .I0(\seq_/rf_/rf_3 [55]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N99),
    .I4(N98),
    .I5(\seq_/alu_/mult_data [7]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT141  (
    .I0(\seq_/rf_/rf_3 [23]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N99),
    .I4(N98),
    .I5(\seq_/alu_/mult_data [7]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT141  (
    .I0(\seq_/rf_/rf_3 [7]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N99),
    .I4(N98),
    .I5(\seq_/alu_/mult_data [7]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT141  (
    .I0(\seq_/rf_/rf_3 [39]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N99),
    .I4(N98),
    .I5(\seq_/alu_/mult_data [7]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT151  (
    .I0(\seq_/rf_/rf_3 [56]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N111),
    .I4(N110),
    .I5(\seq_/alu_/mult_data [8]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT151  (
    .I0(\seq_/rf_/rf_3 [24]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N111),
    .I4(N110),
    .I5(\seq_/alu_/mult_data [8]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT151  (
    .I0(\seq_/rf_/rf_3 [8]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N111),
    .I4(N110),
    .I5(\seq_/alu_/mult_data [8]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT151  (
    .I0(\seq_/rf_/rf_3 [40]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N111),
    .I4(N110),
    .I5(\seq_/alu_/mult_data [8]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT161  (
    .I0(\seq_/rf_/rf_3 [57]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N123),
    .I4(N122),
    .I5(\seq_/alu_/mult_data [9]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT161  (
    .I0(\seq_/rf_/rf_3 [25]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N123),
    .I4(N122),
    .I5(\seq_/alu_/mult_data [9]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT161  (
    .I0(\seq_/rf_/rf_3 [9]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N123),
    .I4(N122),
    .I5(\seq_/alu_/mult_data [9]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT161  (
    .I0(\seq_/rf_/rf_3 [41]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N123),
    .I4(N122),
    .I5(\seq_/alu_/mult_data [9]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT21  (
    .I0(\seq_/rf_/rf_3 [58]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N135),
    .I4(N134),
    .I5(\seq_/alu_/mult_data [10]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT21  (
    .I0(\seq_/rf_/rf_3 [26]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N135),
    .I4(N134),
    .I5(\seq_/alu_/mult_data [10]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT21  (
    .I0(\seq_/rf_/rf_3 [10]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N135),
    .I4(N134),
    .I5(\seq_/alu_/mult_data [10]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT21  (
    .I0(\seq_/rf_/rf_3 [42]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N135),
    .I4(N134),
    .I5(\seq_/alu_/mult_data [10]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT31  (
    .I0(\seq_/rf_/rf_3 [59]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N147),
    .I4(N146),
    .I5(\seq_/alu_/mult_data [11]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT31  (
    .I0(\seq_/rf_/rf_3 [27]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N147),
    .I4(N146),
    .I5(\seq_/alu_/mult_data [11]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT31  (
    .I0(\seq_/rf_/rf_3 [11]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N147),
    .I4(N146),
    .I5(\seq_/alu_/mult_data [11]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT31  (
    .I0(\seq_/rf_/rf_3 [43]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N147),
    .I4(N146),
    .I5(\seq_/alu_/mult_data [11]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT41  (
    .I0(\seq_/rf_/rf_3 [60]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N159),
    .I4(N158),
    .I5(\seq_/alu_/mult_data [12]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT41  (
    .I0(\seq_/rf_/rf_3 [28]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N159),
    .I4(N158),
    .I5(\seq_/alu_/mult_data [12]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT41  (
    .I0(\seq_/rf_/rf_3 [12]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N159),
    .I4(N158),
    .I5(\seq_/alu_/mult_data [12]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT41  (
    .I0(\seq_/rf_/rf_3 [44]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N159),
    .I4(N158),
    .I5(\seq_/alu_/mult_data [12]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT51  (
    .I0(\seq_/rf_/rf_3 [61]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N171),
    .I4(N170),
    .I5(\seq_/alu_/mult_data [13]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT51  (
    .I0(\seq_/rf_/rf_3 [29]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N171),
    .I4(N170),
    .I5(\seq_/alu_/mult_data [13]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT51  (
    .I0(\seq_/rf_/rf_3 [13]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N171),
    .I4(N170),
    .I5(\seq_/alu_/mult_data [13]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT51  (
    .I0(\seq_/rf_/rf_3 [45]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N171),
    .I4(N170),
    .I5(\seq_/alu_/mult_data [13]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT61  (
    .I0(\seq_/rf_/rf_3 [62]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N183),
    .I4(N182),
    .I5(\seq_/alu_/mult_data [14]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT61  (
    .I0(\seq_/rf_/rf_3 [30]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N183),
    .I4(N182),
    .I5(\seq_/alu_/mult_data [14]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT61  (
    .I0(\seq_/rf_/rf_3 [14]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N183),
    .I4(N182),
    .I5(\seq_/alu_/mult_data [14]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT61  (
    .I0(\seq_/rf_/rf_3 [46]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N183),
    .I4(N182),
    .I5(\seq_/alu_/mult_data [14]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT71  (
    .I0(\seq_/rf_/rf_3 [63]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N195),
    .I4(N194),
    .I5(\seq_/alu_/mult_data [15]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT71  (
    .I0(\seq_/rf_/rf_3 [31]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N195),
    .I4(N194),
    .I5(\seq_/alu_/mult_data [15]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT71  (
    .I0(\seq_/rf_/rf_3 [15]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N195),
    .I4(N194),
    .I5(\seq_/alu_/mult_data [15]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT71  (
    .I0(\seq_/rf_/rf_3 [47]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N195),
    .I4(N194),
    .I5(\seq_/alu_/mult_data [15]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT81  (
    .I0(\seq_/rf_/rf_3 [49]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N207),
    .I4(N206),
    .I5(\seq_/alu_/mult_data [1]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT81  (
    .I0(\seq_/rf_/rf_3 [17]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N207),
    .I4(N206),
    .I5(\seq_/alu_/mult_data [1]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT81  (
    .I0(\seq_/rf_/rf_3 [1]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N207),
    .I4(N206),
    .I5(\seq_/alu_/mult_data [1]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT81  (
    .I0(\seq_/rf_/rf_3 [33]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N207),
    .I4(N206),
    .I5(\seq_/alu_/mult_data [1]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hABA8ABA8ABABA8A8 ))
  \seq_/rf_/Mmux_rf[0][15]_i_wdata[15]_mux_5_OUT91  (
    .I0(\seq_/rf_/rf_3 [50]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N219),
    .I4(N218),
    .I5(\seq_/alu_/mult_data [2]),
    .O(\seq_/rf_/rf[0][15]_i_wdata[15]_mux_5_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[2][15]_i_wdata[15]_mux_3_OUT91  (
    .I0(\seq_/rf_/rf_3 [18]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N219),
    .I4(N218),
    .I5(\seq_/alu_/mult_data [2]),
    .O(\seq_/rf_/rf[2][15]_i_wdata[15]_mux_3_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hEA2AEA2AEAEA2A2A ))
  \seq_/rf_/Mmux_rf[3][15]_i_wdata[15]_mux_2_OUT91  (
    .I0(\seq_/rf_/rf_3 [2]),
    .I1(\seq_/rf_wsel [0]),
    .I2(\seq_/rf_wsel [1]),
    .I3(N219),
    .I4(N218),
    .I5(\seq_/alu_/mult_data [2]),
    .O(\seq_/rf_/rf[3][15]_i_wdata[15]_mux_2_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hBA8ABA8ABABA8A8A ))
  \seq_/rf_/Mmux_rf[1][15]_i_wdata[15]_mux_4_OUT91  (
    .I0(\seq_/rf_/rf_3 [34]),
    .I1(\seq_/rf_wsel [1]),
    .I2(\seq_/rf_wsel [0]),
    .I3(N219),
    .I4(N218),
    .I5(\seq_/alu_/mult_data [2]),
    .O(\seq_/rf_/rf[1][15]_i_wdata[15]_mux_4_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA9A66AA66 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [6]),
    .I1(\uart_top_/tfifo_/rd ),
    .I2(\uart_top_/tfifo_/fifo_cnt [0]),
    .I3(\uart_top_/tfifo_/fifo_cnt [5]),
    .I4(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o2 ),
    .I5(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12_240 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA59AAAAA6 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<8>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [8]),
    .I1(\uart_top_/tfifo_/rd ),
    .I2(\uart_top_/tfifo_/fifo_empty_172 ),
    .I3(\uart_top_/tfifo_/fifo_cnt [7]),
    .I4(\uart_top_/tfifo_/fifo_cnt [6]),
    .I5(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>1_246 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA6696 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<7>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [7]),
    .I1(\uart_top_/tfifo_/fifo_cnt [6]),
    .I2(\uart_top_/tfifo_/rd ),
    .I3(\uart_top_/tfifo_/fifo_empty_172 ),
    .I4(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>1_246 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h7575557520200020 ))
  \uart_top_/uart_/tx_out_rstpot  (
    .I0(\uart_top_/uart_/_n0242_inv ),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/Mmux__n02321112_185 ),
    .I4(\uart_top_/uart_/tx_data [0]),
    .I5(\uart_top_/uart_/tx_out_19 ),
    .O(\uart_top_/uart_/tx_out_rstpot_585 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF7FFFFFFFF ))
  \uart_top_/tfifo_/wr_GND_9_o_Select_12_o3_SW0  (
    .I0(\uart_top_/tfifo_/fifo_cnt [0]),
    .I1(\uart_top_/tfifo_/wr_GND_9_o_Select_12_o1_541 ),
    .I2(\uart_top_/tfifo_/fifo_cnt [2]),
    .I3(\uart_top_/tfifo_/fifo_cnt [3]),
    .I4(\uart_top_/tfifo_/fifo_cnt [1]),
    .I5(\uart_top_/tfifo_/rd ),
    .O(N230)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \uart_top_/uart_/n0056_SW1  (
    .I0(\uart_top_/uart_/tx_countdown [2]),
    .I1(\uart_top_/uart_/tx_countdown [3]),
    .I2(\uart_top_/uart_/tx_countdown [4]),
    .I3(\uart_top_/uart_/tx_countdown [5]),
    .O(N232)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF6AAA ))
  \uart_top_/uart_/n0056  (
    .I0(\uart_top_/uart_/tx_countdown [0]),
    .I1(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ),
    .I2(\uart_top_/uart_/GND_10_o_reduce_nor_15_o61 ),
    .I3(\uart_top_/uart_/tx_clk_divider[0] ),
    .I4(\uart_top_/uart_/tx_countdown [1]),
    .I5(N232),
    .O(\uart_top_/uart_/n0056_194 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12_SW1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [1]),
    .I1(\uart_top_/tfifo_/fifo_cnt [2]),
    .I2(\uart_top_/tfifo_/fifo_cnt [3]),
    .I3(\uart_top_/tfifo_/fifo_cnt [4]),
    .O(N234)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFF3AAAAEEE6 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12  (
    .I0(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I1(\uart_top_/tfifo_/rd ),
    .I2(N234),
    .I3(\uart_top_/tfifo_/fifo_cnt [0]),
    .I4(\uart_top_/tfifo_/fifo_empty_172 ),
    .I5(\uart_top_/tfifo_/fifo_full_173 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12_240 )
  );
  LUT6 #(
    .INIT ( 64'hFFEEFFFFF7EFF7F7 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>11  (
    .I0(\uart_top_/tfifo_/fifo_cnt [0]),
    .I1(\uart_top_/tfifo_/fifo_cnt [1]),
    .I2(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I3(\uart_top_/tfifo_/fifo_empty_172 ),
    .I4(\uart_top_/tfifo_/rd ),
    .I5(\uart_top_/tfifo_/fifo_full_173 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>1_247 )
  );
  LUT6 #(
    .INIT ( 64'hA9AAA9AAA9AA6A66 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<1>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [1]),
    .I1(\uart_top_/tfifo_/fifo_cnt [0]),
    .I2(\uart_top_/tfifo_/fifo_empty_172 ),
    .I3(\uart_top_/tfifo_/rd ),
    .I4(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I5(\uart_top_/tfifo_/fifo_full_173 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'hFEFFFFFFFFFFFFFF ))
  \uart_top_/uart_/Mmux__n023211151  (
    .I0(\uart_top_/uart_/tx_countdown [2]),
    .I1(\uart_top_/uart_/tx_countdown [1]),
    .I2(\uart_top_/uart_/tx_countdown [0]),
    .I3(\uart_top_/uart_/tx_clk_divider[0] ),
    .I4(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ),
    .I5(\uart_top_/uart_/GND_10_o_reduce_nor_15_o61 ),
    .O(\uart_top_/uart_/Mmux__n02321115 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000080 ))
  \seq_/o_tx_valid1  (
    .I0(inst_vld_40),
    .I1(inst_wd[7]),
    .I2(inst_wd[6]),
    .I3(\uart_top_/state [2]),
    .I4(\uart_top_/state [1]),
    .I5(\uart_top_/state [0]),
    .O(seq_tx_valid)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA9AAAAAAA ))
  \uart_top_/uart_/Mmux__n02321112  (
    .I0(\uart_top_/uart_/tx_countdown [2]),
    .I1(\uart_top_/uart_/tx_countdown [1]),
    .I2(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ),
    .I3(\uart_top_/uart_/tx_clk_divider[0] ),
    .I4(\uart_top_/uart_/GND_10_o_reduce_nor_15_o61 ),
    .I5(\uart_top_/uart_/tx_countdown [0]),
    .O(\uart_top_/uart_/Mmux__n02321111 )
  );
  LUT6 #(
    .INIT ( 64'h4444444414444444 ))
  \uart_top_/uart_/Mmux__n02321101  (
    .I0(\uart_top_/uart_/Mmux__n02321113_184 ),
    .I1(\uart_top_/uart_/tx_countdown [1]),
    .I2(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ),
    .I3(\uart_top_/uart_/tx_clk_divider[0] ),
    .I4(\uart_top_/uart_/GND_10_o_reduce_nor_15_o61 ),
    .I5(\uart_top_/uart_/tx_countdown [0]),
    .O(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h55FD0000000055FD ))
  \uart_top_/uart_/Mmux_tx_state[1]_GND_10_o_wide_mux_69_OUT31  (
    .I0(\uart_top_/tfifo_rd_z_171 ),
    .I1(\uart_top_/uart_/tx_state [0]),
    .I2(\uart_top_/uart_/tx_state [1]),
    .I3(arst_ff[0]),
    .I4(\uart_top_/uart_/tx_clk_divider[0] ),
    .I5(\uart_top_/uart_/tx_clk_divider[1] ),
    .O(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h888A88BA ))
  \uart_top_/uart_/_n0242_inv1  (
    .I0(\uart_top_/tfifo_rd_z_171 ),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/uart_/n0056_194 ),
    .O(\uart_top_/uart_/_n0242_inv )
  );
  LUT6 #(
    .INIT ( 64'h888A888A88BA888A ))
  \uart_top_/uart_/_n0231_inv1  (
    .I0(\uart_top_/tfifo_rd_z_171 ),
    .I1(arst_ff[0]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/uart_/Mmux__n02321112_185 ),
    .I5(\uart_top_/uart_/n0056_194 ),
    .O(\uart_top_/uart_/Mmux__n0232111 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF2FDDFFDD ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>11  (
    .I0(\uart_top_/tfifo_/rd ),
    .I1(\uart_top_/tfifo_/fifo_empty_172 ),
    .I2(\uart_top_/tfifo_/fifo_cnt [0]),
    .I3(\uart_top_/tfifo_/fifo_cnt [5]),
    .I4(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o2 ),
    .I5(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12_240 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>1_246 )
  );
  LUT6 #(
    .INIT ( 64'hEEFFEEFB44444440 ))
  \uart_top_/uart_/Mmux__n02321151  (
    .I0(arst_ff[0]),
    .I1(\uart_top_/uart_/tx_state [0]),
    .I2(\uart_top_/uart_/n0056_194 ),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/uart_/Mmux__n02321112_185 ),
    .I5(\uart_top_/tfifo_rd_z_171 ),
    .O(\uart_top_/uart_/tx_state[1]_tx_state[1]_wide_mux_64_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA59AAAAA6 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<4>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [4]),
    .I1(\uart_top_/tfifo_/rd ),
    .I2(\uart_top_/tfifo_/fifo_empty_172 ),
    .I3(\uart_top_/tfifo_/fifo_cnt [3]),
    .I4(\uart_top_/tfifo_/fifo_cnt [2]),
    .I5(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>1_247 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hAAAA6696 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<3>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [3]),
    .I1(\uart_top_/tfifo_/fifo_cnt [2]),
    .I2(\uart_top_/tfifo_/rd ),
    .I3(\uart_top_/tfifo_/fifo_empty_172 ),
    .I4(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<2>1_247 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA55A6A6A6 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<5>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [5]),
    .I1(\uart_top_/tfifo_/rd ),
    .I2(\uart_top_/tfifo_/fifo_empty_172 ),
    .I3(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o2 ),
    .I4(\uart_top_/tfifo_/fifo_cnt [0]),
    .I5(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<6>12_240 ),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAABAAA9 ))
  \uart_top_/uart_/Mmux_tx_state[1]_GND_10_o_wide_mux_69_OUT6  (
    .I0(\uart_top_/uart_/tx_clk_divider[4] ),
    .I1(\uart_top_/uart_/tx_clk_divider[2] ),
    .I2(\uart_top_/uart_/tx_clk_divider[3] ),
    .I3(\uart_top_/uart_/tx_clk_divider[1] ),
    .I4(\uart_top_/uart_/tx_clk_divider[0] ),
    .I5(\uart_top_/uart_/Mmux__n02321113_184 ),
    .O(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA9ABA9 ))
  \uart_top_/uart_/Mmux_tx_state[1]_GND_10_o_wide_mux_69_OUT5  (
    .I0(\uart_top_/uart_/tx_clk_divider[3] ),
    .I1(\uart_top_/uart_/tx_clk_divider[2] ),
    .I2(\uart_top_/uart_/tx_clk_divider[1] ),
    .I3(\uart_top_/uart_/tx_clk_divider[0] ),
    .I4(\uart_top_/uart_/tx_clk_divider[4] ),
    .I5(\uart_top_/uart_/Mmux__n02321113_184 ),
    .O(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<4>11  (
    .I0(\uart_top_/tfifo_/rp [4]),
    .I1(\uart_top_/tfifo_/rp [0]),
    .I2(\uart_top_/tfifo_/rd ),
    .I3(\uart_top_/tfifo_/rp [1]),
    .I4(\uart_top_/tfifo_/rp [3]),
    .I5(\uart_top_/tfifo_/rp [2]),
    .O(\uart_top_/tfifo_/Result [4])
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<3>11  (
    .I0(\uart_top_/tfifo_/rp [3]),
    .I1(\uart_top_/tfifo_/rp [0]),
    .I2(\uart_top_/tfifo_/rd ),
    .I3(\uart_top_/tfifo_/rp [1]),
    .I4(\uart_top_/tfifo_/rp [2]),
    .O(\uart_top_/tfifo_/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<2>12  (
    .I0(\uart_top_/tfifo_/rp [2]),
    .I1(\uart_top_/tfifo_/rp [0]),
    .I2(\uart_top_/tfifo_/rd ),
    .I3(\uart_top_/tfifo_/rp [1]),
    .O(\uart_top_/tfifo_/Result [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA9AAAAAAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<3>11  (
    .I0(\uart_top_/tfifo_/wp [3]),
    .I1(\uart_top_/tfifo_/fifo_full_173 ),
    .I2(\uart_top_/tfifo_/wp [2]),
    .I3(\uart_top_/tfifo_/wp [1]),
    .I4(\uart_top_/tfifo_/wp [0]),
    .I5(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .O(\uart_top_/tfifo_/Result<3>1 )
  );
  LUT5 #(
    .INIT ( 32'hA9AAAAAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<2>12  (
    .I0(\uart_top_/tfifo_/wp [2]),
    .I1(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I2(\uart_top_/tfifo_/fifo_full_173 ),
    .I3(\uart_top_/tfifo_/wp [0]),
    .I4(\uart_top_/tfifo_/wp [1]),
    .O(\uart_top_/tfifo_/Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h5554 ))
  \uart_top_/tfifo_/wr1  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/state [2]),
    .I2(\uart_top_/state [1]),
    .I3(\uart_top_/state [0]),
    .O(\uart_top_/tfifo_/wr )
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  \uart_top_/uart_/Mmux__n0232191  (
    .I0(\uart_top_/uart_/Mmux__n02321113_184 ),
    .I1(\uart_top_/uart_/tx_countdown [0]),
    .I2(\uart_top_/uart_/tx_clk_divider[0] ),
    .I3(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ),
    .O(\uart_top_/uart_/tx_state[1]_tx_countdown[5]_wide_mux_68_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA02FFFFFFFF ))
  \uart_top_/uart_/Mmux_tx_state[1]_GND_10_o_wide_mux_69_OUT11  (
    .I0(\uart_top_/tfifo_rd_z_171 ),
    .I1(\uart_top_/uart_/tx_state [1]),
    .I2(\uart_top_/uart_/tx_state [0]),
    .I3(arst_ff[0]),
    .I4(\uart_top_/uart_/GND_10_o_reduce_nor_15_o52 ),
    .I5(\uart_top_/uart_/tx_clk_divider[0] ),
    .O(\uart_top_/uart_/tx_state[1]_GND_10_o_wide_mux_69_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA9 ))
  \uart_top_/tfifo_/Maccum_rp_lut<0>1  (
    .I0(\uart_top_/tfifo_/rp [0]),
    .I1(\uart_top_/tfifo_/fifo_empty_172 ),
    .I2(\uart_top_/tfifo_rd_z_171 ),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/uart_/tx_state [0]),
    .O(\uart_top_/tfifo_/Maccum_rp_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h9999999A ))
  \uart_top_/tfifo_/Maccum_wp_lut<0>1  (
    .I0(\uart_top_/tfifo_/wp [0]),
    .I1(\uart_top_/tfifo_/fifo_full_173 ),
    .I2(\uart_top_/state [2]),
    .I3(\uart_top_/state [1]),
    .I4(\uart_top_/state [0]),
    .O(\uart_top_/tfifo_/Maccum_wp_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h1110BBBA ))
  \uart_top_/tfifo_/wr_GND_9_o_Select_12_o3  (
    .I0(\uart_top_/tfifo_/fifo_empty_172 ),
    .I1(N230),
    .I2(\uart_top_/tfifo_/fifo_full_173 ),
    .I3(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I4(\uart_top_/tfifo_/wr ),
    .O(\uart_top_/tfifo_/wr_GND_9_o_Select_12_o )
  );
  LUT5 #(
    .INIT ( 32'h55550004 ))
  \uart_top_/tfifo_/wr_GND_9_o_Select_11_o  (
    .I0(\uart_top_/tfifo_/rd ),
    .I1(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o2 ),
    .I2(\uart_top_/state[2]_tx_data[15]_select_12_OUT<10>3_523 ),
    .I3(N36),
    .I4(\uart_top_/tfifo_/fifo_full_173 ),
    .O(\uart_top_/tfifo_/wr_GND_9_o_Select_11_o_297 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFFFFFFFFFF ))
  \uart_top_/tfifo_/Maccum_rp_xor<2>111  (
    .I0(\uart_top_/uart_/tx_state [0]),
    .I1(\uart_top_/tfifo_/fifo_empty_172 ),
    .I2(\uart_top_/tfifo_rd_z_171 ),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/tfifo_/rp [0]),
    .I5(\uart_top_/tfifo_/rp [1]),
    .O(\uart_top_/tfifo_/Maccum_rp_xor<2>11 )
  );
  LUT6 #(
    .INIT ( 64'hBFBFBFBFBFBFBFFF ))
  \uart_top_/tfifo_/Maccum_wp_xor<2>111  (
    .I0(\uart_top_/tfifo_/fifo_full_173 ),
    .I1(\uart_top_/tfifo_/wp [0]),
    .I2(\uart_top_/tfifo_/wp [1]),
    .I3(\uart_top_/state [0]),
    .I4(\uart_top_/state [2]),
    .I5(\uart_top_/state [1]),
    .O(\uart_top_/tfifo_/Maccum_wp_xor<2>11 )
  );
  LUT6 #(
    .INIT ( 64'h9999999AAAAAAAAA ))
  \uart_top_/tfifo_/Maccum_wp_xor<1>11  (
    .I0(\uart_top_/tfifo_/wp [1]),
    .I1(\uart_top_/tfifo_/fifo_full_173 ),
    .I2(\uart_top_/state [0]),
    .I3(\uart_top_/state [1]),
    .I4(\uart_top_/state [2]),
    .I5(\uart_top_/tfifo_/wp [0]),
    .O(\uart_top_/tfifo_/Result<1>1 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAA9AAAAAAAA ))
  \uart_top_/tfifo_/Maccum_rp_xor<1>11  (
    .I0(\uart_top_/tfifo_/rp [1]),
    .I1(\uart_top_/tfifo_/fifo_empty_172 ),
    .I2(\uart_top_/tfifo_rd_z_171 ),
    .I3(\uart_top_/uart_/tx_state [1]),
    .I4(\uart_top_/uart_/tx_state [0]),
    .I5(\uart_top_/tfifo_/rp [0]),
    .O(\uart_top_/tfifo_/Result [1])
  );
  LUT6 #(
    .INIT ( 64'h6666666666666669 ))
  \uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<0>1  (
    .I0(\uart_top_/tfifo_/fifo_cnt [0]),
    .I1(\uart_top_/tfifo_/wr ),
    .I2(\uart_top_/tfifo_/fifo_empty_172 ),
    .I3(\uart_top_/tfifo_rd_z_171 ),
    .I4(\uart_top_/uart_/tx_state [1]),
    .I5(\uart_top_/uart_/tx_state [0]),
    .O(\uart_top_/tfifo_/wr_fifo_cnt[9]_select_10_OUT<0> )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_10)
  );
  INV   \Madd_n0047_lut<0>_INV_0  (
    .I(clk_en_68),
    .O(Madd_n0047_lut[0])
  );
  INV   \Mcount_inst_cnt_lut<0>_INV_0  (
    .I(inst_cnt[0]),
    .O(Mcount_inst_cnt_lut[0])
  );
  INV   \uart_top_/rst_inv1_INV_0  (
    .I(arst_ff[0]),
    .O(\uart_top_/rst_inv )
  );
  RAMB8BWER #(
    .INIT_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_05 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_06 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_07 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_08 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_09 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_0F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .RAM_MODE ( "TDP" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  \uart_top_/tfifo_/Mram_mem  (
    .RSTBRST(\uart_top_/uart_/tx_clk_divider[10] ),
    .ENBRDEN(N0),
    .REGCEA(\uart_top_/uart_/tx_clk_divider[10] ),
    .ENAWREN(N0),
    .CLKAWRCLK(clk_BUFGP_10),
    .CLKBRDCLK(clk_BUFGP_10),
    .REGCEBREGCE(\uart_top_/uart_/tx_clk_divider[10] ),
    .RSTA(\uart_top_/uart_/tx_clk_divider[10] ),
    .WEAWEL({\uart_top_/tfifo_/wr , \uart_top_/tfifo_/wr }),
    .DOADO({\NLW_uart_top_/tfifo_/Mram_mem_DOADO<15>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<14>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<13>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<12>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<11>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<10>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<9>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<8>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<7>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<6>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<5>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<4>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<3>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<2>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOADO<1>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOADO<0>_UNCONNECTED }),
    .DOPADOP({\NLW_uart_top_/tfifo_/Mram_mem_DOPADOP<1>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\NLW_uart_top_/tfifo_/Mram_mem_DOPBDOP<1>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOPBDOP<0>_UNCONNECTED }),
    .WEBWEU({\uart_top_/uart_/tx_clk_divider[10] , \uart_top_/uart_/tx_clk_divider[10] }),
    .ADDRAWRADDR({\uart_top_/tfifo_/wp [9], \uart_top_/tfifo_/wp [8], \uart_top_/tfifo_/wp [7], \uart_top_/tfifo_/wp [6], \uart_top_/tfifo_/wp [5], 
\uart_top_/tfifo_/wp [4], \uart_top_/tfifo_/wp [3], \uart_top_/tfifo_/wp [2], \uart_top_/tfifo_/wp [1], \uart_top_/tfifo_/wp [0], 
\NLW_uart_top_/tfifo_/Mram_mem_ADDRAWRADDR<2>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_ADDRAWRADDR<1>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_ADDRAWRADDR<0>_UNCONNECTED }),
    .DIPBDIP({\NLW_uart_top_/tfifo_/Mram_mem_DIPBDIP<1>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIPBDIP<0>_UNCONNECTED }),
    .DIBDI({\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<15>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<14>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<13>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<12>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<11>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<10>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<9>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<8>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<7>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<6>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<5>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<4>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<3>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<2>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIBDI<1>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIBDI<0>_UNCONNECTED }),
    .DIADI({\NLW_uart_top_/tfifo_/Mram_mem_DIADI<15>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIADI<14>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIADI<13>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIADI<12>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIADI<11>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIADI<10>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DIADI<9>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DIADI<8>_UNCONNECTED , \uart_top_/uart_/tx_clk_divider[10] , 
\uart_top_/tfifo_in[6] , \uart_top_/tfifo_in[4] , \uart_top_/tfifo_in[4] , \uart_top_/tfifo_in[3] , \uart_top_/tfifo_in[2] , \uart_top_/tfifo_in[1] , 
\uart_top_/tfifo_in[0] }),
    .ADDRBRDADDR({\uart_top_/tfifo_/rp [9], \uart_top_/tfifo_/rp [8], \uart_top_/tfifo_/rp [7], \uart_top_/tfifo_/rp [6], \uart_top_/tfifo_/rp [5], 
\uart_top_/tfifo_/rp [4], \uart_top_/tfifo_/rp [3], \uart_top_/tfifo_/rp [2], \uart_top_/tfifo_/rp [1], \uart_top_/tfifo_/rp [0], 
\NLW_uart_top_/tfifo_/Mram_mem_ADDRBRDADDR<2>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_ADDRBRDADDR<1>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_ADDRBRDADDR<0>_UNCONNECTED }),
    .DOBDO({\NLW_uart_top_/tfifo_/Mram_mem_DOBDO<15>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<14>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOBDO<13>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<12>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOBDO<11>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<10>_UNCONNECTED , 
\NLW_uart_top_/tfifo_/Mram_mem_DOBDO<9>_UNCONNECTED , \NLW_uart_top_/tfifo_/Mram_mem_DOBDO<8>_UNCONNECTED , \uart_top_/tfifo_out [7], 
\uart_top_/tfifo_out [6], \uart_top_/tfifo_out [5], \uart_top_/tfifo_out [4], \uart_top_/tfifo_out [3], \uart_top_/tfifo_out [2], 
\uart_top_/tfifo_out [1], \uart_top_/tfifo_out [0]}),
    .DIPADIP({\NLW_uart_top_/tfifo_/Mram_mem_DIPADIP<1>_UNCONNECTED , \uart_top_/uart_/tx_clk_divider[10] })
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

