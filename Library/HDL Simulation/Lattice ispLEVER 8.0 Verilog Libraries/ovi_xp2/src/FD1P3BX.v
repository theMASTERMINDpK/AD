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
// Simulation Library File for SC
//
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca5/RCS/FD1P3BX.v,v 1.6 2005/05/19 19:06:24 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 1 ps

`celldefine

module FD1P3BX (D, SP, CK, PD, Q);
  parameter GSR = "ENABLED";
  input  D, SP, CK ,PD;
  output Q;
  reg SRN, QR;
  reg notifier; 
  wire QB;

  tri1 GSR_sig = GSR_INST.GSRNET;
  tri1 PUR_sig = PUR_INST.PURNET;

  always @ (GSR_sig or PUR_sig ) begin
    if (GSR == "ENABLED") begin
      SRN = GSR_sig & PUR_sig ;
    end
    else if (GSR == "DISABLED")
      SRN = PUR_sig;
  end

  not (SR1, SRN);
  or INST1 (SR, PD, SR1);
  //not(QN,QB);

  UDFDL7E_UDP_X INST6 (QB, D, CK, SP, SR, notifier);

  always @ QB
  begin
      QR <= QB;
  end

  buf (Q, QR);

endmodule

`endcelldefine
