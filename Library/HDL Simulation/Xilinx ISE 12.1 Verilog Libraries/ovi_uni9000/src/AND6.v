// $Header: /devl/xcs/repo/env/Databases/CAEInterfaces/verunilibs/data/uni9000/AND6.v,v 1.4 2007/05/23 20:04:50 patrickp Exp $
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995/2004 Xilinx, Inc.
// All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor : Xilinx
// \   \   \/     Version : 7.1i (H.19)
//  \   \         Description : Xilinx Functional Simulation Library Component
//  /   /                  6-input AND Gate
// /___/   /\     Filename : AND6.v
// \   \  /  \    Timestamp : Thu Mar 25 16:41:33 PST 2004
//  \___\/\___\
//
// Revision:
//    03/23/04 - Initial version.
//    05/23/07 - Changed timescale to 1 ps / 1 ps.

`timescale  1 ps / 1 ps

`celldefine

module AND6 (O, I0, I1, I2, I3, I4, I5);


    output O;

    input  I0, I1, I2, I3, I4, I5;

    and A1 (O, I0, I1, I2, I3, I4, I5);

    specify
	(I0 *> O) = (0, 0);
	(I1 *> O) = (0, 0);
	(I2 *> O) = (0, 0);
	(I3 *> O) = (0, 0);
	(I4 *> O) = (0, 0);
	(I5 *> O) = (0, 0);
    endspecify

endmodule

`endcelldefine
