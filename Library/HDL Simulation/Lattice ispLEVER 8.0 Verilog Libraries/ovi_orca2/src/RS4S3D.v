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
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca2/RCS/RS4S3D.v,v 1.4 2005/05/19 18:06:30 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 10 ps

/* Created by DB2VERILOG Version 1.0.1.1 on Tue May 17 11:02:43 1994 */
/* module compiled from "lsl2db 3.6.4" run */

`celldefine
module RS4S3D (D, CK, CD, Q0, Q1, Q2, Q3);
input  D, CK, CD;
output Q0, Q1, Q2, Q3;
FD1S3DX INST1 (.D(D), .CK(CK), .CD(CD), .Q(Q0), .QN());
FD1S3DX INST2 (.D(Q0), .CK(CK), .CD(CD), .Q(Q1), .QN());
FD1S3DX INST3 (.D(Q1), .CK(CK), .CD(CD), .Q(Q2), .QN());
FD1S3DX INST4 (.D(Q2), .CK(CK), .CD(CD), .Q(Q3), .QN());

endmodule
`endcelldefine
