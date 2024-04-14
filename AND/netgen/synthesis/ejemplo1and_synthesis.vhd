--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ejemplo1and_synthesis.vhd
-- /___/   /\     Timestamp: Wed Feb 28 08:13:09 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm ejemplo1and -w -dir netgen/synthesis -ofmt vhdl -sim ejemplo1and.ngc ejemplo1and_synthesis.vhd 
-- Device	: xc3s1600e-4-fg320
-- Input file	: ejemplo1and.ngc
-- Output file	: /home/ise/Tade_VB/AND/netgen/synthesis/ejemplo1and_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: ejemplo1and
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ejemplo1and is
  port (
    A : in STD_LOGIC := 'X'; 
    B : in STD_LOGIC := 'X'; 
    C : out STD_LOGIC 
  );
end ejemplo1and;

architecture Structure of ejemplo1and is
  signal A_IBUF_1 : STD_LOGIC; 
  signal B_IBUF_3 : STD_LOGIC; 
  signal C_OBUF_5 : STD_LOGIC; 
begin
  C1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A_IBUF_1,
      I1 => B_IBUF_3,
      O => C_OBUF_5
    );
  A_IBUF : IBUF
    port map (
      I => A,
      O => A_IBUF_1
    );
  B_IBUF : IBUF
    port map (
      I => B,
      O => B_IBUF_3
    );
  C_OBUF : OBUF
    port map (
      I => C_OBUF_5,
      O => C
    );

end Structure;

