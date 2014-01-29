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
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca2/RCS/FD1S3BX_GSR.v,v 1.2 2005/05/19 18:05:45 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 100 ps

/* Created by DB2VERILOG Version 1.0.1.1 on Tue Apr  5 13:49:37 1994 */
/* module compiled from "lsl2db 3.6.4" run */

module FD1S3BX_GSR (D, CK, PD, GSR, Q);
input  D, CK, PD, GSR;
output Q;
reg notifier; 
or INST37 (I28, PDI, I47);

not INST46 (I47, GSR);
UDFDL7_UDP_X INST6 (Q, D, CK, I28, notifier); 
buf INST997 (PDI, PD);

not (GSR_PD,I28);
not (BPD,PD);


endmodule

