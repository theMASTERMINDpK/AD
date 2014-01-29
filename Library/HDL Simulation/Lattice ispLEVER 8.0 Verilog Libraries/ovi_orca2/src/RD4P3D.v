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
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca2/RCS/RD4P3D.v,v 1.3 2005/05/19 18:06:25 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 100 ps

/* Created by DB2VERILOG Version 1.0.1.1 on Tue May 17 10:43:26 1994 */
/* module compiled from "lsl2db 3.6.4" run */

`celldefine
module RD4P3D (D0, D1, D2, D3, SP, CK, CD, Q0, Q1, Q2, Q3);
input  D0, D1, D2, D3, SP, CK, CD;
output Q0, Q1, Q2, Q3;
FD1P3DX INST1 (.D(D0), .SP(SP), .CK(CK), .CD(CD), .Q(Q0), .QN());
FD1P3DX INST2 (.D(D1), .SP(SP), .CK(CK), .CD(CD), .Q(Q1), .QN());
FD1P3DX INST3 (.D(D2), .SP(SP), .CK(CK), .CD(CD), .Q(Q2), .QN());
FD1P3DX INST4 (.D(D3), .SP(SP), .CK(CK), .CD(CD), .Q(Q3), .QN());

endmodule
`endcelldefine
