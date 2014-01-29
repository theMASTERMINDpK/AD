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
// Simulation Library File for ORCA4
//
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca4/RCS/FL1P3JY.v,v 1.5 2005/05/19 19:01:22 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 1 ps

`celldefine

module FL1P3JY (D0, D1, SP, CK, SD, PD, Q, QN);
  parameter DISABLED_GSR = 0;
  input  D0, D1, SP, CK, SD, PD;
  output Q, QN;
  reg SRN, QR;
  reg notifier; 
  wire QB;

  tri1 GSR = GSR_INST.GSRNET;
  tri1 PUR = PUR_INST.PURNET;

  always @ (GSR or PUR ) begin
    if (DISABLED_GSR == 0) begin
      SRN = GSR & PUR ;
    end
    else if (DISABLED_GSR == 1)
      SRN = PUR;
  end

  not (SR, SRN);
  not(QN,QR);
  or INST34 (DATAIN, I38, I40);
  and INST35 (I38, D0, I43);
  and INST36 (I40, SD, D1);
  not INST37 (I43, SD);
  and INST52 (I60, SP, DATAIN);
  not INST53 (I61, SP);
  and INST54 (I59, QB, I61);
  or INST58 (I63, PD, I59, I60);

  UDFDL7_UDP_X INST6 (QB, I63, CK, SR, notifier);

  always @ QB
  begin
      QR <= QB;
  end

  buf (Q, QR);

endmodule

`endcelldefine
