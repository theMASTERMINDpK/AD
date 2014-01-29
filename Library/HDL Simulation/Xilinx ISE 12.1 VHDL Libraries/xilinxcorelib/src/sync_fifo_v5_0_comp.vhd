-------------------------------------------------------------------------------
-- $RCSfile: sync_fifo_v5_0_comp.vhd,v $ $Revision: 1.12 $ $Date: 2008/09/08 20:09:59 $
-------------------------------------------------------------------------------
--
-- SYNC_FIFO_V5_0 - VHDL Behavioral Model
--
-------------------------------------------------------------------------------
--

--  Copyright(C) 2004 by Xilinx, Inc. All rights reserved.
--  This text/file contains proprietary, confidential
--  information of Xilinx, Inc., is distributed under license
--  from Xilinx, Inc., and may be used, copied and/or
--  disclosed only pursuant to the terms of a valid license
--  agreement with Xilinx, Inc.  Xilinx hereby grants you
--  a license to use this text/file solely for design, simulation,
--  implementation and creation of design files limited
--  to Xilinx devices or technologies. Use with non-Xilinx
--  devices or technologies is expressly prohibited and
--  immediately terminates your license unless covered by
--  a separate agreement.
--
--  Xilinx is providing this design, code, or information
--  "as is" solely for use in developing programs and
--  solutions for Xilinx devices.  By providing this design,
--  code, or information as one possible implementation of
--  this feature, application or standard, Xilinx is making no
--  representation that this implementation is free from any
--  claims of infringement.  You are responsible for
--  obtaining any rights you may require for your implementation.
--  Xilinx expressly disclaims any warranty whatsoever with
--  respect to the adequacy of the implementation, including
--  but not limited to any warranties or representations that this
--  implementation is free from claims of infringement, implied
--  warranties of merchantability or fitness for a particular
--  purpose.
--
--  Xilinx products are not intended for use in life support
--  appliances, devices, or systems. Use in such applications are
--  expressly prohibited.
--
--  This copyright and support notice must be retained as part
--  of this text at all times. (c) Copyright 1995-2004 Xilinx, Inc.
--  All rights reserved.

-------------------------------------------------------------------------------
--
--  Filename: sync_fifo_v5_0_comp.vhd
--
--  Description:
--   Component declaration
--   Synchronous FIFO Simulation Model
--
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE sync_fifo_v5_0_comp IS


COMPONENT sync_fifo_v5_0 
    GENERIC (
              c_dcount_width       :    integer := 1;
              c_enable_rlocs       :    integer := 0;
              c_has_dcount         :    integer := 0 ;
              c_has_rd_ack         :    integer := 0 ;
              c_has_rd_err         :    integer := 0 ;
              c_has_wr_ack         :    integer := 0 ;
              c_has_wr_err         :    integer := 0 ;
              c_memory_type        :    integer := 0 ;
              c_ports_differ       :    integer := 0 ;
              c_rd_ack_low         :    integer := 0 ;
              c_read_data_width    :    integer := 0 ;
              c_read_depth         :    integer := 16 ;
              c_rd_err_low         :    integer := 0 ;
              c_wr_ack_low         :    integer := 0 ;
              c_wr_err_low         :    integer := 0 ;
              c_write_data_width   :    integer := 0 ;
              c_write_depth        :    integer := 16
              );
    port (  CLK          : in std_logic;
            SINIT        : in std_logic;
            DIN          : in  std_logic_vector(c_write_data_width-1 downto 0);
            WR_EN        : in std_logic;
            RD_EN        : in  std_logic;
            DOUT         : out std_logic_vector(c_read_data_width-1 downto 0);
            FULL         : out std_logic;
            EMPTY        : out std_logic;
            RD_ACK       : out std_logic;
            WR_ACK       : out std_logic;
            RD_ERR       : out std_logic;
            WR_ERR       : out std_logic;
            DATA_COUNT   : out std_logic_vector(c_dcount_width-1 downto 0)
           );
end COMPONENT;


END sync_fifo_v5_0_comp;
