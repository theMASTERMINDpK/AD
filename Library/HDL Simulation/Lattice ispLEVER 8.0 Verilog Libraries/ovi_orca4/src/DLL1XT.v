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
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca4/RCS/DLL1XT.v,v 1.4 2005/05/19 19:01:07 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 1 ps

`celldefine

module DLL1XT (CLKIN, ECLK, SCLK, LOCK);
   // The duty cycle is passed as a float.  The value must be equal to 
   // or greater than 1.5625 and less than 98.4375.  The value will be
   // rounded to the nearest 3.125 percent and will represent the
   // number of 32nds the output is high.
   parameter DIV0=1, DUTY=50.0, DISABLED_GSR=0;

   input     CLKIN;
   output    ECLK, SCLK, LOCK;

   wire      CLKIN;
   wire      ECLK, SCLK, LOCK;

  tri1 GSR = GSR_INST.GSRNET;
  tri1 PUR = PUR_INST.PURNET;

   DLL1X  U1  (.CLKIN(CLKIN), .ECLK(ECLK), .SCLK(SCLK),
	       .GSR(GSR), .PUR(PUR),
	       .LOCK(LOCK) );
   // The duty cycle is passed to the DLL1X as a Delay Tap Number.
   defparam  U1.dutycycle=DUTY;
   defparam  U1.DIV0=DIV0;
   defparam  U1.DISABLED_GSR=DISABLED_GSR;


endmodule

`endcelldefine



