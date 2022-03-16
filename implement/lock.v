// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Jan 26 11:10:40 2022
// Host        : Lab401-12 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force lock.v
// Design      : lock
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "47cc8424" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module lock
   (BACK,
    CE,
    CLK,
    CLR,
    NOT_OK,
    OK,
    PUSH,
    WRONG,
    DATA,
    ILE_PROB,
    JAKI_STAN,
    Q);
  input BACK;
  input CE;
  input CLK;
  input CLR;
  output NOT_OK;
  output OK;
  input PUSH;
  output WRONG;
  input [3:0]DATA;
  output [2:0]ILE_PROB;
  output [4:0]JAKI_STAN;
  output [15:0]Q;

  wire BACK;
  wire BACK_IBUF;
  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire [3:0]DATA;
  wire [3:0]DATA_IBUF;
  wire \FSM_sequential_stan_nastepny_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_2_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_5_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_6_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_7_n_0 ;
  wire \FSM_sequential_stan_nastepny_reg[2]_i_8_n_0 ;
  wire [2:0]ILE_PROB;
  wire [2:0]ILE_PROB_OBUF;
  wire ILE_PROB_temp;
  wire \ILE_PROB_temp_reg[0]_i_1_n_0 ;
  wire \ILE_PROB_temp_reg[1]_i_1_n_0 ;
  wire \ILE_PROB_temp_reg[2]_i_1_n_0 ;
  wire [4:0]JAKI_STAN;
  wire [4:0]JAKI_STAN_OBUF;
  wire NOT_OK;
  wire NOT_OK_OBUF;
  wire NOT_OK_temp;
  wire NOT_OK_temp_reg_i_2_n_0;
  wire OK;
  wire OK_OBUF;
  wire OK_temp;
  wire OK_temp_reg_i_1_n_0;
  wire PUSH;
  wire PUSH_IBUF;
  wire [15:0]Q;
  wire [15:0]Q_temp;
  wire \Q_temp_reg[0]_i_1_n_0 ;
  wire \Q_temp_reg[10]_i_1_n_0 ;
  wire \Q_temp_reg[11]_i_1_n_0 ;
  wire \Q_temp_reg[11]_i_2_n_0 ;
  wire \Q_temp_reg[12]_i_1_n_0 ;
  wire \Q_temp_reg[13]_i_1_n_0 ;
  wire \Q_temp_reg[14]_i_1_n_0 ;
  wire \Q_temp_reg[15]_i_1_n_0 ;
  wire \Q_temp_reg[15]_i_2_n_0 ;
  wire \Q_temp_reg[1]_i_1_n_0 ;
  wire \Q_temp_reg[2]_i_1_n_0 ;
  wire \Q_temp_reg[3]_i_1_n_0 ;
  wire \Q_temp_reg[4]_i_1_n_0 ;
  wire \Q_temp_reg[5]_i_1_n_0 ;
  wire \Q_temp_reg[6]_i_1_n_0 ;
  wire \Q_temp_reg[7]_i_1_n_0 ;
  wire \Q_temp_reg[7]_i_2_n_0 ;
  wire \Q_temp_reg[8]_i_1_n_0 ;
  wire \Q_temp_reg[9]_i_1_n_0 ;
  wire WRONG;
  wire WRONG_OBUF;
  wire WRONG_temp;
  wire WRONG_temp_reg_i_1_n_0;
  wire [2:0]stan_nastepny;
  wire [2:0]stan_obecny;

  IBUF BACK_IBUF_inst
       (.I(BACK),
        .O(BACK_IBUF));
  IBUF CE_IBUF_inst
       (.I(CE),
        .O(CE_IBUF));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF CLR_IBUF_inst
       (.I(CLR),
        .O(CLR_IBUF));
  IBUF \DATA_IBUF[0]_inst 
       (.I(DATA[0]),
        .O(DATA_IBUF[0]));
  IBUF \DATA_IBUF[1]_inst 
       (.I(DATA[1]),
        .O(DATA_IBUF[1]));
  IBUF \DATA_IBUF[2]_inst 
       (.I(DATA[2]),
        .O(DATA_IBUF[2]));
  IBUF \DATA_IBUF[3]_inst 
       (.I(DATA[3]),
        .O(DATA_IBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_nastepny_reg[0] 
       (.CLR(1'b0),
        .D(\FSM_sequential_stan_nastepny_reg[0]_i_1_n_0 ),
        .G(\FSM_sequential_stan_nastepny_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(stan_nastepny[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000E5A)) 
    \FSM_sequential_stan_nastepny_reg[0]_i_1 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[1]),
        .I2(stan_obecny[0]),
        .I3(BACK_IBUF),
        .I4(stan_obecny[2]),
        .O(\FSM_sequential_stan_nastepny_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_nastepny_reg[1] 
       (.CLR(1'b0),
        .D(\FSM_sequential_stan_nastepny_reg[1]_i_1_n_0 ),
        .G(\FSM_sequential_stan_nastepny_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(stan_nastepny[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00003CC4)) 
    \FSM_sequential_stan_nastepny_reg[1]_i_1 
       (.I0(BACK_IBUF),
        .I1(stan_obecny[1]),
        .I2(stan_obecny[0]),
        .I3(PUSH_IBUF),
        .I4(stan_obecny[2]),
        .O(\FSM_sequential_stan_nastepny_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_nastepny_reg[2] 
       (.CLR(1'b0),
        .D(\FSM_sequential_stan_nastepny_reg[2]_i_1_n_0 ),
        .G(\FSM_sequential_stan_nastepny_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(stan_nastepny[2]));
  LUT6 #(
    .INIT(64'h00FFFFFF80808080)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_1 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[1]),
        .I2(stan_obecny[0]),
        .I3(\FSM_sequential_stan_nastepny_reg[2]_i_3_n_0 ),
        .I4(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .I5(stan_obecny[2]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0FDFFF)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_2 
       (.I0(\FSM_sequential_stan_nastepny_reg[2]_i_3_n_0 ),
        .I1(BACK_IBUF),
        .I2(stan_obecny[2]),
        .I3(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .I4(stan_obecny[0]),
        .I5(stan_obecny[1]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_3 
       (.I0(ILE_PROB_OBUF[2]),
        .I1(ILE_PROB_OBUF[1]),
        .I2(ILE_PROB_OBUF[0]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_4 
       (.I0(\FSM_sequential_stan_nastepny_reg[2]_i_5_n_0 ),
        .I1(\FSM_sequential_stan_nastepny_reg[2]_i_6_n_0 ),
        .I2(\FSM_sequential_stan_nastepny_reg[2]_i_7_n_0 ),
        .I3(\FSM_sequential_stan_nastepny_reg[2]_i_8_n_0 ),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_5 
       (.I0(Q_temp[5]),
        .I1(Q_temp[4]),
        .I2(Q_temp[7]),
        .I3(Q_temp[6]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_6 
       (.I0(Q_temp[1]),
        .I1(Q_temp[0]),
        .I2(Q_temp[3]),
        .I3(Q_temp[2]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_7 
       (.I0(Q_temp[13]),
        .I1(Q_temp[12]),
        .I2(Q_temp[15]),
        .I3(Q_temp[14]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_stan_nastepny_reg[2]_i_8 
       (.I0(Q_temp[9]),
        .I1(Q_temp[8]),
        .I2(Q_temp[11]),
        .I3(Q_temp[10]),
        .O(\FSM_sequential_stan_nastepny_reg[2]_i_8_n_0 ));
  (* FSM_ENCODED_STATES = "s1:001,s3:011,s2:010,s0:000,s4:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_obecny_reg[0] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(stan_nastepny[0]),
        .Q(stan_obecny[0]));
  (* FSM_ENCODED_STATES = "s1:001,s3:011,s2:010,s0:000,s4:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_obecny_reg[1] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(stan_nastepny[1]),
        .Q(stan_obecny[1]));
  (* FSM_ENCODED_STATES = "s1:001,s3:011,s2:010,s0:000,s4:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_obecny_reg[2] 
       (.C(CLK_IBUF_BUFG),
        .CE(CE_IBUF),
        .CLR(CLR_IBUF),
        .D(stan_nastepny[2]),
        .Q(stan_obecny[2]));
  OBUF \ILE_PROB_OBUF[0]_inst 
       (.I(ILE_PROB_OBUF[0]),
        .O(ILE_PROB[0]));
  OBUF \ILE_PROB_OBUF[1]_inst 
       (.I(ILE_PROB_OBUF[1]),
        .O(ILE_PROB[1]));
  OBUF \ILE_PROB_OBUF[2]_inst 
       (.I(ILE_PROB_OBUF[2]),
        .O(ILE_PROB[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ILE_PROB_temp_reg[0] 
       (.CLR(1'b0),
        .D(\ILE_PROB_temp_reg[0]_i_1_n_0 ),
        .G(ILE_PROB_temp),
        .GE(1'b1),
        .Q(ILE_PROB_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ILE_PROB_temp_reg[0]_i_1 
       (.I0(ILE_PROB_OBUF[2]),
        .I1(ILE_PROB_OBUF[1]),
        .I2(ILE_PROB_OBUF[0]),
        .O(\ILE_PROB_temp_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ILE_PROB_temp_reg[1] 
       (.CLR(1'b0),
        .D(\ILE_PROB_temp_reg[1]_i_1_n_0 ),
        .G(ILE_PROB_temp),
        .GE(1'b1),
        .Q(ILE_PROB_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \ILE_PROB_temp_reg[1]_i_1 
       (.I0(ILE_PROB_OBUF[0]),
        .I1(ILE_PROB_OBUF[2]),
        .O(\ILE_PROB_temp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ILE_PROB_temp_reg[2] 
       (.CLR(1'b0),
        .D(\ILE_PROB_temp_reg[2]_i_1_n_0 ),
        .G(ILE_PROB_temp),
        .GE(1'b1),
        .Q(ILE_PROB_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h0D)) 
    \ILE_PROB_temp_reg[2]_i_1 
       (.I0(ILE_PROB_OBUF[1]),
        .I1(ILE_PROB_OBUF[2]),
        .I2(ILE_PROB_OBUF[0]),
        .O(\ILE_PROB_temp_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A2000000000000)) 
    \ILE_PROB_temp_reg[2]_i_2 
       (.I0(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .I1(ILE_PROB_OBUF[1]),
        .I2(ILE_PROB_OBUF[2]),
        .I3(ILE_PROB_OBUF[0]),
        .I4(JAKI_STAN_OBUF[4]),
        .I5(BACK_IBUF),
        .O(ILE_PROB_temp));
  OBUF \JAKI_STAN_OBUF[0]_inst 
       (.I(JAKI_STAN_OBUF[0]),
        .O(JAKI_STAN[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \JAKI_STAN_OBUF[0]_inst_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[2]),
        .O(JAKI_STAN_OBUF[0]));
  OBUF \JAKI_STAN_OBUF[1]_inst 
       (.I(JAKI_STAN_OBUF[1]),
        .O(JAKI_STAN[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \JAKI_STAN_OBUF[1]_inst_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[2]),
        .O(JAKI_STAN_OBUF[1]));
  OBUF \JAKI_STAN_OBUF[2]_inst 
       (.I(JAKI_STAN_OBUF[2]),
        .O(JAKI_STAN[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \JAKI_STAN_OBUF[2]_inst_i_1 
       (.I0(stan_obecny[0]),
        .I1(stan_obecny[1]),
        .I2(stan_obecny[2]),
        .O(JAKI_STAN_OBUF[2]));
  OBUF \JAKI_STAN_OBUF[3]_inst 
       (.I(JAKI_STAN_OBUF[3]),
        .O(JAKI_STAN[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \JAKI_STAN_OBUF[3]_inst_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[2]),
        .O(JAKI_STAN_OBUF[3]));
  OBUF \JAKI_STAN_OBUF[4]_inst 
       (.I(JAKI_STAN_OBUF[4]),
        .O(JAKI_STAN[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \JAKI_STAN_OBUF[4]_inst_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[2]),
        .O(JAKI_STAN_OBUF[4]));
  OBUF NOT_OK_OBUF_inst
       (.I(NOT_OK_OBUF),
        .O(NOT_OK));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    NOT_OK_temp_reg
       (.CLR(1'b0),
        .D(JAKI_STAN_OBUF[4]),
        .G(NOT_OK_temp),
        .GE(1'b1),
        .Q(NOT_OK_OBUF));
  LUT6 #(
    .INIT(64'h8F8F8F8F000F0000)) 
    NOT_OK_temp_reg_i_1
       (.I0(\FSM_sequential_stan_nastepny_reg[2]_i_3_n_0 ),
        .I1(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .I2(stan_obecny[2]),
        .I3(PUSH_IBUF),
        .I4(BACK_IBUF),
        .I5(NOT_OK_temp_reg_i_2_n_0),
        .O(NOT_OK_temp));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h1)) 
    NOT_OK_temp_reg_i_2
       (.I0(stan_obecny[0]),
        .I1(stan_obecny[1]),
        .O(NOT_OK_temp_reg_i_2_n_0));
  OBUF OK_OBUF_inst
       (.I(OK_OBUF),
        .O(OK));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    OK_temp_reg
       (.CLR(1'b0),
        .D(OK_temp_reg_i_1_n_0),
        .G(OK_temp),
        .GE(1'b1),
        .Q(OK_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    OK_temp_reg_i_1
       (.I0(stan_obecny[2]),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[1]),
        .I3(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .O(OK_temp_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h0300030003007777)) 
    OK_temp_reg_i_2
       (.I0(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .I1(stan_obecny[2]),
        .I2(PUSH_IBUF),
        .I3(BACK_IBUF),
        .I4(stan_obecny[1]),
        .I5(stan_obecny[0]),
        .O(OK_temp));
  IBUF PUSH_IBUF_inst
       (.I(PUSH),
        .O(PUSH_IBUF));
  OBUFT \Q_OBUF[0]_inst 
       (.I(1'b0),
        .O(Q[0]),
        .T(1'b1));
  OBUFT \Q_OBUF[10]_inst 
       (.I(1'b0),
        .O(Q[10]),
        .T(1'b1));
  OBUFT \Q_OBUF[11]_inst 
       (.I(1'b0),
        .O(Q[11]),
        .T(1'b1));
  OBUFT \Q_OBUF[12]_inst 
       (.I(1'b0),
        .O(Q[12]),
        .T(1'b1));
  OBUFT \Q_OBUF[13]_inst 
       (.I(1'b0),
        .O(Q[13]),
        .T(1'b1));
  OBUFT \Q_OBUF[14]_inst 
       (.I(1'b0),
        .O(Q[14]),
        .T(1'b1));
  OBUFT \Q_OBUF[15]_inst 
       (.I(1'b0),
        .O(Q[15]),
        .T(1'b1));
  OBUFT \Q_OBUF[1]_inst 
       (.I(1'b0),
        .O(Q[1]),
        .T(1'b1));
  OBUFT \Q_OBUF[2]_inst 
       (.I(1'b0),
        .O(Q[2]),
        .T(1'b1));
  OBUFT \Q_OBUF[3]_inst 
       (.I(1'b0),
        .O(Q[3]),
        .T(1'b1));
  OBUFT \Q_OBUF[4]_inst 
       (.I(1'b0),
        .O(Q[4]),
        .T(1'b1));
  OBUFT \Q_OBUF[5]_inst 
       (.I(1'b0),
        .O(Q[5]),
        .T(1'b1));
  OBUFT \Q_OBUF[6]_inst 
       (.I(1'b0),
        .O(Q[6]),
        .T(1'b1));
  OBUFT \Q_OBUF[7]_inst 
       (.I(1'b0),
        .O(Q[7]),
        .T(1'b1));
  OBUFT \Q_OBUF[8]_inst 
       (.I(1'b0),
        .O(Q[8]),
        .T(1'b1));
  OBUFT \Q_OBUF[9]_inst 
       (.I(1'b0),
        .O(Q[9]),
        .T(1'b1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[0] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[0]_i_1_n_0 ),
        .G(JAKI_STAN_OBUF[0]),
        .GE(1'b1),
        .Q(Q_temp[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Q_temp_reg[0]_i_1 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[1]),
        .I3(DATA_IBUF[0]),
        .O(\Q_temp_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[10] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[10]_i_1_n_0 ),
        .G(\Q_temp_reg[11]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[10]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[10]_i_1 
       (.I0(stan_obecny[0]),
        .I1(stan_obecny[1]),
        .I2(DATA_IBUF[2]),
        .O(\Q_temp_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[11] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[11]_i_1_n_0 ),
        .G(\Q_temp_reg[11]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[11]_i_1 
       (.I0(stan_obecny[0]),
        .I1(stan_obecny[1]),
        .I2(DATA_IBUF[3]),
        .O(\Q_temp_reg[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0203)) 
    \Q_temp_reg[11]_i_2 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[2]),
        .I2(stan_obecny[0]),
        .I3(stan_obecny[1]),
        .O(\Q_temp_reg[11]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[12] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[12]_i_1_n_0 ),
        .G(\Q_temp_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Q_temp_reg[12]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[0]),
        .O(\Q_temp_reg[12]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[13] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[13]_i_1_n_0 ),
        .G(\Q_temp_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Q_temp_reg[13]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[1]),
        .O(\Q_temp_reg[13]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[14] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[14]_i_1_n_0 ),
        .G(\Q_temp_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Q_temp_reg[14]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[2]),
        .O(\Q_temp_reg[14]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[15] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[15]_i_1_n_0 ),
        .G(\Q_temp_reg[15]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Q_temp_reg[15]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[3]),
        .O(\Q_temp_reg[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2003)) 
    \Q_temp_reg[15]_i_2 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[2]),
        .I2(stan_obecny[0]),
        .I3(stan_obecny[1]),
        .O(\Q_temp_reg[15]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[1] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[1]_i_1_n_0 ),
        .G(JAKI_STAN_OBUF[0]),
        .GE(1'b1),
        .Q(Q_temp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Q_temp_reg[1]_i_1 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[1]),
        .I3(DATA_IBUF[1]),
        .O(\Q_temp_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[2] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[2]_i_1_n_0 ),
        .G(JAKI_STAN_OBUF[0]),
        .GE(1'b1),
        .Q(Q_temp[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Q_temp_reg[2]_i_1 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[1]),
        .I3(DATA_IBUF[2]),
        .O(\Q_temp_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[3] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[3]_i_1_n_0 ),
        .G(JAKI_STAN_OBUF[0]),
        .GE(1'b1),
        .Q(Q_temp[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \Q_temp_reg[3]_i_1 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[1]),
        .I3(DATA_IBUF[3]),
        .O(\Q_temp_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[4] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[4]_i_1_n_0 ),
        .G(\Q_temp_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[4]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[0]),
        .O(\Q_temp_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[5] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[5]_i_1_n_0 ),
        .G(\Q_temp_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[5]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[1]),
        .O(\Q_temp_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[6] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[6]_i_1_n_0 ),
        .G(\Q_temp_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[6]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[2]),
        .O(\Q_temp_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[7] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[7]_i_1_n_0 ),
        .G(\Q_temp_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[7]_i_1 
       (.I0(stan_obecny[1]),
        .I1(stan_obecny[0]),
        .I2(DATA_IBUF[3]),
        .O(\Q_temp_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0023)) 
    \Q_temp_reg[7]_i_2 
       (.I0(PUSH_IBUF),
        .I1(stan_obecny[2]),
        .I2(stan_obecny[0]),
        .I3(stan_obecny[1]),
        .O(\Q_temp_reg[7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[8] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[8]_i_1_n_0 ),
        .G(\Q_temp_reg[11]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[8]_i_1 
       (.I0(stan_obecny[0]),
        .I1(stan_obecny[1]),
        .I2(DATA_IBUF[0]),
        .O(\Q_temp_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q_temp_reg[9] 
       (.CLR(1'b0),
        .D(\Q_temp_reg[9]_i_1_n_0 ),
        .G(\Q_temp_reg[11]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Q_temp[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \Q_temp_reg[9]_i_1 
       (.I0(stan_obecny[0]),
        .I1(stan_obecny[1]),
        .I2(DATA_IBUF[1]),
        .O(\Q_temp_reg[9]_i_1_n_0 ));
  OBUF WRONG_OBUF_inst
       (.I(WRONG_OBUF),
        .O(WRONG));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    WRONG_temp_reg
       (.CLR(1'b0),
        .D(WRONG_temp_reg_i_1_n_0),
        .G(WRONG_temp),
        .GE(1'b1),
        .Q(WRONG_OBUF));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    WRONG_temp_reg_i_1
       (.I0(stan_obecny[2]),
        .I1(stan_obecny[0]),
        .I2(stan_obecny[1]),
        .I3(ILE_PROB_OBUF[0]),
        .I4(ILE_PROB_OBUF[1]),
        .I5(ILE_PROB_OBUF[2]),
        .O(WRONG_temp_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h4F4F4F4F000F0000)) 
    WRONG_temp_reg_i_2
       (.I0(\FSM_sequential_stan_nastepny_reg[2]_i_3_n_0 ),
        .I1(\FSM_sequential_stan_nastepny_reg[2]_i_4_n_0 ),
        .I2(stan_obecny[2]),
        .I3(PUSH_IBUF),
        .I4(BACK_IBUF),
        .I5(NOT_OK_temp_reg_i_2_n_0),
        .O(WRONG_temp));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
