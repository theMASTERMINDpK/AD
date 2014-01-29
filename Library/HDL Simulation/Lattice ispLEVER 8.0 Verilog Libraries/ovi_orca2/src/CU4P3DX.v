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
// Simulation Library File for ORCA2
//
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca2/RCS/CU4P3DX.v,v 1.3 2005/05/19 18:05:33 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 100 ps

/* Created by DB2VERILOG Version 1.0.1.1 on Tue May 17 11:44:42 1994 */
/* module compiled from "lsl2db 3.6.4" run */


`celldefine
module CU4P3DX (CI, SP, CK, CD, CO, Q0, Q1, Q2, Q3);
input  CI, SP, CK, CD;
output CO, Q0, Q1, Q2, Q3;

`ifdef GSR_SIGNAL
wire GSR = `GSR_SIGNAL;
`else
pullup (weak1) (GSR);
`endif

CU4P3DX_GSR  g (.CI(CI), .SP(SP), .CK(CK), .CD(CD), .GSR(GSR), .CO(CO), .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3));

endmodule
`endcelldefine
