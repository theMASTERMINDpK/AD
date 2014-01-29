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
// $Header: /home/dmsys/pvcs/RCSMigTest/rcs/verilog/pkg/versclibs/data/orca4/RCS/ROM32X4.v,v 1.4 2005/05/19 19:02:12 pradeep Exp $ 
//
`resetall
`timescale 1 ns / 100 ps

`celldefine

module ROM32X4 ( AD0, AD1, AD2, AD3, AD4, CK,
                 DO0, DO1, DO2, DO3, QDO0, QDO1, QDO2, QDO3);

   input AD0, AD1, AD2, AD3, AD4, CK;
   output DO0, DO1, DO2, DO3, QDO0, QDO1, QDO2, QDO3;
   reg SRN;

   parameter [127:0] initval = 128'h00000000000000000000000000000000;
   parameter DISABLED_GSR = 0;

   defparam INST5.init_value = initval;
   defparam INST5.DISABLED_GSR = DISABLED_GSR;

  tri1 GSR = GSR_INST.GSRNET;
  tri1 PUR = PUR_INST.PURNET;

   SYN4RAM INST5 ({AD4b,AD3b,AD2b,AD1b,AD0b},CKb,GSR,PUR,{DO3b,DO2b,DO1b,DO0b},
                 {QDO3b,QDO2b,QDO1b,QDO0b});


  always @ (GSR or PUR ) begin
    if (DISABLED_GSR == 0) begin
      SRN = GSR & PUR ;
    end
    else if (DISABLED_GSR == 1)
      SRN = PUR;
  end

  not (SR, SRN);

   buf  (AD0b, AD0);
   buf  (AD1b, AD1);
   buf  (AD2b, AD2);
   buf  (AD3b, AD3);
   buf  (AD4b, AD4);
   buf  (CKb, CK);

   buf  (DO0, DO0b);
   buf  (DO1, DO1b);
   buf  (DO2, DO2b);
   buf  (DO3, DO3b);
   buf  (QDO0, QDO0b);
   buf  (QDO1, QDO1b);
   buf  (QDO2, QDO2b);
   buf  (QDO3, QDO3b);


endmodule

`endcelldefine
