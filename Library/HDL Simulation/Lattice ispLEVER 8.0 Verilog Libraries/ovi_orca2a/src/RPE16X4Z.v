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
// Simulation Library File for ORCA2A
//
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca2a/RCS/RPE16X4Z.v,v 1.3 2005/05/19 18:26:22 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 100 ps
`celldefine

module RPE16X4Z (AD0, AD1, AD2, AD3, DI0, DI1, DI2, DI3, WREN, WPE, TRI,
       DO0, DO1, DO2, DO3);
input  AD0, AD1, AD2, AD3, DI0, DI1, DI2, DI3, WREN, WPE, TRI;
output DO0, DO1, DO2, DO3;

supply1 vdd;
supply0 vss;
parameter [63:0] first_value = 64'h0000000000000000;

defparam 
  INST5.INST5.init_value = first_value;
 

//wire DOUT0X, DOUT1X, DOUT2X, DOUT3X;
NOT INST25 (.A(PEWREN), .Z(I28));
AND2 INST1 (.A(WPE), .B(WREN), .Z(PEWREN)); 


RAM16X4 INST5 (.A0(AD0I), .A1(AD1I), .A2(AD2I), .A3(AD3I),
      .DSBL(TRI), .R_W(I28), .DIN0(DI0I), .DIN1(DI1I),
      .DIN2(DI2I), .DIN3(DI3I), .DOUT0(DO0), .DOUT1(DO1),
      .DOUT2(DO2), .DOUT3(DO3));
DELAY INST980 (.A(AD0), .Z(AD0I));
DELAY INST981 (.A(AD1), .Z(AD1I));
DELAY INST982 (.A(AD2), .Z(AD2I));
DELAY INST983 (.A(AD3), .Z(AD3I));
DELAY INST984 (.A(DI0), .Z(DI0I));
DELAY INST985 (.A(DI1), .Z(DI1I));
DELAY INST986 (.A(DI2), .Z(DI2I));
DELAY INST987 (.A(DI3), .Z(DI3I));

//DELAY INSTY06 (.A(DOUT0X), .Z(DO0));
//DELAY INSTY07 (.A(DOUT1X), .Z(DO1));
//DELAY INSTY08 (.A(DOUT2X), .Z(DO2));
//DELAY INSTY09 (.A(DOUT3X), .Z(DO3));


endmodule
`endcelldefine
