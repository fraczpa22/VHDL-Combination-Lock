// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Feb 10 20:43:14 2022
// Host        : LAPTOP-2MDBV9LF running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -sdf_anno false -force combination_lock.v
// Design      : combination_lock
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (CE_IBUF,
    CLK,
    NET1311,
    eqOp__23,
    AR,
    D,
    E);
  input CE_IBUF;
  input CLK;
  output NET1311;
  input eqOp__23;
  input [0:0]AR;
  input [0:0]D;
  input [0:0]E;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire [0:0]E;
  wire NET1311;
  wire eqOp__23;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_onehot_stan_obecny[4]_i_4 
       (.I0(DELAY[1]),
        .I1(DELAY[0]),
        .I2(DELAY[2]),
        .I3(CE_IBUF),
        .I4(eqOp__23),
        .O(NET1311));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_0
   (CE_IBUF,
    CLK,
    \DELAY_reg[2]_0 ,
    FSM_onehot_stan_obecny_reg,
    NET1482,
    eqOp__23,
    AR,
    D,
    E);
  input CE_IBUF;
  input CLK;
  output \DELAY_reg[2]_0 ;
  input [0:0]FSM_onehot_stan_obecny_reg;
  output NET1482;
  input eqOp__23;
  input [0:0]AR;
  input [0:0]D;
  input [0:0]E;

  wire [0:0]AR;
  wire CE_IBUF;
  wire CLK;
  wire [0:0]D;
  wire [2:0]DELAY;
  wire \DELAY_reg[2]_0 ;
  wire [0:0]E;
  wire [0:0]FSM_onehot_stan_obecny_reg;
  wire NET1482;
  wire eqOp__23;

  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D),
        .Q(DELAY[0]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[0]),
        .Q(DELAY[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DELAY_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(DELAY[1]),
        .Q(DELAY[2]));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_onehot_stan_obecny[3]_i_2 
       (.I0(DELAY[1]),
        .I1(DELAY[0]),
        .I2(DELAY[2]),
        .I3(CE_IBUF),
        .I4(eqOp__23),
        .O(NET1482));
  LUT6 #(
    .INIT(64'hFFBFFFFFFFFFFFFF)) 
    \FSM_onehot_stan_obecny[4]_i_5 
       (.I0(FSM_onehot_stan_obecny_reg),
        .I1(eqOp__23),
        .I2(CE_IBUF),
        .I3(DELAY[2]),
        .I4(DELAY[0]),
        .I5(DELAY[1]),
        .O(\DELAY_reg[2]_0 ));
endmodule

module Prescaler
   (CE_IBUF,
    CLK,
    eqOp__23,
    AR,
    CE,
    E,
    ROW_IBUF);
  input CE_IBUF;
  input CLK;
  output eqOp__23;
  input [0:0]AR;
  output [0:0]CE;
  output [0:0]E;
  input [0:3]ROW_IBUF;

  wire [0:0]AR;
  wire [0:0]CE;
  wire CE_IBUF;
  wire CLK;
  wire \DIVIDER[0]_i_2_n_0 ;
  wire \DIVIDER[0]_i_3_n_0 ;
  wire \DIVIDER[0]_i_4_n_0 ;
  wire \DIVIDER[0]_i_5_n_0 ;
  wire \DIVIDER[0]_i_6_n_0 ;
  wire \DIVIDER[12]_i_2_n_0 ;
  wire \DIVIDER[12]_i_3_n_0 ;
  wire \DIVIDER[12]_i_4_n_0 ;
  wire \DIVIDER[12]_i_5_n_0 ;
  wire \DIVIDER[16]_i_2_n_0 ;
  wire \DIVIDER[16]_i_3_n_0 ;
  wire \DIVIDER[16]_i_4_n_0 ;
  wire \DIVIDER[16]_i_5_n_0 ;
  wire \DIVIDER[20]_i_2_n_0 ;
  wire \DIVIDER[20]_i_3_n_0 ;
  wire \DIVIDER[20]_i_4_n_0 ;
  wire \DIVIDER[20]_i_5_n_0 ;
  wire \DIVIDER[24]_i_2_n_0 ;
  wire \DIVIDER[4]_i_2_n_0 ;
  wire \DIVIDER[4]_i_3_n_0 ;
  wire \DIVIDER[4]_i_4_n_0 ;
  wire \DIVIDER[4]_i_5_n_0 ;
  wire \DIVIDER[8]_i_2_n_0 ;
  wire \DIVIDER[8]_i_3_n_0 ;
  wire \DIVIDER[8]_i_4_n_0 ;
  wire \DIVIDER[8]_i_5_n_0 ;
  wire [24:0]DIVIDER_reg;
  wire \DIVIDER_reg[0]_i_1_n_0 ;
  wire \DIVIDER_reg[0]_i_1_n_4 ;
  wire \DIVIDER_reg[0]_i_1_n_5 ;
  wire \DIVIDER_reg[0]_i_1_n_6 ;
  wire \DIVIDER_reg[0]_i_1_n_7 ;
  wire \DIVIDER_reg[12]_i_1_n_0 ;
  wire \DIVIDER_reg[12]_i_1_n_4 ;
  wire \DIVIDER_reg[12]_i_1_n_5 ;
  wire \DIVIDER_reg[12]_i_1_n_6 ;
  wire \DIVIDER_reg[12]_i_1_n_7 ;
  wire \DIVIDER_reg[16]_i_1_n_0 ;
  wire \DIVIDER_reg[16]_i_1_n_4 ;
  wire \DIVIDER_reg[16]_i_1_n_5 ;
  wire \DIVIDER_reg[16]_i_1_n_6 ;
  wire \DIVIDER_reg[16]_i_1_n_7 ;
  wire \DIVIDER_reg[20]_i_1_n_0 ;
  wire \DIVIDER_reg[20]_i_1_n_4 ;
  wire \DIVIDER_reg[20]_i_1_n_5 ;
  wire \DIVIDER_reg[20]_i_1_n_6 ;
  wire \DIVIDER_reg[20]_i_1_n_7 ;
  wire \DIVIDER_reg[24]_i_1_n_7 ;
  wire \DIVIDER_reg[4]_i_1_n_0 ;
  wire \DIVIDER_reg[4]_i_1_n_4 ;
  wire \DIVIDER_reg[4]_i_1_n_5 ;
  wire \DIVIDER_reg[4]_i_1_n_6 ;
  wire \DIVIDER_reg[4]_i_1_n_7 ;
  wire \DIVIDER_reg[8]_i_1_n_0 ;
  wire \DIVIDER_reg[8]_i_1_n_4 ;
  wire \DIVIDER_reg[8]_i_1_n_5 ;
  wire \DIVIDER_reg[8]_i_1_n_6 ;
  wire \DIVIDER_reg[8]_i_1_n_7 ;
  wire [0:0]E;
  wire \FSM_onehot_stan_obecny[4]_i_10_n_0 ;
  wire \FSM_onehot_stan_obecny[4]_i_6_n_0 ;
  wire \FSM_onehot_stan_obecny[4]_i_7_n_0 ;
  wire \FSM_onehot_stan_obecny[4]_i_8_n_0 ;
  wire \FSM_onehot_stan_obecny[4]_i_9_n_0 ;
  wire [0:3]ROW_IBUF;
  wire eqOp__23;
  wire [2:0]\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_DIVIDER_reg[24]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_2 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__23),
        .O(\DIVIDER[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_3 
       (.I0(DIVIDER_reg[3]),
        .I1(eqOp__23),
        .O(\DIVIDER[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_4 
       (.I0(DIVIDER_reg[2]),
        .I1(eqOp__23),
        .O(\DIVIDER[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[0]_i_5 
       (.I0(DIVIDER_reg[1]),
        .I1(eqOp__23),
        .O(\DIVIDER[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DIVIDER[0]_i_6 
       (.I0(DIVIDER_reg[0]),
        .I1(eqOp__23),
        .O(\DIVIDER[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_2 
       (.I0(DIVIDER_reg[15]),
        .I1(eqOp__23),
        .O(\DIVIDER[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_3 
       (.I0(DIVIDER_reg[14]),
        .I1(eqOp__23),
        .O(\DIVIDER[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_4 
       (.I0(DIVIDER_reg[13]),
        .I1(eqOp__23),
        .O(\DIVIDER[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[12]_i_5 
       (.I0(DIVIDER_reg[12]),
        .I1(eqOp__23),
        .O(\DIVIDER[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_2 
       (.I0(DIVIDER_reg[19]),
        .I1(eqOp__23),
        .O(\DIVIDER[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_3 
       (.I0(DIVIDER_reg[18]),
        .I1(eqOp__23),
        .O(\DIVIDER[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_4 
       (.I0(DIVIDER_reg[17]),
        .I1(eqOp__23),
        .O(\DIVIDER[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[16]_i_5 
       (.I0(DIVIDER_reg[16]),
        .I1(eqOp__23),
        .O(\DIVIDER[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_2 
       (.I0(DIVIDER_reg[23]),
        .I1(eqOp__23),
        .O(\DIVIDER[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_3 
       (.I0(DIVIDER_reg[22]),
        .I1(eqOp__23),
        .O(\DIVIDER[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_4 
       (.I0(DIVIDER_reg[21]),
        .I1(eqOp__23),
        .O(\DIVIDER[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[20]_i_5 
       (.I0(DIVIDER_reg[20]),
        .I1(eqOp__23),
        .O(\DIVIDER[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[24]_i_2 
       (.I0(DIVIDER_reg[24]),
        .I1(eqOp__23),
        .O(\DIVIDER[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_2 
       (.I0(DIVIDER_reg[7]),
        .I1(eqOp__23),
        .O(\DIVIDER[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_3 
       (.I0(DIVIDER_reg[6]),
        .I1(eqOp__23),
        .O(\DIVIDER[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_4 
       (.I0(DIVIDER_reg[5]),
        .I1(eqOp__23),
        .O(\DIVIDER[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[4]_i_5 
       (.I0(DIVIDER_reg[4]),
        .I1(eqOp__23),
        .O(\DIVIDER[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_2 
       (.I0(DIVIDER_reg[11]),
        .I1(eqOp__23),
        .O(\DIVIDER[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_3 
       (.I0(DIVIDER_reg[10]),
        .I1(eqOp__23),
        .O(\DIVIDER[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_4 
       (.I0(DIVIDER_reg[9]),
        .I1(eqOp__23),
        .O(\DIVIDER[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \DIVIDER[8]_i_5 
       (.I0(DIVIDER_reg[8]),
        .I1(eqOp__23),
        .O(\DIVIDER[8]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[0] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_7 ),
        .Q(DIVIDER_reg[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\DIVIDER_reg[0]_i_1_n_0 ,\NLW_DIVIDER_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\DIVIDER[0]_i_2_n_0 }),
        .O({\DIVIDER_reg[0]_i_1_n_4 ,\DIVIDER_reg[0]_i_1_n_5 ,\DIVIDER_reg[0]_i_1_n_6 ,\DIVIDER_reg[0]_i_1_n_7 }),
        .S({\DIVIDER[0]_i_3_n_0 ,\DIVIDER[0]_i_4_n_0 ,\DIVIDER[0]_i_5_n_0 ,\DIVIDER[0]_i_6_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[10] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_5 ),
        .Q(DIVIDER_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[11] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_4 ),
        .Q(DIVIDER_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[12] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_7 ),
        .Q(DIVIDER_reg[12]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[12]_i_1 
       (.CI(\DIVIDER_reg[8]_i_1_n_0 ),
        .CO({\DIVIDER_reg[12]_i_1_n_0 ,\NLW_DIVIDER_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[12]_i_1_n_4 ,\DIVIDER_reg[12]_i_1_n_5 ,\DIVIDER_reg[12]_i_1_n_6 ,\DIVIDER_reg[12]_i_1_n_7 }),
        .S({\DIVIDER[12]_i_2_n_0 ,\DIVIDER[12]_i_3_n_0 ,\DIVIDER[12]_i_4_n_0 ,\DIVIDER[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[13] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_6 ),
        .Q(DIVIDER_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[14] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_5 ),
        .Q(DIVIDER_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[15] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[12]_i_1_n_4 ),
        .Q(DIVIDER_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[16] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_7 ),
        .Q(DIVIDER_reg[16]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[16]_i_1 
       (.CI(\DIVIDER_reg[12]_i_1_n_0 ),
        .CO({\DIVIDER_reg[16]_i_1_n_0 ,\NLW_DIVIDER_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[16]_i_1_n_4 ,\DIVIDER_reg[16]_i_1_n_5 ,\DIVIDER_reg[16]_i_1_n_6 ,\DIVIDER_reg[16]_i_1_n_7 }),
        .S({\DIVIDER[16]_i_2_n_0 ,\DIVIDER[16]_i_3_n_0 ,\DIVIDER[16]_i_4_n_0 ,\DIVIDER[16]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[17] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_6 ),
        .Q(DIVIDER_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[18] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_5 ),
        .Q(DIVIDER_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[19] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[16]_i_1_n_4 ),
        .Q(DIVIDER_reg[19]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[1] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_6 ),
        .Q(DIVIDER_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[20] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_7 ),
        .Q(DIVIDER_reg[20]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[20]_i_1 
       (.CI(\DIVIDER_reg[16]_i_1_n_0 ),
        .CO({\DIVIDER_reg[20]_i_1_n_0 ,\NLW_DIVIDER_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[20]_i_1_n_4 ,\DIVIDER_reg[20]_i_1_n_5 ,\DIVIDER_reg[20]_i_1_n_6 ,\DIVIDER_reg[20]_i_1_n_7 }),
        .S({\DIVIDER[20]_i_2_n_0 ,\DIVIDER[20]_i_3_n_0 ,\DIVIDER[20]_i_4_n_0 ,\DIVIDER[20]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[21] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_6 ),
        .Q(DIVIDER_reg[21]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[22] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_5 ),
        .Q(DIVIDER_reg[22]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[23] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[20]_i_1_n_4 ),
        .Q(DIVIDER_reg[23]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[24] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[24]_i_1_n_7 ),
        .Q(DIVIDER_reg[24]));
  CARRY4 \DIVIDER_reg[24]_i_1 
       (.CI(\DIVIDER_reg[20]_i_1_n_0 ),
        .CO(\NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DIVIDER_reg[24]_i_1_O_UNCONNECTED [3:1],\DIVIDER_reg[24]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\DIVIDER[24]_i_2_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[2] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_5 ),
        .Q(DIVIDER_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[3] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[0]_i_1_n_4 ),
        .Q(DIVIDER_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[4] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_7 ),
        .Q(DIVIDER_reg[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[4]_i_1 
       (.CI(\DIVIDER_reg[0]_i_1_n_0 ),
        .CO({\DIVIDER_reg[4]_i_1_n_0 ,\NLW_DIVIDER_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[4]_i_1_n_4 ,\DIVIDER_reg[4]_i_1_n_5 ,\DIVIDER_reg[4]_i_1_n_6 ,\DIVIDER_reg[4]_i_1_n_7 }),
        .S({\DIVIDER[4]_i_2_n_0 ,\DIVIDER[4]_i_3_n_0 ,\DIVIDER[4]_i_4_n_0 ,\DIVIDER[4]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[5] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_6 ),
        .Q(DIVIDER_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[6] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_5 ),
        .Q(DIVIDER_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[7] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[4]_i_1_n_4 ),
        .Q(DIVIDER_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[8] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_7 ),
        .Q(DIVIDER_reg[8]));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \DIVIDER_reg[8]_i_1 
       (.CI(\DIVIDER_reg[4]_i_1_n_0 ),
        .CO({\DIVIDER_reg[8]_i_1_n_0 ,\NLW_DIVIDER_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\DIVIDER_reg[8]_i_1_n_4 ,\DIVIDER_reg[8]_i_1_n_5 ,\DIVIDER_reg[8]_i_1_n_6 ,\DIVIDER_reg[8]_i_1_n_7 }),
        .S({\DIVIDER[8]_i_2_n_0 ,\DIVIDER[8]_i_3_n_0 ,\DIVIDER[8]_i_4_n_0 ,\DIVIDER[8]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \DIVIDER_reg[9] 
       (.C(CLK),
        .CE(CE_IBUF),
        .CLR(AR),
        .D(\DIVIDER_reg[8]_i_1_n_6 ),
        .Q(DIVIDER_reg[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_stan_obecny[4]_i_1 
       (.I0(eqOp__23),
        .I1(CE_IBUF),
        .O(E));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_onehot_stan_obecny[4]_i_10 
       (.I0(DIVIDER_reg[1]),
        .I1(DIVIDER_reg[0]),
        .I2(DIVIDER_reg[3]),
        .I3(DIVIDER_reg[2]),
        .O(\FSM_onehot_stan_obecny[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h00004000)) 
    \FSM_onehot_stan_obecny[4]_i_3 
       (.I0(\FSM_onehot_stan_obecny[4]_i_6_n_0 ),
        .I1(\FSM_onehot_stan_obecny[4]_i_7_n_0 ),
        .I2(\FSM_onehot_stan_obecny[4]_i_8_n_0 ),
        .I3(\FSM_onehot_stan_obecny[4]_i_9_n_0 ),
        .I4(\FSM_onehot_stan_obecny[4]_i_10_n_0 ),
        .O(eqOp__23));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_stan_obecny[4]_i_6 
       (.I0(DIVIDER_reg[13]),
        .I1(DIVIDER_reg[11]),
        .I2(DIVIDER_reg[12]),
        .I3(DIVIDER_reg[18]),
        .I4(DIVIDER_reg[14]),
        .I5(DIVIDER_reg[17]),
        .O(\FSM_onehot_stan_obecny[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_stan_obecny[4]_i_7 
       (.I0(DIVIDER_reg[23]),
        .I1(DIVIDER_reg[22]),
        .I2(DIVIDER_reg[24]),
        .I3(DIVIDER_reg[19]),
        .I4(DIVIDER_reg[20]),
        .I5(DIVIDER_reg[21]),
        .O(\FSM_onehot_stan_obecny[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_onehot_stan_obecny[4]_i_8 
       (.I0(DIVIDER_reg[8]),
        .I1(DIVIDER_reg[5]),
        .I2(DIVIDER_reg[6]),
        .I3(DIVIDER_reg[16]),
        .I4(DIVIDER_reg[10]),
        .I5(DIVIDER_reg[15]),
        .O(\FSM_onehot_stan_obecny[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_stan_obecny[4]_i_9 
       (.I0(DIVIDER_reg[9]),
        .I1(DIVIDER_reg[7]),
        .I2(DIVIDER_reg[4]),
        .O(\FSM_onehot_stan_obecny[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0880800080000000)) 
    \outkey[3]_i_1 
       (.I0(eqOp__23),
        .I1(CE_IBUF),
        .I2(ROW_IBUF[2]),
        .I3(ROW_IBUF[3]),
        .I4(ROW_IBUF[1]),
        .I5(ROW_IBUF[0]),
        .O(CE));
endmodule

(* ECO_CHECKSUM = "562b69f6" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module combination_lock
   (BACK,
    CE,
    CLK,
    CLR,
    OK,
    PUSH,
    WRONG,
    AN,
    COLUMN,
    JAKI_STAN,
    LED_out,
    ROW);
  input BACK;
  input CE;
  input CLK;
  input CLR;
  output OK;
  input PUSH;
  output WRONG;
  output [7:0]AN;
  output [0:3]COLUMN;
  output [4:0]JAKI_STAN;
  output [6:0]LED_out;
  input [0:3]ROW;

  wire [7:0]AN;
  wire [3:0]AN_OBUF;
  wire BACK;
  wire BACK_IBUF;
  wire [3:0]BUS1981;
  wire CE;
  wire CE_IBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire CLR;
  wire CLR_IBUF;
  wire [0:3]COLUMN;
  wire [3:0]COLUMN_OBUF;
  wire [4:0]JAKI_STAN;
  wire [4:0]JAKI_STAN_OBUF;
  wire [6:0]LED_out;
  wire [6:0]LED_out_OBUF;
  wire NET1311;
  wire NET1479;
  wire NET1482;
  wire OK;
  wire OK_OBUF;
  wire PUSH;
  wire PUSH_IBUF;
  wire [0:3]ROW;
  wire [3:0]ROW_IBUF;
  wire U1_n_7;
  wire U6_n_2;
  wire U9_n_0;
  wire WRONG;
  wire WRONG_OBUF;
  wire eqOp__23;
  wire [1:0]stan_obecny;

  OBUF \AN_OBUF[0]_inst 
       (.I(AN_OBUF[0]),
        .O(AN[0]));
  OBUF \AN_OBUF[1]_inst 
       (.I(AN_OBUF[1]),
        .O(AN[1]));
  OBUF \AN_OBUF[2]_inst 
       (.I(AN_OBUF[2]),
        .O(AN[2]));
  OBUF \AN_OBUF[3]_inst 
       (.I(AN_OBUF[3]),
        .O(AN[3]));
  OBUF \AN_OBUF[4]_inst 
       (.I(1'b1),
        .O(AN[4]));
  OBUF \AN_OBUF[5]_inst 
       (.I(1'b1),
        .O(AN[5]));
  OBUF \AN_OBUF[6]_inst 
       (.I(1'b1),
        .O(AN[6]));
  OBUF \AN_OBUF[7]_inst 
       (.I(1'b1),
        .O(AN[7]));
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
  OBUF \COLUMN_OBUF[0]_inst 
       (.I(COLUMN_OBUF[0]),
        .O(COLUMN[0]));
  OBUF \COLUMN_OBUF[1]_inst 
       (.I(COLUMN_OBUF[1]),
        .O(COLUMN[1]));
  OBUF \COLUMN_OBUF[2]_inst 
       (.I(COLUMN_OBUF[2]),
        .O(COLUMN[2]));
  OBUF \COLUMN_OBUF[3]_inst 
       (.I(COLUMN_OBUF[3]),
        .O(COLUMN[3]));
  OBUF \JAKI_STAN_OBUF[0]_inst 
       (.I(JAKI_STAN_OBUF[0]),
        .O(JAKI_STAN[0]));
  OBUF \JAKI_STAN_OBUF[1]_inst 
       (.I(JAKI_STAN_OBUF[1]),
        .O(JAKI_STAN[1]));
  OBUF \JAKI_STAN_OBUF[2]_inst 
       (.I(JAKI_STAN_OBUF[2]),
        .O(JAKI_STAN[2]));
  OBUF \JAKI_STAN_OBUF[3]_inst 
       (.I(JAKI_STAN_OBUF[3]),
        .O(JAKI_STAN[3]));
  OBUF \JAKI_STAN_OBUF[4]_inst 
       (.I(JAKI_STAN_OBUF[4]),
        .O(JAKI_STAN[4]));
  OBUF \LED_out_OBUF[0]_inst 
       (.I(LED_out_OBUF[0]),
        .O(LED_out[0]));
  OBUF \LED_out_OBUF[1]_inst 
       (.I(LED_out_OBUF[1]),
        .O(LED_out[1]));
  OBUF \LED_out_OBUF[2]_inst 
       (.I(LED_out_OBUF[2]),
        .O(LED_out[2]));
  OBUF \LED_out_OBUF[3]_inst 
       (.I(LED_out_OBUF[3]),
        .O(LED_out[3]));
  OBUF \LED_out_OBUF[4]_inst 
       (.I(LED_out_OBUF[4]),
        .O(LED_out[4]));
  OBUF \LED_out_OBUF[5]_inst 
       (.I(LED_out_OBUF[5]),
        .O(LED_out[5]));
  OBUF \LED_out_OBUF[6]_inst 
       (.I(LED_out_OBUF[6]),
        .O(LED_out[6]));
  OBUF OK_OBUF_inst
       (.I(OK_OBUF),
        .O(OK));
  IBUF PUSH_IBUF_inst
       (.I(PUSH),
        .O(PUSH_IBUF));
  IBUF \ROW_IBUF[0]_inst 
       (.I(ROW[0]),
        .O(ROW_IBUF[0]));
  IBUF \ROW_IBUF[1]_inst 
       (.I(ROW[1]),
        .O(ROW_IBUF[1]));
  IBUF \ROW_IBUF[2]_inst 
       (.I(ROW[2]),
        .O(ROW_IBUF[2]));
  IBUF \ROW_IBUF[3]_inst 
       (.I(ROW[3]),
        .O(ROW_IBUF[3]));
  lock U1
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .E(NET1479),
        .\FSM_onehot_stan_obecny_reg[0]_0 (U9_n_0),
        .LED_out_OBUF(LED_out_OBUF),
        .\LED_out_OBUF[6]_inst_i_1_0 (stan_obecny),
        .NET1311(NET1311),
        .NET1482(NET1482),
        .OK_OBUF(OK_OBUF),
        .OK_temp_reg_i_6_0(BUS1981),
        .Q(JAKI_STAN_OBUF),
        .WRONG_OBUF(WRONG_OBUF),
        .outkey_reg(U1_n_7));
  sev_seg U3
       (.AN_OBUF(AN_OBUF),
        .AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .E(NET1479),
        .Q(stan_obecny));
  keypad_controller U4
       (.AR(CLR_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .COLUMN_OBUF({COLUMN_OBUF[0],COLUMN_OBUF[1],COLUMN_OBUF[2],COLUMN_OBUF[3]}),
        .E(NET1479),
        .Q(BUS1981),
        .ROW_IBUF({ROW_IBUF[0],ROW_IBUF[1],ROW_IBUF[2],ROW_IBUF[3]}),
        .\outkey_reg[3]_0 (U6_n_2));
  Prescaler U6
       (.AR(CLR_IBUF),
        .CE(U6_n_2),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .E(NET1479),
        .ROW_IBUF({ROW_IBUF[0],ROW_IBUF[1],ROW_IBUF[2],ROW_IBUF[3]}),
        .eqOp__23(eqOp__23));
  Debouncer U7
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(PUSH_IBUF),
        .E(NET1479),
        .NET1311(NET1311),
        .eqOp__23(eqOp__23));
  Debouncer_0 U9
       (.AR(CLR_IBUF),
        .CE_IBUF(CE_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(BACK_IBUF),
        .\DELAY_reg[2]_0 (U9_n_0),
        .E(NET1479),
        .FSM_onehot_stan_obecny_reg(U1_n_7),
        .NET1482(NET1482),
        .eqOp__23(eqOp__23));
  OBUF WRONG_OBUF_inst
       (.I(WRONG_OBUF),
        .O(WRONG));
endmodule

module keypad_controller
   (CLK,
    AR,
    COLUMN_OBUF,
    E,
    Q,
    ROW_IBUF,
    \outkey_reg[3]_0 );
  input CLK;
  input [0:0]AR;
  output [0:3]COLUMN_OBUF;
  input [0:0]E;
  output [3:0]Q;
  input [0:3]ROW_IBUF;
  input [0:0]\outkey_reg[3]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:3]COLUMN_OBUF;
  wire [1:0]COLUMN__0;
  wire [0:0]E;
  wire \FSM_sequential_COLUMN[0]_i_1_n_0 ;
  wire \FSM_sequential_COLUMN[1]_i_1_n_0 ;
  wire [3:0]Q;
  wire [0:3]ROW_IBUF;
  wire \outkey[0]_i_1_n_0 ;
  wire \outkey[1]_i_1_n_0 ;
  wire \outkey[2]_i_1_n_0 ;
  wire \outkey[3]_i_2_n_0 ;
  wire [0:0]\outkey_reg[3]_0 ;

  LUT2 #(
    .INIT(4'h7)) 
    \COLUMN_OBUF[0]_inst_i_1 
       (.I0(COLUMN__0[0]),
        .I1(COLUMN__0[1]),
        .O(COLUMN_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \COLUMN_OBUF[1]_inst_i_1 
       (.I0(COLUMN__0[0]),
        .I1(COLUMN__0[1]),
        .O(COLUMN_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \COLUMN_OBUF[2]_inst_i_1 
       (.I0(COLUMN__0[1]),
        .I1(COLUMN__0[0]),
        .O(COLUMN_OBUF[2]));
  LUT2 #(
    .INIT(4'hE)) 
    \COLUMN_OBUF[3]_inst_i_1 
       (.I0(COLUMN__0[0]),
        .I1(COLUMN__0[1]),
        .O(COLUMN_OBUF[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_COLUMN[0]_i_1 
       (.I0(COLUMN__0[0]),
        .O(\FSM_sequential_COLUMN[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_COLUMN[1]_i_1 
       (.I0(COLUMN__0[0]),
        .I1(COLUMN__0[1]),
        .O(\FSM_sequential_COLUMN[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_COLUMN_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_sequential_COLUMN[0]_i_1_n_0 ),
        .Q(COLUMN__0[0]));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_COLUMN_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_sequential_COLUMN[1]_i_1_n_0 ),
        .Q(COLUMN__0[1]));
  LUT5 #(
    .INIT(32'hA66AAAAA)) 
    \outkey[0]_i_1 
       (.I0(COLUMN__0[0]),
        .I1(ROW_IBUF[2]),
        .I2(ROW_IBUF[1]),
        .I3(ROW_IBUF[3]),
        .I4(ROW_IBUF[0]),
        .O(\outkey[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3343B33393333333)) 
    \outkey[1]_i_1 
       (.I0(COLUMN__0[0]),
        .I1(COLUMN__0[1]),
        .I2(ROW_IBUF[0]),
        .I3(ROW_IBUF[3]),
        .I4(ROW_IBUF[1]),
        .I5(ROW_IBUF[2]),
        .O(\outkey[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCC6CACCCACCCCCCC)) 
    \outkey[2]_i_1 
       (.I0(COLUMN__0[0]),
        .I1(COLUMN__0[1]),
        .I2(ROW_IBUF[0]),
        .I3(ROW_IBUF[3]),
        .I4(ROW_IBUF[1]),
        .I5(ROW_IBUF[2]),
        .O(\outkey[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEB3FFFFF)) 
    \outkey[3]_i_2 
       (.I0(COLUMN__0[1]),
        .I1(ROW_IBUF[2]),
        .I2(ROW_IBUF[1]),
        .I3(ROW_IBUF[3]),
        .I4(ROW_IBUF[0]),
        .O(\outkey[3]_i_2_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \outkey_reg[0] 
       (.C(CLK),
        .CE(\outkey_reg[3]_0 ),
        .D(\outkey[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \outkey_reg[1] 
       (.C(CLK),
        .CE(\outkey_reg[3]_0 ),
        .D(\outkey[1]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \outkey_reg[2] 
       (.C(CLK),
        .CE(\outkey_reg[3]_0 ),
        .D(\outkey[2]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \outkey_reg[3] 
       (.C(CLK),
        .CE(\outkey_reg[3]_0 ),
        .D(\outkey[3]_i_2_n_0 ),
        .PRE(AR),
        .Q(Q[3]));
endmodule

module lock
   (CLK,
    \FSM_onehot_stan_obecny_reg[0]_0 ,
    NET1311,
    NET1482,
    OK_OBUF,
    WRONG_OBUF,
    outkey_reg,
    AR,
    E,
    LED_out_OBUF,
    \LED_out_OBUF[6]_inst_i_1_0 ,
    OK_temp_reg_i_6_0,
    Q);
  input CLK;
  input \FSM_onehot_stan_obecny_reg[0]_0 ;
  input NET1311;
  input NET1482;
  output OK_OBUF;
  output WRONG_OBUF;
  output [3:3]outkey_reg;
  input [0:0]AR;
  input [0:0]E;
  output [6:0]LED_out_OBUF;
  input [1:0]\LED_out_OBUF[6]_inst_i_1_0 ;
  input [3:0]OK_temp_reg_i_6_0;
  output [4:0]Q;

  wire [0:0]AR;
  wire [3:0]BUS1860;
  wire [3:0]BUS1868;
  wire [3:0]BUS1876;
  wire [3:0]BUS1884;
  wire CLK;
  wire [0:0]E;
  wire \FSM_onehot_stan_obecny[0]_i_1_n_0 ;
  wire \FSM_onehot_stan_obecny[1]_i_1_n_0 ;
  wire \FSM_onehot_stan_obecny[2]_i_1_n_0 ;
  wire \FSM_onehot_stan_obecny[3]_i_1_n_0 ;
  wire \FSM_onehot_stan_obecny[4]_i_2_n_0 ;
  wire \FSM_onehot_stan_obecny_reg[0]_0 ;
  wire [6:0]LED_out_OBUF;
  wire \LED_out_OBUF[0]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[0]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[0]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[0]_inst_i_5_n_0 ;
  wire \LED_out_OBUF[1]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[1]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[1]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[1]_inst_i_5_n_0 ;
  wire \LED_out_OBUF[2]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[2]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[2]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[2]_inst_i_5_n_0 ;
  wire \LED_out_OBUF[3]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[3]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[3]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[3]_inst_i_5_n_0 ;
  wire \LED_out_OBUF[4]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[4]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[4]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[4]_inst_i_5_n_0 ;
  wire \LED_out_OBUF[5]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[5]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[5]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[5]_inst_i_5_n_0 ;
  wire [1:0]\LED_out_OBUF[6]_inst_i_1_0 ;
  wire \LED_out_OBUF[6]_inst_i_2_n_0 ;
  wire \LED_out_OBUF[6]_inst_i_3_n_0 ;
  wire \LED_out_OBUF[6]_inst_i_4_n_0 ;
  wire \LED_out_OBUF[6]_inst_i_5_n_0 ;
  wire NET1311;
  wire NET1482;
  wire OK_OBUF;
  wire OK_temp;
  wire OK_temp_reg_i_1_n_0;
  wire OK_temp_reg_i_4_n_0;
  wire OK_temp_reg_i_5_n_0;
  wire [3:0]OK_temp_reg_i_6_0;
  wire OK_temp_reg_i_7_n_0;
  wire [4:0]Q;
  wire WRONG_OBUF;
  wire WRONG_temp;
  wire eqOp;
  wire [3:3]outkey_reg;

  LUT6 #(
    .INIT(64'h00F800F8FFFF00F8)) 
    \FSM_onehot_stan_obecny[0]_i_1 
       (.I0(NET1482),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(NET1311),
        .I4(Q[4]),
        .I5(\FSM_onehot_stan_obecny_reg[0]_0 ),
        .O(\FSM_onehot_stan_obecny[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hCFC0CACA)) 
    \FSM_onehot_stan_obecny[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(NET1311),
        .I3(Q[2]),
        .I4(NET1482),
        .O(\FSM_onehot_stan_obecny[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hCFC0CACA)) 
    \FSM_onehot_stan_obecny[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(NET1311),
        .I3(Q[3]),
        .I4(NET1482),
        .O(\FSM_onehot_stan_obecny[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8B88)) 
    \FSM_onehot_stan_obecny[3]_i_1 
       (.I0(Q[2]),
        .I1(NET1311),
        .I2(NET1482),
        .I3(Q[3]),
        .O(\FSM_onehot_stan_obecny[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \FSM_onehot_stan_obecny[4]_i_2 
       (.I0(NET1311),
        .I1(Q[3]),
        .I2(\FSM_onehot_stan_obecny_reg[0]_0 ),
        .I3(Q[4]),
        .O(\FSM_onehot_stan_obecny[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_stan_obecny_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\FSM_onehot_stan_obecny[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stan_obecny_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_onehot_stan_obecny[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stan_obecny_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_onehot_stan_obecny[2]_i_1_n_0 ),
        .Q(Q[2]));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stan_obecny_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_onehot_stan_obecny[3]_i_1_n_0 ),
        .Q(Q[3]));
  (* FSM_ENCODED_STATES = "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_stan_obecny_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\FSM_onehot_stan_obecny[4]_i_2_n_0 ),
        .Q(Q[4]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[0]_inst_i_1 
       (.I0(\LED_out_OBUF[0]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[0]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[0]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[0]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[0]));
  LUT6 #(
    .INIT(64'h0000049100000000)) 
    \LED_out_OBUF[0]_inst_i_2 
       (.I0(BUS1868[1]),
        .I1(BUS1868[2]),
        .I2(BUS1868[0]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000491)) 
    \LED_out_OBUF[0]_inst_i_3 
       (.I0(BUS1860[1]),
        .I1(BUS1860[2]),
        .I2(BUS1860[0]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0491000000000000)) 
    \LED_out_OBUF[0]_inst_i_4 
       (.I0(BUS1884[1]),
        .I1(BUS1884[2]),
        .I2(BUS1884[0]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[0]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000049100000000)) 
    \LED_out_OBUF[0]_inst_i_5 
       (.I0(BUS1876[1]),
        .I1(BUS1876[2]),
        .I2(BUS1876[0]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[0]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[1]_inst_i_1 
       (.I0(\LED_out_OBUF[1]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[1]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[1]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[1]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000408E00000000)) 
    \LED_out_OBUF[1]_inst_i_2 
       (.I0(BUS1868[1]),
        .I1(BUS1868[0]),
        .I2(BUS1868[2]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000408E)) 
    \LED_out_OBUF[1]_inst_i_3 
       (.I0(BUS1860[1]),
        .I1(BUS1860[0]),
        .I2(BUS1860[2]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[1]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h408E000000000000)) 
    \LED_out_OBUF[1]_inst_i_4 
       (.I0(BUS1884[1]),
        .I1(BUS1884[0]),
        .I2(BUS1884[2]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000408E00000000)) 
    \LED_out_OBUF[1]_inst_i_5 
       (.I0(BUS1876[1]),
        .I1(BUS1876[0]),
        .I2(BUS1876[2]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[1]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[2]_inst_i_1 
       (.I0(\LED_out_OBUF[2]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[2]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[2]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[2]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[2]));
  LUT6 #(
    .INIT(64'h000002AE00000000)) 
    \LED_out_OBUF[2]_inst_i_2 
       (.I0(BUS1868[0]),
        .I1(BUS1868[2]),
        .I2(BUS1868[1]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000002AE)) 
    \LED_out_OBUF[2]_inst_i_3 
       (.I0(BUS1860[0]),
        .I1(BUS1860[2]),
        .I2(BUS1860[1]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[2]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h02AE000000000000)) 
    \LED_out_OBUF[2]_inst_i_4 
       (.I0(BUS1884[0]),
        .I1(BUS1884[2]),
        .I2(BUS1884[1]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[2]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000002AE00000000)) 
    \LED_out_OBUF[2]_inst_i_5 
       (.I0(BUS1876[0]),
        .I1(BUS1876[2]),
        .I2(BUS1876[1]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[2]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[3]_inst_i_1 
       (.I0(\LED_out_OBUF[3]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[3]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[3]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[3]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[3]));
  LUT6 #(
    .INIT(64'h0000829400000000)) 
    \LED_out_OBUF[3]_inst_i_2 
       (.I0(BUS1868[1]),
        .I1(BUS1868[0]),
        .I2(BUS1868[2]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008294)) 
    \LED_out_OBUF[3]_inst_i_3 
       (.I0(BUS1860[1]),
        .I1(BUS1860[0]),
        .I2(BUS1860[2]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[3]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8294000000000000)) 
    \LED_out_OBUF[3]_inst_i_4 
       (.I0(BUS1884[1]),
        .I1(BUS1884[0]),
        .I2(BUS1884[2]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[3]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000829400000000)) 
    \LED_out_OBUF[3]_inst_i_5 
       (.I0(BUS1876[1]),
        .I1(BUS1876[0]),
        .I2(BUS1876[2]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[3]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[4]_inst_i_1 
       (.I0(\LED_out_OBUF[4]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[4]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[4]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[4]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[4]));
  LUT6 #(
    .INIT(64'h00008A0400000000)) 
    \LED_out_OBUF[4]_inst_i_2 
       (.I0(BUS1868[2]),
        .I1(BUS1868[1]),
        .I2(BUS1868[0]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008A04)) 
    \LED_out_OBUF[4]_inst_i_3 
       (.I0(BUS1860[2]),
        .I1(BUS1860[1]),
        .I2(BUS1860[0]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[4]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8A04000000000000)) 
    \LED_out_OBUF[4]_inst_i_4 
       (.I0(BUS1884[2]),
        .I1(BUS1884[1]),
        .I2(BUS1884[0]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[4]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00008A0400000000)) 
    \LED_out_OBUF[4]_inst_i_5 
       (.I0(BUS1876[2]),
        .I1(BUS1876[1]),
        .I2(BUS1876[0]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[4]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[5]_inst_i_1 
       (.I0(\LED_out_OBUF[5]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[5]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[5]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[5]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[5]));
  LUT6 #(
    .INIT(64'h0000B86000000000)) 
    \LED_out_OBUF[5]_inst_i_2 
       (.I0(BUS1868[1]),
        .I1(BUS1868[0]),
        .I2(BUS1868[2]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000B860)) 
    \LED_out_OBUF[5]_inst_i_3 
       (.I0(BUS1860[1]),
        .I1(BUS1860[0]),
        .I2(BUS1860[2]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[5]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB860000000000000)) 
    \LED_out_OBUF[5]_inst_i_4 
       (.I0(BUS1884[1]),
        .I1(BUS1884[0]),
        .I2(BUS1884[2]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[5]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000B86000000000)) 
    \LED_out_OBUF[5]_inst_i_5 
       (.I0(BUS1876[1]),
        .I1(BUS1876[0]),
        .I2(BUS1876[2]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[5]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED_out_OBUF[6]_inst_i_1 
       (.I0(\LED_out_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_out_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_out_OBUF[6]_inst_i_4_n_0 ),
        .I3(\LED_out_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_out_OBUF[6]));
  LUT6 #(
    .INIT(64'h0000481400000000)) 
    \LED_out_OBUF[6]_inst_i_2 
       (.I0(BUS1868[1]),
        .I1(BUS1868[0]),
        .I2(BUS1868[2]),
        .I3(BUS1868[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004814)) 
    \LED_out_OBUF[6]_inst_i_3 
       (.I0(BUS1860[1]),
        .I1(BUS1860[0]),
        .I2(BUS1860[2]),
        .I3(BUS1860[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4814000000000000)) 
    \LED_out_OBUF[6]_inst_i_4 
       (.I0(BUS1884[1]),
        .I1(BUS1884[0]),
        .I2(BUS1884[2]),
        .I3(BUS1884[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .O(\LED_out_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000481400000000)) 
    \LED_out_OBUF[6]_inst_i_5 
       (.I0(BUS1876[1]),
        .I1(BUS1876[0]),
        .I2(BUS1876[2]),
        .I3(BUS1876[3]),
        .I4(\LED_out_OBUF[6]_inst_i_1_0 [0]),
        .I5(\LED_out_OBUF[6]_inst_i_1_0 [1]),
        .O(\LED_out_OBUF[6]_inst_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    OK_temp_reg
       (.CLR(1'b0),
        .D(OK_temp_reg_i_1_n_0),
        .G(OK_temp),
        .GE(1'b1),
        .Q(OK_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    OK_temp_reg_i_1
       (.I0(Q[4]),
        .I1(outkey_reg),
        .O(OK_temp_reg_i_1_n_0));
  LUT3 #(
    .INIT(8'hF8)) 
    OK_temp_reg_i_2
       (.I0(Q[4]),
        .I1(outkey_reg),
        .I2(Q[0]),
        .O(OK_temp));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    OK_temp_reg_i_3
       (.I0(OK_temp_reg_i_4_n_0),
        .I1(BUS1860[3]),
        .I2(BUS1860[2]),
        .I3(OK_temp_reg_i_5_n_0),
        .I4(eqOp),
        .I5(OK_temp_reg_i_7_n_0),
        .O(outkey_reg));
  LUT4 #(
    .INIT(16'h0001)) 
    OK_temp_reg_i_4
       (.I0(BUS1884[3]),
        .I1(BUS1884[2]),
        .I2(BUS1884[1]),
        .I3(BUS1884[0]),
        .O(OK_temp_reg_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    OK_temp_reg_i_5
       (.I0(BUS1860[1]),
        .I1(BUS1860[0]),
        .O(OK_temp_reg_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    OK_temp_reg_i_6
       (.I0(BUS1868[3]),
        .I1(BUS1868[2]),
        .I2(BUS1868[1]),
        .I3(BUS1868[0]),
        .O(eqOp));
  LUT4 #(
    .INIT(16'h0001)) 
    OK_temp_reg_i_7
       (.I0(BUS1876[3]),
        .I1(BUS1876[2]),
        .I2(BUS1876[1]),
        .I3(BUS1876[0]),
        .O(OK_temp_reg_i_7_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q0_temp_reg[0] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[0]),
        .G(Q[0]),
        .GE(1'b1),
        .Q(BUS1860[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q0_temp_reg[1] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[1]),
        .G(Q[0]),
        .GE(1'b1),
        .Q(BUS1860[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q0_temp_reg[2] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[2]),
        .G(Q[0]),
        .GE(1'b1),
        .Q(BUS1860[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q0_temp_reg[3] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[3]),
        .G(Q[0]),
        .GE(1'b1),
        .Q(BUS1860[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q1_temp_reg[0] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[0]),
        .G(Q[1]),
        .GE(1'b1),
        .Q(BUS1868[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q1_temp_reg[1] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[1]),
        .G(Q[1]),
        .GE(1'b1),
        .Q(BUS1868[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q1_temp_reg[2] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[2]),
        .G(Q[1]),
        .GE(1'b1),
        .Q(BUS1868[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q1_temp_reg[3] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[3]),
        .G(Q[1]),
        .GE(1'b1),
        .Q(BUS1868[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q2_temp_reg[0] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[0]),
        .G(Q[2]),
        .GE(1'b1),
        .Q(BUS1876[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q2_temp_reg[1] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[1]),
        .G(Q[2]),
        .GE(1'b1),
        .Q(BUS1876[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q2_temp_reg[2] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[2]),
        .G(Q[2]),
        .GE(1'b1),
        .Q(BUS1876[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q2_temp_reg[3] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[3]),
        .G(Q[2]),
        .GE(1'b1),
        .Q(BUS1876[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q3_temp_reg[0] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[0]),
        .G(Q[3]),
        .GE(1'b1),
        .Q(BUS1884[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q3_temp_reg[1] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[1]),
        .G(Q[3]),
        .GE(1'b1),
        .Q(BUS1884[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q3_temp_reg[2] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[2]),
        .G(Q[3]),
        .GE(1'b1),
        .Q(BUS1884[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Q3_temp_reg[3] 
       (.CLR(1'b0),
        .D(OK_temp_reg_i_6_0[3]),
        .G(Q[3]),
        .GE(1'b1),
        .Q(BUS1884[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    WRONG_temp_reg
       (.CLR(1'b0),
        .D(Q[4]),
        .G(WRONG_temp),
        .GE(1'b1),
        .Q(WRONG_OBUF));
  LUT3 #(
    .INIT(8'hBA)) 
    WRONG_temp_reg_i_1
       (.I0(Q[0]),
        .I1(outkey_reg),
        .I2(Q[4]),
        .O(WRONG_temp));
endmodule

module sev_seg
   (CLK,
    AN_OBUF,
    AR,
    E,
    Q);
  input CLK;
  output [3:0]AN_OBUF;
  input [0:0]AR;
  input [0:0]E;
  output [1:0]Q;

  wire [3:0]AN_OBUF;
  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]stan_nastepny;

  LUT2 #(
    .INIT(4'hE)) 
    \AN_OBUF[0]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(AN_OBUF[0]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(AN_OBUF[1]));
  LUT2 #(
    .INIT(4'hB)) 
    \AN_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(AN_OBUF[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \AN_OBUF[3]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(AN_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_stan_obecny[0]_i_1 
       (.I0(Q[0]),
        .O(stan_nastepny[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_stan_obecny[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(stan_nastepny[1]));
  (* FSM_ENCODED_STATES = "pos1:00,pos2:01,pos3:10,pos4:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_obecny_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(stan_nastepny[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "pos1:00,pos2:01,pos3:10,pos4:11" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_stan_obecny_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(stan_nastepny[1]),
        .Q(Q[1]));
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
