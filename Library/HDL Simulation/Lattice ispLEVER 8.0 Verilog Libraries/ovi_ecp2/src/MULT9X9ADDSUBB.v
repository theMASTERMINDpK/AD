// --------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
// --------------------------------------------------------------------
// Copyright (c) 2005 by Lattice Semiconductor Corporation
// --------------------------------------------------------------------
//
//
//                     Lattice Semiconductor Corporation
//                     5555 NE Moore Court
//                     Hillsboro, OR 97214
//                     U.S.A.
//
//                     TEL: 1-800-Lattice  (USA and Canada)
//                          1-408-826-6000 (other locations)
//
//                     web: http://www.latticesemi.com/
//                     email: techsupport@latticesemi.com
//
// --------------------------------------------------------------------
//
// Simulation Library File for ECP2
//
// $Header: 
//
`celldefine
`timescale  1 ns / 1 ps

module MULT9X9ADDSUBB (SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0,SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0,SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0,A08,A07,A06,A05,A04,A03,A02,A01,A00,A18,A17,A16,A15,A14,A13,A12,A11,A10,B08,B07,B06,B05,B04,B03,B02,B01,B00,B18,B17,B16,B15,B14,B13,B12,B11,B10,SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0,SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0,SIGNEDA,SIGNEDB,ADDNSUB,CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3,SOURCEA0, SOURCEA1, SOURCEB0, SOURCEB1);
input A08,A07,A06,A05,A04,A03,A02,A01,A00;
input A18,A17,A16,A15,A14,A13,A12,A11,A10;
input B08,B07,B06,B05,B04,B03,B02,B01,B00;
input B18,B17,B16,B15,B14,B13,B12,B11,B10;
input SIGNEDA,SIGNEDB,ADDNSUB,SOURCEA0, SOURCEA1, SOURCEB0, SOURCEB1;
input CE0,CE1,CE2,CE3,CLK0,CLK1,CLK2,CLK3,RST0,RST1,RST2,RST3;
input SRIA8,SRIA7,SRIA6,SRIA5,SRIA4,SRIA3,SRIA2,SRIA1,SRIA0;
input SRIB8,SRIB7,SRIB6,SRIB5,SRIB4,SRIB3,SRIB2,SRIB1,SRIB0;
output SROA8,SROA7,SROA6,SROA5,SROA4,SROA3,SROA2,SROA1,SROA0;
output SROB8,SROB7,SROB6,SROB5,SROB4,SROB3,SROB2,SROB1,SROB0;
output SUM18,SUM17,SUM16,SUM15,SUM14,SUM13,SUM12,SUM11,SUM10,SUM9,SUM8,SUM7,SUM6,SUM5,SUM4,SUM3,SUM2,SUM1,SUM0; 

parameter REG_INPUTA0_CLK = "NONE";
parameter REG_INPUTA0_CE = "CE0";
parameter REG_INPUTA0_RST = "RST0";
parameter REG_INPUTA1_CLK = "NONE";
parameter REG_INPUTA1_CE = "CE0";
parameter REG_INPUTA1_RST = "RST0";
parameter REG_INPUTB0_CLK = "NONE";
parameter REG_INPUTB0_CE = "CE0";
parameter REG_INPUTB0_RST = "RST0";
parameter REG_INPUTB1_CLK = "NONE";
parameter REG_INPUTB1_CE = "CE0";
parameter REG_INPUTB1_RST = "RST0";
parameter REG_PIPELINE0_CLK = "NONE";
parameter REG_PIPELINE0_CE = "CE0";
parameter REG_PIPELINE0_RST = "RST0";
parameter REG_PIPELINE1_CLK = "NONE";
parameter REG_PIPELINE1_CE = "CE0";
parameter REG_PIPELINE1_RST = "RST0";
parameter REG_OUTPUT_CLK = "NONE";
parameter REG_OUTPUT_CE = "CE0";
parameter REG_OUTPUT_RST = "RST0";
parameter REG_SIGNEDA_0_CLK = "NONE";
parameter REG_SIGNEDA_0_CE = "CE0";
parameter REG_SIGNEDA_0_RST = "RST0";
parameter REG_SIGNEDA_1_CLK = "NONE";
parameter REG_SIGNEDA_1_CE = "CE0";
parameter REG_SIGNEDA_1_RST = "RST0";
parameter REG_SIGNEDB_0_CLK = "NONE";
parameter REG_SIGNEDB_0_CE = "CE0";
parameter REG_SIGNEDB_0_RST = "RST0";
parameter REG_SIGNEDB_1_CLK = "NONE";
parameter REG_SIGNEDB_1_CE = "CE0";
parameter REG_SIGNEDB_1_RST = "RST0";
parameter REG_ADDNSUB_0_CLK = "NONE";
parameter REG_ADDNSUB_0_CE = "CE0";
parameter REG_ADDNSUB_0_RST = "RST0";
parameter REG_ADDNSUB_1_CLK = "NONE";
parameter REG_ADDNSUB_1_CE = "CE0";
parameter REG_ADDNSUB_1_RST = "RST0";
parameter GSR = "ENABLED";


supply0 GND; 
supply1 VCC; 

    wire CE0b,CE1b,CE2b,CE3b,CLK0b,CLK1b,CLK2b,CLK3b,RST0b,RST1b,RST2b,RST3b;

    wire [8:0] a0_sig, b0_sig;
    wire [8:0] a1_sig, b1_sig;
    reg  [8:0] a0_sig_reg, b0_sig_reg;
    reg  [8:0] a1_sig_reg, b1_sig_reg;
    reg  [8:0] a0_sig_gen, b0_sig_gen;
    reg  [8:0] a1_sig_gen, b1_sig_gen;
    wire [8:0] a_sig_s, b_sig_s;
    reg [8:0] a0_sig_s_1, b0_sig_s_1;
    reg [8:0] a1_sig_s_1, b1_sig_s_1;
    wire [17:0] p0_sig_i;
    wire [17:0] p1_sig_i;

    reg [18:0] p0_sig_i_e;
    reg [18:0] p1_sig_i_e;
    reg [17:0] p0_sig_i_e_reg, p0_sig_i_e_reg1;
    reg [17:0] p1_sig_i_e_reg, p1_sig_i_e_reg1;

    wire [8:0] sroa_reg,srob_reg;
    wire [8:0] sroa_reg1,srob_reg1;

    reg [17:0] p0_sig_ps;
    reg [17:0] p1_sig_ps;
    wire [18:0] sum_sig_i;
    reg [18:0] sum_reg1;
    reg [18:0] sum_o;
    //wire [18:0] sum_o;
    reg [18:0] sum_o_1;

    reg [17:0] a0_sig_m, b0_sig_m;
    reg [17:0] a1_sig_m, b1_sig_m;

    wire sourcea0_sig;
    wire sourcea1_sig;
    wire sourceb0_sig;
    wire sourceb1_sig;
    wire signeda_sig;
    reg  signeda_p1;
    reg  signeda_p2;
    reg  signeda_reg1;
    reg  signeda_reg2;
    wire signedb_sig;
    reg  signedb_p1;
    reg  signedb_p2;
    reg  signedb_reg1;
    reg  signedb_reg2;

    wire addnsub_sig;
    reg  addnsub_p1;
    reg  addnsub_p2;
    reg  addnsub_reg1;
    reg  addnsub_reg2;

    wire input_a0_rst_ogsr;
    wire input_a1_rst_ogsr;
    wire input_b0_rst_ogsr;
    wire input_b1_rst_ogsr;
    wire pipeline0_rst_ogsr;
    wire pipeline1_rst_ogsr;
    wire output_rst_ogsr;
    wire reg_signeda_0_rst_ogsr;
    wire reg_signeda_1_rst_ogsr;
    wire reg_signedb_0_rst_ogsr;
    wire reg_signedb_1_rst_ogsr;
    wire reg_addnsub_0_rst_ogsr;
    wire reg_addnsub_1_rst_ogsr;
    wire reg_accumsload_0_rst_ogsr;
    wire reg_accumsload_1_rst_ogsr;

    reg input_a0_clk_sig,input_a0_ce_sig,input_a0_rst_sig;
    reg input_a1_clk_sig,input_a1_ce_sig,input_a1_rst_sig;
    reg input_b0_clk_sig,input_b0_ce_sig,input_b0_rst_sig;
    reg input_b1_clk_sig,input_b1_ce_sig,input_b1_rst_sig;
    reg pipeline0_clk_sig,pipeline0_ce_sig,pipeline0_rst_sig;
    reg pipeline1_clk_sig,pipeline1_ce_sig,pipeline1_rst_sig;
    reg output_clk_sig,output_ce_sig,output_rst_sig;

    reg reg_signeda_0_clk_sig,reg_signeda_0_ce_sig,reg_signeda_0_rst_sig;
    reg reg_signeda_1_clk_sig,reg_signeda_1_ce_sig,reg_signeda_1_rst_sig;
    reg reg_signedb_0_clk_sig,reg_signedb_0_ce_sig,reg_signedb_0_rst_sig;
    reg reg_signedb_1_clk_sig,reg_signedb_1_ce_sig,reg_signedb_1_rst_sig;
    reg reg_addnsub_0_clk_sig,reg_addnsub_0_ce_sig,reg_addnsub_0_rst_sig;
    reg reg_addnsub_1_clk_sig,reg_addnsub_1_ce_sig,reg_addnsub_1_rst_sig;

    reg SRN;

    tri1 GSR_sig = GSR_INST.GSRNET;
    tri1 PUR_sig = PUR_INST.PURNET;

    not (SR1, SRN);

    always @ (GSR_sig or PUR_sig ) 
    begin
      if (GSR == "ENABLED") 
        begin
         SRN = GSR_sig & PUR_sig ;
        end
      else if (GSR == "DISABLED")
        SRN = PUR_sig;
    end

    or INST1 (input_a0_rst_ogsr, input_a0_rst_sig, SR1);
    or INST2 (input_a1_rst_ogsr, input_a1_rst_sig, SR1);
    or INST3 (input_b0_rst_ogsr, input_b0_rst_sig, SR1);
    or INST4 (input_b1_rst_ogsr, input_b1_rst_sig, SR1);
    or INST5 (pipeline0_rst_ogsr, pipeline0_rst_sig, SR1);
    or INST6 (pipeline1_rst_ogsr, pipeline1_rst_sig, SR1);
    or INST7 (output_rst_ogsr, output_rst_sig, SR1);
    or INST8 (reg_signeda_0_rst_ogsr, reg_signeda_0_rst_sig, SR1);
    or INST9 (reg_signeda_1_rst_ogsr, reg_signeda_1_rst_sig, SR1);
    or INST18 (reg_signedb_0_rst_ogsr, reg_signedb_0_rst_sig, SR1);
    or INST19 (reg_signedb_1_rst_ogsr, reg_signedb_1_rst_sig, SR1);
    or INST10 (reg_addnsub_0_rst_ogsr, reg_addnsub_0_rst_sig, SR1);
    or INST11 (reg_addnsub_1_rst_ogsr, reg_addnsub_1_rst_sig, SR1);

    buf (CE0b, CE0);
    buf (CE1b, CE1);
    buf (CE2b, CE2);
    buf (CE3b, CE3);
    buf (CLK0b, CLK0);
    buf (CLK1b, CLK1);
    buf (CLK2b, CLK2);
    buf (CLK3b, CLK3);
    buf (RST0b, RST0);
    buf (RST1b, RST1);
    buf (RST2b, RST2);
    buf (RST3b, RST3);

    buf inst_A00 (a0_sig[0], A00);
    buf inst_A01 (a0_sig[1], A01);
    buf inst_A02 (a0_sig[2], A02);
    buf inst_A03 (a0_sig[3], A03);
    buf inst_A04 (a0_sig[4], A04);
    buf inst_A05 (a0_sig[5], A05);
    buf inst_A06 (a0_sig[6], A06);
    buf inst_A07 (a0_sig[7], A07);
    buf inst_A08 (a0_sig[8], A08);
    buf inst_B00 (b0_sig[0], B00);
    buf inst_B01 (b0_sig[1], B01);
    buf inst_B02 (b0_sig[2], B02);
    buf inst_B03 (b0_sig[3], B03);
    buf inst_B04 (b0_sig[4], B04);
    buf inst_B05 (b0_sig[5], B05);
    buf inst_B06 (b0_sig[6], B06);
    buf inst_B07 (b0_sig[7], B07);
    buf inst_B08 (b0_sig[8], B08);

    buf inst_A10 (a1_sig[0], A10);
    buf inst_A11 (a1_sig[1], A11);
    buf inst_A12 (a1_sig[2], A12);
    buf inst_A13 (a1_sig[3], A13);
    buf inst_A14 (a1_sig[4], A14);
    buf inst_A15 (a1_sig[5], A15);
    buf inst_A16 (a1_sig[6], A16);
    buf inst_A17 (a1_sig[7], A17);
    buf inst_A18 (a1_sig[8], A18);
    buf inst_B10 (b1_sig[0], B10);
    buf inst_B11 (b1_sig[1], B11);
    buf inst_B12 (b1_sig[2], B12);
    buf inst_B13 (b1_sig[3], B13);
    buf inst_B14 (b1_sig[4], B14);
    buf inst_B15 (b1_sig[5], B15);
    buf inst_B16 (b1_sig[6], B16);
    buf inst_B17 (b1_sig[7], B17);
    buf inst_B18 (b1_sig[8], B18);

    buf inst_SIGNEDA (signeda_sig, SIGNEDA);
    buf inst_SIGNEDB (signedb_sig, SIGNEDB);
    buf inst_ADDNSUB (addnsub_sig, ADDNSUB);
    buf inst_SOURCEA0 (sourcea0_sig, SOURCEA0);
    buf inst_SOURCEA1 (sourcea1_sig, SOURCEA1);
    buf inst_SOURCEB0 (sourceb0_sig, SOURCEB0);
    buf inst_SOURCEB1 (sourceb1_sig, SOURCEB1);

    buf inst_s_A0 (a_sig_s[0], SRIA0);
    buf inst_s_A1 (a_sig_s[1], SRIA1);
    buf inst_s_A2 (a_sig_s[2], SRIA2);
    buf inst_s_A3 (a_sig_s[3], SRIA3);
    buf inst_s_A4 (a_sig_s[4], SRIA4);
    buf inst_s_A5 (a_sig_s[5], SRIA5);
    buf inst_s_A6 (a_sig_s[6], SRIA6);
    buf inst_s_A7 (a_sig_s[7], SRIA7);
    buf inst_s_A8 (a_sig_s[8], SRIA8);

    buf inst_s_B0 (b_sig_s[0], SRIB0);
    buf inst_s_B1 (b_sig_s[1], SRIB1);
    buf inst_s_B2 (b_sig_s[2], SRIB2);
    buf inst_s_B3 (b_sig_s[3], SRIB3);
    buf inst_s_B4 (b_sig_s[4], SRIB4);
    buf inst_s_B5 (b_sig_s[5], SRIB5);
    buf inst_s_B6 (b_sig_s[6], SRIB6);
    buf inst_s_B7 (b_sig_s[7], SRIB7);
    buf inst_s_B8 (b_sig_s[8], SRIB8);

    buf inst_SUM0 (SUM0, sum_o[0]);
    buf inst_SUM1 (SUM1, sum_o[1]);
    buf inst_SUM2 (SUM2, sum_o[2]);
    buf inst_SUM3 (SUM3, sum_o[3]);
    buf inst_SUM4 (SUM4, sum_o[4]);
    buf inst_SUM5 (SUM5, sum_o[5]);
    buf inst_SUM6 (SUM6, sum_o[6]);
    buf inst_SUM7 (SUM7, sum_o[7]);
    buf inst_SUM8 (SUM8, sum_o[8]);
    buf inst_SUM9 (SUM9, sum_o[9]);
    buf inst_SUM10 (SUM10, sum_o[10]);
    buf inst_SUM11 (SUM11, sum_o[11]);
    buf inst_SUM12 (SUM12, sum_o[12]);
    buf inst_SUM13 (SUM13, sum_o[13]);
    buf inst_SUM14 (SUM14, sum_o[14]);
    buf inst_SUM15 (SUM15, sum_o[15]);
    buf inst_SUM16 (SUM16, sum_o[16]);
    buf inst_SUM17 (SUM17, sum_o[17]);
    buf inst_SUM18 (SUM18, sum_o[18]);

    buf inst_SROA0 (SROA0, sroa_reg1[0]);
    buf inst_SROA1 (SROA1, sroa_reg1[1]);
    buf inst_SROA2 (SROA2, sroa_reg1[2]);
    buf inst_SROA3 (SROA3, sroa_reg1[3]);
    buf inst_SROA4 (SROA4, sroa_reg1[4]);
    buf inst_SROA5 (SROA5, sroa_reg1[5]);
    buf inst_SROA6 (SROA6, sroa_reg1[6]);
    buf inst_SROA7 (SROA7, sroa_reg1[7]);
    buf inst_SROA8 (SROA8, sroa_reg1[8]);

    buf inst_SROB0 (SROB0, srob_reg1[0]);
    buf inst_SROB1 (SROB1, srob_reg1[1]);
    buf inst_SROB2 (SROB2, srob_reg1[2]);
    buf inst_SROB3 (SROB3, srob_reg1[3]);
    buf inst_SROB4 (SROB4, srob_reg1[4]);
    buf inst_SROB5 (SROB5, srob_reg1[5]);
    buf inst_SROB6 (SROB6, srob_reg1[6]);
    buf inst_SROB7 (SROB7, srob_reg1[7]);
    buf inst_SROB8 (SROB8, srob_reg1[8]);

    always @(a0_sig_gen or signeda_p1)
    begin
      if (signeda_p1 == 1'b1)
        begin
          a0_sig_m[8:0] = a0_sig_gen[8:0];
          a0_sig_m[17:9] = { a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8],
                            a0_sig_gen[8]};
        end
      else 
        begin
          a0_sig_m[8:0] =  a0_sig_gen[8:0];
          a0_sig_m[17:9] = 0;
        end
    end

    always @(a1_sig_gen or signeda_p1)
    begin
      if (signeda_p1 == 1'b1)
        begin
          a1_sig_m[8:0] = a1_sig_gen[8:0];
          a1_sig_m[17:9] = { a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8],
                            a1_sig_gen[8]};
        end
      else 
        begin
          a1_sig_m[8:0] =  a1_sig_gen[8:0];
          a1_sig_m[17:9] = 0;
        end
    end

    always @(b0_sig_gen or signedb_p1)
    begin
      if (signedb_p1 == 1'b1)
        begin
          b0_sig_m[8:0] = b0_sig_gen[8:0];
          b0_sig_m[17:9] = {b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8],
                           b0_sig_gen[8]};
        end
      else 
        begin
          b0_sig_m[8:0] = b0_sig_gen[8:0];
          b0_sig_m[17:9] = 0;
        end
    end

    always @(b1_sig_gen or signedb_p1)
    begin
      if (signedb_p1 == 1'b1)
        begin
          b1_sig_m[8:0] = b1_sig_gen[8:0];
          b1_sig_m[17:9] = {b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8],
                           b1_sig_gen[8]};
        end
      else 
        begin
          b1_sig_m[8:0] = b1_sig_gen[8:0];
          b1_sig_m[17:9] = 0;
        end
    end

    always @(a_sig_s or a0_sig or sourcea0_sig)
    begin
      if (sourcea0_sig == 1'b1)
          a0_sig_s_1 = a_sig_s;
      else if (sourcea0_sig == 1'b0)
          a0_sig_s_1 = a0_sig;
    end

    always @(sroa_reg or a1_sig or sourcea1_sig)
    begin
      if (sourcea1_sig == 1'b1)
          a1_sig_s_1 = sroa_reg;
      else if (sourcea1_sig == 1'b0)
          a1_sig_s_1 = a1_sig;
    end

    always @(b_sig_s or b0_sig or sourceb0_sig)
    begin
      if (sourceb0_sig == 1'b1)
          b0_sig_s_1 = b_sig_s;
      else if (sourceb0_sig == 1'b0)
          b0_sig_s_1 = b0_sig;
    end

    always @(srob_reg or b1_sig or sourceb1_sig)
    begin
      if (sourceb1_sig == 1'b1)
          b1_sig_s_1 = srob_reg;
      else if (sourceb1_sig == 1'b0)
          b1_sig_s_1 = b1_sig;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_INPUTA0_CLK == "CLK0")
          input_a0_clk_sig = CLK0b;
      else if (REG_INPUTA0_CLK == "CLK1")
          input_a0_clk_sig = CLK1b;
      else if (REG_INPUTA0_CLK == "CLK2")
          input_a0_clk_sig = CLK2b;
      else if (REG_INPUTA0_CLK == "CLK3")
          input_a0_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_INPUTA1_CLK == "CLK0")
          input_a1_clk_sig = CLK0b;
      else if (REG_INPUTA1_CLK == "CLK1")
          input_a1_clk_sig = CLK1b;
      else if (REG_INPUTA1_CLK == "CLK2")
          input_a1_clk_sig = CLK2b;
      else if (REG_INPUTA1_CLK == "CLK3")
          input_a1_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_INPUTB0_CLK == "CLK0")
          input_b0_clk_sig = CLK0b;
      else if (REG_INPUTB0_CLK == "CLK1")
          input_b0_clk_sig = CLK1b;
      else if (REG_INPUTB0_CLK == "CLK2")
          input_b0_clk_sig = CLK2b;
      else if (REG_INPUTB0_CLK == "CLK3")
          input_b0_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_INPUTB1_CLK == "CLK0")
          input_b1_clk_sig = CLK0b;
      else if (REG_INPUTB1_CLK == "CLK1")
          input_b1_clk_sig = CLK1b;
      else if (REG_INPUTB1_CLK == "CLK2")
          input_b1_clk_sig = CLK2b;
      else if (REG_INPUTB1_CLK == "CLK3")
          input_b1_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_PIPELINE0_CLK == "CLK0")
          pipeline0_clk_sig = CLK0b;
      else if (REG_PIPELINE0_CLK == "CLK1")
          pipeline0_clk_sig = CLK1b;
      else if (REG_PIPELINE0_CLK == "CLK2")
          pipeline0_clk_sig = CLK2b;
      else if (REG_PIPELINE0_CLK == "CLK3")
          pipeline0_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_PIPELINE1_CLK == "CLK0")
          pipeline1_clk_sig = CLK0b;
      else if (REG_PIPELINE1_CLK == "CLK1")
          pipeline1_clk_sig = CLK1b;
      else if (REG_PIPELINE1_CLK == "CLK2")
          pipeline1_clk_sig = CLK2b;
      else if (REG_PIPELINE1_CLK == "CLK3")
          pipeline1_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_SIGNEDA_0_CLK == "CLK0")
          reg_signeda_0_clk_sig = CLK0b;
      else if (REG_SIGNEDA_0_CLK == "CLK1")
          reg_signeda_0_clk_sig = CLK1b;
      else if (REG_SIGNEDA_0_CLK == "CLK2")
          reg_signeda_0_clk_sig = CLK2b;
      else if (REG_SIGNEDA_0_CLK == "CLK3")
          reg_signeda_0_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_SIGNEDB_0_CLK == "CLK0")
          reg_signedb_0_clk_sig = CLK0b;
      else if (REG_SIGNEDB_0_CLK == "CLK1")
          reg_signedb_0_clk_sig = CLK1b;
      else if (REG_SIGNEDB_0_CLK == "CLK2")
          reg_signedb_0_clk_sig = CLK2b;
      else if (REG_SIGNEDB_0_CLK == "CLK3")
          reg_signedb_0_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_SIGNEDA_1_CLK == "CLK0")
          reg_signeda_1_clk_sig = CLK0b;
      else if (REG_SIGNEDB_1_CLK == "CLK1")
          reg_signeda_1_clk_sig = CLK1b;
      else if (REG_SIGNEDB_1_CLK == "CLK2")
          reg_signeda_1_clk_sig = CLK2b;
      else if (REG_SIGNEDB_1_CLK == "CLK3")
          reg_signeda_1_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_SIGNEDB_1_CLK == "CLK0")
          reg_signedb_1_clk_sig = CLK0b;
      else if (REG_SIGNEDB_1_CLK == "CLK1")
          reg_signedb_1_clk_sig = CLK1b;
      else if (REG_SIGNEDB_1_CLK == "CLK2")
          reg_signedb_1_clk_sig = CLK2b;
      else if (REG_SIGNEDB_1_CLK == "CLK3")
          reg_signedb_1_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_ADDNSUB_0_CLK == "CLK0")
          reg_addnsub_0_clk_sig = CLK0b;
      else if (REG_ADDNSUB_0_CLK == "CLK1")
          reg_addnsub_0_clk_sig = CLK1b;
      else if (REG_ADDNSUB_0_CLK == "CLK2")
          reg_addnsub_0_clk_sig = CLK2b;
      else if (REG_ADDNSUB_0_CLK == "CLK3")
          reg_addnsub_0_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_ADDNSUB_1_CLK == "CLK0")
          reg_addnsub_1_clk_sig = CLK0b;
      else if (REG_ADDNSUB_1_CLK == "CLK1")
          reg_addnsub_1_clk_sig = CLK1b;
      else if (REG_ADDNSUB_1_CLK == "CLK2")
          reg_addnsub_1_clk_sig = CLK2b;
      else if (REG_ADDNSUB_1_CLK == "CLK3")
          reg_addnsub_1_clk_sig = CLK3b;
    end

    always @(CLK0b or CLK1b or CLK2b or CLK3b)
    begin
      if (REG_OUTPUT_CLK == "CLK0")
          output_clk_sig = CLK0b;
      else if (REG_OUTPUT_CLK == "CLK1")
          output_clk_sig = CLK1b;
      else if (REG_OUTPUT_CLK == "CLK2")
          output_clk_sig = CLK2b;
      else if (REG_OUTPUT_CLK == "CLK3")
          output_clk_sig = CLK3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_INPUTA0_CE == "CE0")
          input_a0_ce_sig = CE0b;
      else if (REG_INPUTA0_CE == "CE1")
          input_a0_ce_sig = CE1b;
      else if (REG_INPUTA0_CE == "CE2")
          input_a0_ce_sig = CE2b;
      else if (REG_INPUTA0_CE == "CE3")
          input_a0_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_INPUTA1_CE == "CE0")
          input_a1_ce_sig = CE0b;
      else if (REG_INPUTA1_CE == "CE1")
          input_a1_ce_sig = CE1b;
      else if (REG_INPUTA1_CE == "CE2")
          input_a1_ce_sig = CE2b;
      else if (REG_INPUTA1_CE == "CE3")
          input_a1_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_INPUTB0_CE == "CE0")
          input_b0_ce_sig = CE0b;
      else if (REG_INPUTB0_CE == "CE1")
          input_b0_ce_sig = CE1b;
      else if (REG_INPUTB0_CE == "CE2")
          input_b0_ce_sig = CE2b;
      else if (REG_INPUTB0_CE == "CE3")
          input_b0_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_INPUTB1_CE == "CE0")
          input_b1_ce_sig = CE0b;
      else if (REG_INPUTB1_CE == "CE1")
          input_b1_ce_sig = CE1b;
      else if (REG_INPUTB1_CE == "CE2")
          input_b1_ce_sig = CE2b;
      else if (REG_INPUTB1_CE == "CE3")
          input_b1_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_PIPELINE0_CE == "CE0")
          pipeline0_ce_sig = CE0b;
      else if (REG_PIPELINE0_CE == "CE1")
          pipeline0_ce_sig = CE1b;
      else if (REG_PIPELINE0_CE == "CE2")
          pipeline0_ce_sig = CE2b;
      else if (REG_PIPELINE0_CE == "CE3")
          pipeline0_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_PIPELINE1_CE == "CE0")
          pipeline1_ce_sig = CE0b;
      else if (REG_PIPELINE1_CE == "CE1")
          pipeline1_ce_sig = CE1b;
      else if (REG_PIPELINE1_CE == "CE2")
          pipeline1_ce_sig = CE2b;
      else if (REG_PIPELINE1_CE == "CE3")
          pipeline1_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_OUTPUT_CE == "CE0")
          output_ce_sig = CE0b;
      else if (REG_OUTPUT_CE == "CE1")
          output_ce_sig = CE1b;
      else if (REG_OUTPUT_CE == "CE2")
          output_ce_sig = CE2b;
      else if (REG_OUTPUT_CE == "CE3")
          output_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_SIGNEDA_0_CE == "CE0")
          reg_signeda_0_ce_sig = CE0b;
      else if (REG_SIGNEDA_0_CE == "CE1")
          reg_signeda_0_ce_sig = CE1b;
      else if (REG_SIGNEDA_0_CE == "CE2")
          reg_signeda_0_ce_sig = CE2b;
      else if (REG_SIGNEDA_0_CE == "CE3")
          reg_signeda_0_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_SIGNEDB_0_CE == "CE0")
          reg_signedb_0_ce_sig = CE0b;
      else if (REG_SIGNEDB_0_CE == "CE1")
          reg_signedb_0_ce_sig = CE1b;
      else if (REG_SIGNEDB_0_CE == "CE2")
          reg_signedb_0_ce_sig = CE2b;
      else if (REG_SIGNEDB_0_CE == "CE3")
          reg_signedb_0_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_SIGNEDA_1_CE == "CE0")
          reg_signeda_1_ce_sig = CE0b;
      else if (REG_SIGNEDA_1_CE == "CE1")
          reg_signeda_1_ce_sig = CE1b;
      else if (REG_SIGNEDA_1_CE == "CE2")
          reg_signeda_1_ce_sig = CE2b;
      else if (REG_SIGNEDA_1_CE == "CE3")
          reg_signeda_1_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_SIGNEDB_1_CE == "CE0")
          reg_signedb_1_ce_sig = CE0b;
      else if (REG_SIGNEDB_1_CE == "CE1")
          reg_signedb_1_ce_sig = CE1b;
      else if (REG_SIGNEDB_1_CE == "CE2")
          reg_signedb_1_ce_sig = CE2b;
      else if (REG_SIGNEDB_1_CE == "CE3")
          reg_signedb_1_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_ADDNSUB_0_CE == "CE0")
          reg_addnsub_0_ce_sig = CE0b;
      else if (REG_ADDNSUB_0_CE == "CE1")
          reg_addnsub_0_ce_sig = CE1b;
      else if (REG_ADDNSUB_0_CE == "CE2")
          reg_addnsub_0_ce_sig = CE2b;
      else if (REG_ADDNSUB_0_CE == "CE3")
          reg_addnsub_0_ce_sig = CE3b;
    end

    always @(CE0b or CE1b or CE2b or CE3b)
    begin
      if (REG_ADDNSUB_1_CE == "CE0")
          reg_addnsub_1_ce_sig = CE0b;
      else if (REG_ADDNSUB_1_CE == "CE1")
          reg_addnsub_1_ce_sig = CE1b;
      else if (REG_ADDNSUB_1_CE == "CE2")
          reg_addnsub_1_ce_sig = CE2b;
      else if (REG_ADDNSUB_1_CE == "CE3")
          reg_addnsub_1_ce_sig = CE3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_INPUTA0_RST == "RST0")
          input_a0_rst_sig = RST0b;
      else if (REG_INPUTA0_RST == "RST1")
          input_a0_rst_sig = RST1b;
      else if (REG_INPUTA0_RST == "RST2")
          input_a0_rst_sig = RST2b;
      else if (REG_INPUTA0_RST == "RST3")
          input_a0_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_INPUTA1_RST == "RST0")
          input_a1_rst_sig = RST0b;
      else if (REG_INPUTA1_RST == "RST1")
          input_a1_rst_sig = RST1b;
      else if (REG_INPUTA1_RST == "RST2")
          input_a1_rst_sig = RST2b;
      else if (REG_INPUTA1_RST == "RST3")
          input_a1_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_INPUTB0_RST == "RST0")
          input_b0_rst_sig = RST0b;
      else if (REG_INPUTB0_RST == "RST1")
          input_b0_rst_sig = RST1b;
      else if (REG_INPUTB0_RST == "RST2")
          input_b0_rst_sig = RST2b;
      else if (REG_INPUTB0_RST == "RST3")
          input_b0_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_INPUTB1_RST == "RST0")
          input_b1_rst_sig = RST0b;
      else if (REG_INPUTB1_RST == "RST1")
          input_b1_rst_sig = RST1b;
      else if (REG_INPUTB1_RST == "RST2")
          input_b1_rst_sig = RST2b;
      else if (REG_INPUTB1_RST == "RST3")
          input_b1_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_PIPELINE0_RST == "RST0")
          pipeline0_rst_sig = RST0b;
      else if (REG_PIPELINE0_RST == "RST1")
          pipeline0_rst_sig = RST1b;
      else if (REG_PIPELINE0_RST == "RST2")
          pipeline0_rst_sig = RST2b;
      else if (REG_PIPELINE0_RST == "RST3")
          pipeline0_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_PIPELINE1_RST == "RST0")
          pipeline1_rst_sig = RST0b;
      else if (REG_PIPELINE1_RST == "RST1")
          pipeline1_rst_sig = RST1b;
      else if (REG_PIPELINE1_RST == "RST2")
          pipeline1_rst_sig = RST2b;
      else if (REG_PIPELINE1_RST == "RST3")
          pipeline1_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_OUTPUT_RST == "RST0")
          output_rst_sig = RST0b;
      else if (REG_OUTPUT_RST == "RST1")
          output_rst_sig = RST1b;
      else if (REG_OUTPUT_RST == "RST2")
          output_rst_sig = RST2b;
      else if (REG_OUTPUT_RST == "RST3")
          output_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_SIGNEDA_0_RST == "RST0")
          reg_signeda_0_rst_sig = RST0b;
      else if (REG_SIGNEDA_0_RST == "RST1")
          reg_signeda_0_rst_sig = RST1b;
      else if (REG_SIGNEDA_0_RST == "RST2")
          reg_signeda_0_rst_sig = RST2b;
      else if (REG_SIGNEDA_0_RST == "RST3")
          reg_signeda_0_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_SIGNEDB_0_RST == "RST0")
          reg_signedb_0_rst_sig = RST0b;
      else if (REG_SIGNEDB_0_RST == "RST1")
          reg_signedb_0_rst_sig = RST1b;
      else if (REG_SIGNEDB_0_RST == "RST2")
          reg_signedb_0_rst_sig = RST2b;
      else if (REG_SIGNEDB_0_RST == "RST3")
          reg_signedb_0_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_SIGNEDA_1_RST == "RST0")
          reg_signeda_1_rst_sig = RST0b;
      else if (REG_SIGNEDA_1_RST == "RST1")
          reg_signeda_1_rst_sig = RST1b;
      else if (REG_SIGNEDA_1_RST == "RST2")
          reg_signeda_1_rst_sig = RST2b;
      else if (REG_SIGNEDA_1_RST == "RST3")
          reg_signeda_1_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_SIGNEDB_1_RST == "RST0")
          reg_signedb_1_rst_sig = RST0b;
      else if (REG_SIGNEDB_1_RST == "RST1")
          reg_signedb_1_rst_sig = RST1b;
      else if (REG_SIGNEDB_1_RST == "RST2")
          reg_signedb_1_rst_sig = RST2b;
      else if (REG_SIGNEDB_1_RST == "RST3")
          reg_signedb_1_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_ADDNSUB_0_RST == "RST0")
          reg_addnsub_0_rst_sig = RST0b;
      else if (REG_ADDNSUB_0_RST == "RST1")
          reg_addnsub_0_rst_sig = RST1b;
      else if (REG_ADDNSUB_0_RST == "RST2")
          reg_addnsub_0_rst_sig = RST2b;
      else if (REG_ADDNSUB_0_RST == "RST3")
          reg_addnsub_0_rst_sig = RST3b;
    end

    always @(RST0b or RST1b or RST2b or RST3b)
    begin
      if (REG_ADDNSUB_1_RST == "RST0")
          reg_addnsub_1_rst_sig = RST0b;
      else if (REG_ADDNSUB_1_RST == "RST1")
          reg_addnsub_1_rst_sig = RST1b;
      else if (REG_ADDNSUB_1_RST == "RST2")
          reg_addnsub_1_rst_sig = RST2b;
      else if (REG_ADDNSUB_1_RST == "RST3")
          reg_addnsub_1_rst_sig = RST3b;
    end

    always @(posedge input_a0_clk_sig or posedge input_a0_rst_ogsr)
    begin
      if (input_a0_rst_ogsr == 1'b1)
        begin
          a0_sig_reg <= 0;
        end
      else if (input_a0_ce_sig == 1'b1)
        begin
          a0_sig_reg <= a0_sig_s_1;
        end
    end

    always @(posedge input_a1_clk_sig or posedge input_a1_rst_ogsr)
    begin
      if (input_a1_rst_ogsr == 1'b1)
        begin
          a1_sig_reg <= 0;
        end
      else if (input_a1_ce_sig == 1'b1)
        begin
          a1_sig_reg <= a1_sig_s_1;
        end
    end

    always @(a0_sig_s_1 or a0_sig_reg)
    begin
      if (REG_INPUTA0_CLK == "NONE")
          a0_sig_gen = a0_sig_s_1;
      else
          a0_sig_gen = a0_sig_reg;
    end

    always @(a1_sig_s_1 or a1_sig_reg)
    begin
      if (REG_INPUTA1_CLK == "NONE")
          a1_sig_gen = a1_sig_s_1;
      else
          a1_sig_gen = a1_sig_reg;
    end

    assign sroa_reg = a0_sig_gen;
    assign sroa_reg1 = a1_sig_gen;

    always @(posedge input_b0_clk_sig or posedge input_b0_rst_ogsr)
    begin
      if (input_b0_rst_ogsr == 1'b1)
        begin
          b0_sig_reg <= 0;
        end
      else if (input_b0_ce_sig == 1'b1)
        begin
          b0_sig_reg <= b0_sig_s_1;
        end
    end

    always @(posedge input_b1_clk_sig or posedge input_b1_rst_ogsr)
    begin
      if (input_b1_rst_ogsr == 1'b1)
        begin
          b1_sig_reg <= 0;
        end
      else if (input_b1_ce_sig == 1'b1)
        begin
          b1_sig_reg <= b1_sig_s_1;
        end
    end

    always @(b0_sig_s_1 or b0_sig_reg)
    begin
      if (REG_INPUTB0_CLK == "NONE")
          b0_sig_gen = b0_sig_s_1;
      else
          b0_sig_gen = b0_sig_reg;
    end

    always @(b1_sig_s_1 or b1_sig_reg)
    begin
      if (REG_INPUTB1_CLK == "NONE")
          b1_sig_gen = b1_sig_s_1;
      else
          b1_sig_gen = b1_sig_reg;
    end

    assign srob_reg = b0_sig_gen;
    assign srob_reg1 = b1_sig_gen;

    always @(posedge reg_signeda_0_clk_sig or posedge reg_signeda_0_rst_ogsr)
    begin
      if (reg_signeda_0_rst_ogsr == 1'b1)
        begin
          signeda_reg1 <= 0;
        end
      else if (reg_signeda_0_ce_sig == 1'b1)
        begin
          signeda_reg1 <= signeda_sig;
        end
    end

    always @(posedge reg_signedb_0_clk_sig or posedge reg_signedb_0_rst_ogsr)
    begin
      if (reg_signedb_0_rst_ogsr == 1'b1)
        begin
          signedb_reg1 <= 0;
        end
      else if (reg_signedb_0_ce_sig == 1'b1)
        begin
          signedb_reg1 <= signedb_sig;
        end
    end

    always @(posedge reg_signeda_1_clk_sig or posedge reg_signeda_1_rst_ogsr)
    begin
      if (reg_signeda_1_rst_ogsr == 1'b1)
        begin
          signeda_reg2 <= 0;
        end
      else if (reg_signeda_1_ce_sig == 1'b1)
        begin
          signeda_reg2 <= signeda_p1;
        end
    end

    always @(posedge reg_signedb_1_clk_sig or posedge reg_signedb_1_rst_ogsr)
    begin
      if (reg_signedb_1_rst_ogsr == 1'b1)
        begin
          signedb_reg2 <= 0;
        end
      else if (reg_signedb_1_ce_sig == 1'b1)
        begin
          signedb_reg2 <= signedb_p1;
        end
    end

    always @(signeda_sig or signeda_reg1)
    begin
      if (REG_SIGNEDA_0_CLK == "NONE")
          signeda_p1 = signeda_sig;
      else 
          signeda_p1 = signeda_reg1;
    end

    always @(signedb_sig or signedb_reg1)
    begin
      if (REG_SIGNEDB_0_CLK == "NONE")
          signedb_p1 = signedb_sig;
      else
          signedb_p1 = signedb_reg1;
    end

    always @(signeda_p1 or signeda_reg2)
    begin
      if (REG_SIGNEDA_1_CLK == "NONE")
          signeda_p2 = signeda_p1;
      else 
          signeda_p2 = signeda_reg2;
    end

    always @(signedb_p1 or signedb_reg2)
    begin
      if (REG_SIGNEDB_1_CLK == "NONE")
          signedb_p2 = signedb_p1;
      else
          signedb_p2 = signedb_reg2;
    end

    always @(posedge reg_addnsub_0_clk_sig or posedge reg_addnsub_0_rst_ogsr)
    begin
      if (reg_addnsub_0_rst_ogsr == 1'b1)
        begin
          addnsub_reg1 <= 0;
        end
      else if (reg_addnsub_0_ce_sig == 1'b1)
        begin
          addnsub_reg1 <= addnsub_sig;
        end
    end

    always @(posedge reg_addnsub_1_clk_sig or posedge reg_addnsub_1_rst_ogsr)
    begin
      if (reg_addnsub_1_rst_ogsr == 1'b1)
        begin
          addnsub_reg2 <= 0;
        end
      else if (reg_addnsub_1_ce_sig == 1'b1)
        begin
          addnsub_reg2 <= addnsub_p1;
        end
    end

    always @(addnsub_sig or addnsub_reg1)
    begin
      if (REG_ADDNSUB_0_CLK == "NONE")
          addnsub_p1 = addnsub_sig;
      else 
          addnsub_p1 = addnsub_reg1;
    end

    always @(addnsub_p1 or addnsub_reg2)
    begin
      if (REG_ADDNSUB_1_CLK == "NONE")
          addnsub_p2 = addnsub_p1;
      else 
          addnsub_p2 = addnsub_reg2;
    end

    assign p0_sig_i = (!a0_sig_m || !b0_sig_m)? 0 : a0_sig_m * b0_sig_m ;
    assign p1_sig_i = (!a1_sig_m || !b1_sig_m)? 0 : a1_sig_m * b1_sig_m ;

    always @(p0_sig_i_e_reg1 or signeda_p2 or signedb_p2)
    begin
      if ((signeda_p2 || signedb_p2) == 1'b1)
        begin
           p0_sig_i_e[17:0] = p0_sig_i_e_reg1;
           p0_sig_i_e[18] = p0_sig_i_e_reg1[17];
        end
      else 
        begin
           p0_sig_i_e[17:0] = p0_sig_i_e_reg1;
           p0_sig_i_e[18] = 0;
        end
    end

    always @(p1_sig_i_e_reg1 or signeda_p2 or signedb_p2)
    begin
      if ((signeda_p2 || signedb_p2) == 1'b1)
        begin
           p1_sig_i_e[17:0] = p1_sig_i_e_reg1;
           p1_sig_i_e[18] = p1_sig_i_e_reg1[17];
        end
      else 
        begin
           p1_sig_i_e[17:0] = p1_sig_i_e_reg1;
           p1_sig_i_e[18] = 0;
        end
    end

    always @(posedge pipeline0_clk_sig or posedge pipeline0_rst_ogsr)
    begin
      if (pipeline0_rst_ogsr == 1'b1)
          p0_sig_i_e_reg <= 0;
      else if (pipeline0_ce_sig == 1'b1)
          p0_sig_i_e_reg <= p0_sig_i;
    end

    always @(p0_sig_i or p0_sig_i_e_reg)
    begin
      if (REG_PIPELINE0_CLK == "NONE")
          p0_sig_i_e_reg1 = p0_sig_i;
      else 
          p0_sig_i_e_reg1 = p0_sig_i_e_reg;
    end

    always @(posedge pipeline1_clk_sig or posedge pipeline1_rst_ogsr)
    begin
      if (pipeline1_rst_ogsr == 1'b1)
          p1_sig_i_e_reg <= 0;
      else if (pipeline1_ce_sig == 1'b1)
          p1_sig_i_e_reg <= p1_sig_i;
    end

    always @(p1_sig_i or p1_sig_i_e_reg)
    begin
      if (REG_PIPELINE1_CLK == "NONE")
          p1_sig_i_e_reg1 = p1_sig_i;
      else 
          p1_sig_i_e_reg1 = p1_sig_i_e_reg;
    end

    assign sum_sig_i = addnsub_p2 ? (p0_sig_i_e + p1_sig_i_e) : (p0_sig_i_e - p1_sig_i_e); 

    always @(posedge output_clk_sig or posedge output_rst_ogsr)
    begin
      if (output_rst_ogsr == 1'b1)
          sum_reg1 <= 0;
      else if (output_ce_sig == 1'b1)
          sum_reg1 <= sum_sig_i;
    end


    always @(sum_sig_i or sum_reg1)
    begin
      if (REG_OUTPUT_CLK == "NONE")
          //sum_o_1 = sum_sig_i;
          sum_o = sum_sig_i;
      else 
          //sum_o_1 = sum_reg1;
          sum_o = sum_reg1;
    end

endmodule

`endcelldefine
