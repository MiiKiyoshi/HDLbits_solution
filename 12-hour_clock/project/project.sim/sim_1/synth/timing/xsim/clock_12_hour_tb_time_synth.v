// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Sep  3 12:55:39 2023
// Host        : miikiyoshi running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               E:/works/hdl/HDLbits_solution/12-hour_clock/project/project.sim/sim_1/synth/timing/xsim/clock_12_hour_tb_time_synth.v
// Design      : clock_12_hour
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module bcd12
   (hh_OBUF,
    \digit1_reg[0]_0 ,
    q_reg,
    \digit2_reg[1]_0 ,
    \digit2_reg[1]_1 ,
    digit2,
    \digit2_reg[1]_2 ,
    pm_OBUF,
    u_bcd12_hh_en,
    reset_IBUF,
    CLK,
    digit2_0);
  output [7:0]hh_OBUF;
  output \digit1_reg[0]_0 ;
  output q_reg;
  input \digit2_reg[1]_0 ;
  input \digit2_reg[1]_1 ;
  input digit2;
  input \digit2_reg[1]_2 ;
  input pm_OBUF;
  input u_bcd12_hh_en;
  input reset_IBUF;
  input CLK;
  input digit2_0;

  wire CLK;
  wire \digit1[0]_i_1_n_0 ;
  wire \digit1[1]_i_1_n_0 ;
  wire \digit1[2]_i_1_n_0 ;
  wire \digit1[2]_i_2_n_0 ;
  wire \digit1[3]_i_1_n_0 ;
  wire \digit1[3]_i_3__0_n_0 ;
  wire \digit1[3]_i_5_n_0 ;
  wire \digit1[3]_i_9_n_0 ;
  wire \digit1_reg[0]_0 ;
  wire digit2;
  wire \digit2[0]_i_1_n_0 ;
  wire \digit2[1]_i_1_n_0 ;
  wire \digit2[2]_i_1_n_0 ;
  wire \digit2[3]_i_1_n_0 ;
  wire \digit2[3]_i_2__1_n_0 ;
  wire digit2_0;
  wire \digit2_reg[1]_0 ;
  wire \digit2_reg[1]_1 ;
  wire \digit2_reg[1]_2 ;
  wire [7:0]hh_OBUF;
  wire pm_OBUF;
  wire q_reg;
  wire reset_IBUF;
  wire u_bcd12_hh_en;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \digit1[0]_i_1 
       (.I0(hh_OBUF[0]),
        .I1(u_bcd12_hh_en),
        .I2(reset_IBUF),
        .O(\digit1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF38CC00CC)) 
    \digit1[1]_i_1 
       (.I0(\digit1[2]_i_2_n_0 ),
        .I1(hh_OBUF[1]),
        .I2(hh_OBUF[0]),
        .I3(u_bcd12_hh_en),
        .I4(\digit1_reg[0]_0 ),
        .I5(reset_IBUF),
        .O(\digit1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005A8AAAAA)) 
    \digit1[2]_i_1 
       (.I0(hh_OBUF[2]),
        .I1(\digit1[2]_i_2_n_0 ),
        .I2(hh_OBUF[1]),
        .I3(hh_OBUF[0]),
        .I4(u_bcd12_hh_en),
        .I5(reset_IBUF),
        .O(\digit1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \digit1[2]_i_2 
       (.I0(hh_OBUF[4]),
        .I1(hh_OBUF[5]),
        .I2(hh_OBUF[7]),
        .I3(hh_OBUF[6]),
        .I4(hh_OBUF[3]),
        .I5(hh_OBUF[2]),
        .O(\digit1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000A622)) 
    \digit1[3]_i_1 
       (.I0(hh_OBUF[3]),
        .I1(u_bcd12_hh_en),
        .I2(\digit1[3]_i_3__0_n_0 ),
        .I3(\digit1_reg[0]_0 ),
        .I4(\digit1[3]_i_5_n_0 ),
        .I5(reset_IBUF),
        .O(\digit1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \digit1[3]_i_3__0 
       (.I0(hh_OBUF[1]),
        .I1(hh_OBUF[0]),
        .I2(hh_OBUF[2]),
        .O(\digit1[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \digit1[3]_i_4 
       (.I0(hh_OBUF[0]),
        .I1(hh_OBUF[1]),
        .I2(hh_OBUF[3]),
        .I3(hh_OBUF[2]),
        .O(\digit1_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \digit1[3]_i_5 
       (.I0(\digit1[2]_i_2_n_0 ),
        .I1(\digit1[3]_i_9_n_0 ),
        .I2(\digit2_reg[1]_0 ),
        .I3(\digit2_reg[1]_1 ),
        .I4(digit2),
        .I5(\digit2_reg[1]_2 ),
        .O(\digit1[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \digit1[3]_i_9 
       (.I0(hh_OBUF[1]),
        .I1(hh_OBUF[0]),
        .O(\digit1[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit1[0]_i_1_n_0 ),
        .Q(hh_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit1[1]_i_1_n_0 ),
        .Q(hh_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit1[2]_i_1_n_0 ),
        .Q(hh_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit1[3]_i_1_n_0 ),
        .Q(hh_OBUF[3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF2212)) 
    \digit2[0]_i_1 
       (.I0(hh_OBUF[4]),
        .I1(\digit1[3]_i_5_n_0 ),
        .I2(u_bcd12_hh_en),
        .I3(\digit1_reg[0]_0 ),
        .I4(reset_IBUF),
        .O(\digit2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009AAA)) 
    \digit2[1]_i_1 
       (.I0(hh_OBUF[5]),
        .I1(\digit1_reg[0]_0 ),
        .I2(u_bcd12_hh_en),
        .I3(hh_OBUF[4]),
        .I4(\digit1[3]_i_5_n_0 ),
        .I5(reset_IBUF),
        .O(\digit2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006AAA)) 
    \digit2[2]_i_1 
       (.I0(hh_OBUF[6]),
        .I1(digit2_0),
        .I2(hh_OBUF[5]),
        .I3(hh_OBUF[4]),
        .I4(\digit1[3]_i_5_n_0 ),
        .I5(reset_IBUF),
        .O(\digit2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000009AAA)) 
    \digit2[3]_i_1 
       (.I0(hh_OBUF[7]),
        .I1(\digit1_reg[0]_0 ),
        .I2(u_bcd12_hh_en),
        .I3(\digit2[3]_i_2__1_n_0 ),
        .I4(\digit1[3]_i_5_n_0 ),
        .I5(reset_IBUF),
        .O(\digit2[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \digit2[3]_i_2__1 
       (.I0(hh_OBUF[6]),
        .I1(hh_OBUF[5]),
        .I2(hh_OBUF[4]),
        .O(\digit2[3]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit2[0]_i_1_n_0 ),
        .Q(hh_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit2[1]_i_1_n_0 ),
        .Q(hh_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit2[2]_i_1_n_0 ),
        .Q(hh_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\digit2[3]_i_1_n_0 ),
        .Q(hh_OBUF[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAA6AA)) 
    q_i_1
       (.I0(pm_OBUF),
        .I1(u_bcd12_hh_en),
        .I2(hh_OBUF[1]),
        .I3(hh_OBUF[0]),
        .I4(\digit1[2]_i_2_n_0 ),
        .I5(reset_IBUF),
        .O(q_reg));
endmodule

module bcd60
   (digit2,
    \digit1_reg[0]_0 ,
    \digit2_reg[2]_0 ,
    mm_OBUF,
    digit2_0,
    \digit2_reg[2]_1 ,
    \digit2_reg[2]_2 ,
    E,
    SR,
    CLK);
  output digit2;
  output \digit1_reg[0]_0 ;
  output \digit2_reg[2]_0 ;
  output [7:0]mm_OBUF;
  input digit2_0;
  input \digit2_reg[2]_1 ;
  input \digit2_reg[2]_2 ;
  input [0:0]E;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire \digit1[0]_i_1_n_0 ;
  wire \digit1[1]_i_1_n_0 ;
  wire \digit1[2]_i_1_n_0 ;
  wire \digit1[3]_i_3_n_0 ;
  wire \digit1_reg[0]_0 ;
  wire digit2;
  wire digit2_0;
  wire digit2_1;
  wire \digit2_reg[2]_0 ;
  wire \digit2_reg[2]_1 ;
  wire \digit2_reg[2]_2 ;
  wire [7:0]mm_OBUF;
  wire [3:0]p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \digit1[0]_i_1 
       (.I0(mm_OBUF[0]),
        .O(\digit1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \digit1[1]_i_1 
       (.I0(mm_OBUF[2]),
        .I1(mm_OBUF[3]),
        .I2(mm_OBUF[1]),
        .I3(mm_OBUF[0]),
        .O(\digit1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit1[2]_i_1 
       (.I0(mm_OBUF[0]),
        .I1(mm_OBUF[1]),
        .I2(mm_OBUF[2]),
        .O(\digit1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \digit1[3]_i_3 
       (.I0(mm_OBUF[2]),
        .I1(mm_OBUF[1]),
        .I2(mm_OBUF[0]),
        .I3(mm_OBUF[3]),
        .O(\digit1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \digit1[3]_i_7 
       (.I0(mm_OBUF[6]),
        .I1(mm_OBUF[4]),
        .I2(mm_OBUF[7]),
        .I3(mm_OBUF[5]),
        .O(\digit2_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \digit1[3]_i_8 
       (.I0(mm_OBUF[0]),
        .I1(mm_OBUF[3]),
        .I2(mm_OBUF[1]),
        .I3(mm_OBUF[2]),
        .O(\digit1_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\digit1[0]_i_1_n_0 ),
        .Q(mm_OBUF[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\digit1[1]_i_1_n_0 ),
        .Q(mm_OBUF[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\digit1[2]_i_1_n_0 ),
        .Q(mm_OBUF[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\digit1[3]_i_3_n_0 ),
        .Q(mm_OBUF[3]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[0]_i_1 
       (.I0(mm_OBUF[4]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit2[1]_i_1 
       (.I0(mm_OBUF[4]),
        .I1(mm_OBUF[5]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit2[2]_i_1 
       (.I0(mm_OBUF[4]),
        .I1(mm_OBUF[5]),
        .I2(mm_OBUF[6]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \digit2[2]_i_2 
       (.I0(\digit1_reg[0]_0 ),
        .I1(\digit2_reg[2]_0 ),
        .I2(digit2_0),
        .I3(\digit2_reg[2]_1 ),
        .I4(\digit2_reg[2]_2 ),
        .O(digit2));
  LUT5 #(
    .INIT(32'h02000000)) 
    \digit2[3]_i_1 
       (.I0(E),
        .I1(mm_OBUF[2]),
        .I2(mm_OBUF[1]),
        .I3(mm_OBUF[3]),
        .I4(mm_OBUF[0]),
        .O(digit2_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \digit2[3]_i_2 
       (.I0(mm_OBUF[7]),
        .I1(mm_OBUF[4]),
        .I2(mm_OBUF[5]),
        .I3(mm_OBUF[6]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[0] 
       (.C(CLK),
        .CE(digit2_1),
        .D(p_0_in[0]),
        .Q(mm_OBUF[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[1] 
       (.C(CLK),
        .CE(digit2_1),
        .D(p_0_in[1]),
        .Q(mm_OBUF[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[2] 
       (.C(CLK),
        .CE(digit2_1),
        .D(p_0_in[2]),
        .Q(mm_OBUF[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[3] 
       (.C(CLK),
        .CE(digit2_1),
        .D(p_0_in[3]),
        .Q(mm_OBUF[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "bcd60" *) 
module bcd60_0
   (SR,
    u_bcd12_hh_en,
    \digit2_reg[2]_0 ,
    digit2,
    E,
    ss_OBUF,
    reset_IBUF,
    \digit1_reg[3]_0 ,
    \digit1_reg[3]_1 ,
    \digit1_reg[3]_2 ,
    CLK);
  output [0:0]SR;
  output u_bcd12_hh_en;
  output \digit2_reg[2]_0 ;
  output digit2;
  output [0:0]E;
  output [7:0]ss_OBUF;
  input reset_IBUF;
  input \digit1_reg[3]_0 ;
  input \digit1_reg[3]_1 ;
  input [0:0]\digit1_reg[3]_2 ;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [0:0]SR;
  wire digit1;
  wire \digit1[0]_i_1__0_n_0 ;
  wire \digit1[1]_i_1__0_n_0 ;
  wire \digit1[2]_i_1__0_n_0 ;
  wire \digit1[3]_i_2__1_n_0 ;
  wire \digit1_reg[3]_0 ;
  wire \digit1_reg[3]_1 ;
  wire [0:0]\digit1_reg[3]_2 ;
  wire digit2;
  wire \digit2_reg[2]_0 ;
  wire [3:0]p_0_in__0;
  wire reset_IBUF;
  wire [7:0]ss_OBUF;
  wire u_bcd12_hh_en;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \digit1[0]_i_1__0 
       (.I0(ss_OBUF[0]),
        .O(\digit1[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \digit1[1]_i_1__0 
       (.I0(ss_OBUF[2]),
        .I1(ss_OBUF[3]),
        .I2(ss_OBUF[1]),
        .I3(ss_OBUF[0]),
        .O(\digit1[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit1[2]_i_1__0 
       (.I0(ss_OBUF[0]),
        .I1(ss_OBUF[1]),
        .I2(ss_OBUF[2]),
        .O(\digit1[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \digit1[3]_i_1 
       (.I0(reset_IBUF),
        .I1(u_bcd12_hh_en),
        .O(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \digit1[3]_i_1__0 
       (.I0(reset_IBUF),
        .I1(E),
        .O(digit1));
  LUT4 #(
    .INIT(16'h0004)) 
    \digit1[3]_i_2 
       (.I0(\digit2_reg[2]_0 ),
        .I1(digit2),
        .I2(\digit1_reg[3]_0 ),
        .I3(\digit1_reg[3]_1 ),
        .O(u_bcd12_hh_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h02000000)) 
    \digit1[3]_i_2__0 
       (.I0(digit2),
        .I1(ss_OBUF[5]),
        .I2(ss_OBUF[7]),
        .I3(ss_OBUF[4]),
        .I4(ss_OBUF[6]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \digit1[3]_i_2__1 
       (.I0(ss_OBUF[2]),
        .I1(ss_OBUF[1]),
        .I2(ss_OBUF[0]),
        .I3(ss_OBUF[3]),
        .O(\digit1[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \digit1[3]_i_6 
       (.I0(ss_OBUF[6]),
        .I1(ss_OBUF[4]),
        .I2(ss_OBUF[7]),
        .I3(ss_OBUF[5]),
        .O(\digit2_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[0] 
       (.C(CLK),
        .CE(\digit1_reg[3]_2 ),
        .D(\digit1[0]_i_1__0_n_0 ),
        .Q(ss_OBUF[0]),
        .R(digit1));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[1] 
       (.C(CLK),
        .CE(\digit1_reg[3]_2 ),
        .D(\digit1[1]_i_1__0_n_0 ),
        .Q(ss_OBUF[1]),
        .R(digit1));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[2] 
       (.C(CLK),
        .CE(\digit1_reg[3]_2 ),
        .D(\digit1[2]_i_1__0_n_0 ),
        .Q(ss_OBUF[2]),
        .R(digit1));
  FDRE #(
    .INIT(1'b0)) 
    \digit1_reg[3] 
       (.C(CLK),
        .CE(\digit1_reg[3]_2 ),
        .D(\digit1[3]_i_2__1_n_0 ),
        .Q(ss_OBUF[3]),
        .R(digit1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \digit2[0]_i_1__0 
       (.I0(ss_OBUF[4]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \digit2[1]_i_1__0 
       (.I0(ss_OBUF[4]),
        .I1(ss_OBUF[5]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \digit2[2]_i_1__0 
       (.I0(ss_OBUF[4]),
        .I1(ss_OBUF[5]),
        .I2(ss_OBUF[6]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \digit2[3]_i_1__0 
       (.I0(\digit1_reg[3]_2 ),
        .I1(ss_OBUF[2]),
        .I2(ss_OBUF[1]),
        .I3(ss_OBUF[0]),
        .I4(ss_OBUF[3]),
        .O(digit2));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \digit2[3]_i_2__0 
       (.I0(ss_OBUF[7]),
        .I1(ss_OBUF[4]),
        .I2(ss_OBUF[5]),
        .I3(ss_OBUF[6]),
        .O(p_0_in__0[3]));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[0] 
       (.C(CLK),
        .CE(digit2),
        .D(p_0_in__0[0]),
        .Q(ss_OBUF[4]),
        .R(digit1));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[1] 
       (.C(CLK),
        .CE(digit2),
        .D(p_0_in__0[1]),
        .Q(ss_OBUF[5]),
        .R(digit1));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[2] 
       (.C(CLK),
        .CE(digit2),
        .D(p_0_in__0[2]),
        .Q(ss_OBUF[6]),
        .R(digit1));
  FDRE #(
    .INIT(1'b0)) 
    \digit2_reg[3] 
       (.C(CLK),
        .CE(digit2),
        .D(p_0_in__0[3]),
        .Q(ss_OBUF[7]),
        .R(digit1));
endmodule

(* NotValidForBitStream *)
module clock_12_hour
   (clk,
    reset,
    ena,
    pm,
    hh,
    mm,
    ss);
  input clk;
  input reset;
  input ena;
  output pm;
  output [7:0]hh;
  output [7:0]mm;
  output [7:0]ss;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire digit1;
  wire digit2;
  wire digit2_0;
  wire ena;
  wire ena_IBUF;
  wire [7:0]hh;
  wire [7:0]hh_OBUF;
  wire [7:0]mm;
  wire [7:0]mm_OBUF;
  wire pm;
  wire pm_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [7:0]ss;
  wire [7:0]ss_OBUF;
  wire u_bcd12_hh_en;
  wire u_bcd12_hh_n_8;
  wire u_bcd12_hh_n_9;
  wire u_bcd60_mm_en;
  wire u_bcd60_mm_n_1;
  wire u_bcd60_mm_n_2;
  wire u_bcd60_ss_n_2;

initial begin
 $sdf_annotate("clock_12_hour_tb_time_synth.sdf",,,,"tool_control");
end
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF ena_IBUF_inst
       (.I(ena),
        .O(ena_IBUF));
  OBUF \hh_OBUF[0]_inst 
       (.I(hh_OBUF[0]),
        .O(hh[0]));
  OBUF \hh_OBUF[1]_inst 
       (.I(hh_OBUF[1]),
        .O(hh[1]));
  OBUF \hh_OBUF[2]_inst 
       (.I(hh_OBUF[2]),
        .O(hh[2]));
  OBUF \hh_OBUF[3]_inst 
       (.I(hh_OBUF[3]),
        .O(hh[3]));
  OBUF \hh_OBUF[4]_inst 
       (.I(hh_OBUF[4]),
        .O(hh[4]));
  OBUF \hh_OBUF[5]_inst 
       (.I(hh_OBUF[5]),
        .O(hh[5]));
  OBUF \hh_OBUF[6]_inst 
       (.I(hh_OBUF[6]),
        .O(hh[6]));
  OBUF \hh_OBUF[7]_inst 
       (.I(hh_OBUF[7]),
        .O(hh[7]));
  OBUF \mm_OBUF[0]_inst 
       (.I(mm_OBUF[0]),
        .O(mm[0]));
  OBUF \mm_OBUF[1]_inst 
       (.I(mm_OBUF[1]),
        .O(mm[1]));
  OBUF \mm_OBUF[2]_inst 
       (.I(mm_OBUF[2]),
        .O(mm[2]));
  OBUF \mm_OBUF[3]_inst 
       (.I(mm_OBUF[3]),
        .O(mm[3]));
  OBUF \mm_OBUF[4]_inst 
       (.I(mm_OBUF[4]),
        .O(mm[4]));
  OBUF \mm_OBUF[5]_inst 
       (.I(mm_OBUF[5]),
        .O(mm[5]));
  OBUF \mm_OBUF[6]_inst 
       (.I(mm_OBUF[6]),
        .O(mm[6]));
  OBUF \mm_OBUF[7]_inst 
       (.I(mm_OBUF[7]),
        .O(mm[7]));
  OBUF pm_OBUF_inst
       (.I(pm_OBUF),
        .O(pm));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \ss_OBUF[0]_inst 
       (.I(ss_OBUF[0]),
        .O(ss[0]));
  OBUF \ss_OBUF[1]_inst 
       (.I(ss_OBUF[1]),
        .O(ss[1]));
  OBUF \ss_OBUF[2]_inst 
       (.I(ss_OBUF[2]),
        .O(ss[2]));
  OBUF \ss_OBUF[3]_inst 
       (.I(ss_OBUF[3]),
        .O(ss[3]));
  OBUF \ss_OBUF[4]_inst 
       (.I(ss_OBUF[4]),
        .O(ss[4]));
  OBUF \ss_OBUF[5]_inst 
       (.I(ss_OBUF[5]),
        .O(ss[5]));
  OBUF \ss_OBUF[6]_inst 
       (.I(ss_OBUF[6]),
        .O(ss[6]));
  OBUF \ss_OBUF[7]_inst 
       (.I(ss_OBUF[7]),
        .O(ss[7]));
  bcd12 u_bcd12_hh
       (.CLK(clk_IBUF_BUFG),
        .\digit1_reg[0]_0 (u_bcd12_hh_n_8),
        .digit2(digit2_0),
        .digit2_0(digit2),
        .\digit2_reg[1]_0 (u_bcd60_mm_n_1),
        .\digit2_reg[1]_1 (u_bcd60_mm_n_2),
        .\digit2_reg[1]_2 (u_bcd60_ss_n_2),
        .hh_OBUF(hh_OBUF),
        .pm_OBUF(pm_OBUF),
        .q_reg(u_bcd12_hh_n_9),
        .reset_IBUF(reset_IBUF),
        .u_bcd12_hh_en(u_bcd12_hh_en));
  bcd60 u_bcd60_mm
       (.CLK(clk_IBUF_BUFG),
        .E(u_bcd60_mm_en),
        .SR(digit1),
        .\digit1_reg[0]_0 (u_bcd60_mm_n_1),
        .digit2(digit2),
        .digit2_0(digit2_0),
        .\digit2_reg[2]_0 (u_bcd60_mm_n_2),
        .\digit2_reg[2]_1 (u_bcd60_ss_n_2),
        .\digit2_reg[2]_2 (u_bcd12_hh_n_8),
        .mm_OBUF(mm_OBUF));
  bcd60_0 u_bcd60_ss
       (.CLK(clk_IBUF_BUFG),
        .E(u_bcd60_mm_en),
        .SR(digit1),
        .\digit1_reg[3]_0 (u_bcd60_mm_n_2),
        .\digit1_reg[3]_1 (u_bcd60_mm_n_1),
        .\digit1_reg[3]_2 (ena_IBUF),
        .digit2(digit2_0),
        .\digit2_reg[2]_0 (u_bcd60_ss_n_2),
        .reset_IBUF(reset_IBUF),
        .ss_OBUF(ss_OBUF),
        .u_bcd12_hh_en(u_bcd12_hh_en));
  count2 u_count2_am_pm
       (.CLK(clk_IBUF_BUFG),
        .pm_OBUF(pm_OBUF),
        .q_reg_0(u_bcd12_hh_n_9));
endmodule

module count2
   (pm_OBUF,
    q_reg_0,
    CLK);
  output pm_OBUF;
  input q_reg_0;
  input CLK;

  wire CLK;
  wire pm_OBUF;
  wire q_reg_0;

  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(CLK),
        .CE(1'b1),
        .D(q_reg_0),
        .Q(pm_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
