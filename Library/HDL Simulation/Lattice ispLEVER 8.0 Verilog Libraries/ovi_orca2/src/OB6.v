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
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca2/RCS/OB6.v,v 1.3 2005/05/19 18:06:16 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 100 ps

/* Created by DB2VERILOG Version 1.0.1.1 on Sat May 14 11:55:45 1994 */
/* module compiled from "lsl2db 3.6.4" run */

`celldefine
module OB6 (I, O);
input  I;
output O;

`ifdef TSALL_SIGNAL
wire TSALL = `TSALL_SIGNAL;
`else
pullup (weak1) (TSALL);
`endif

bufif1 INST2 (O, I, TSALL);

endmodule 
`endcelldefine
