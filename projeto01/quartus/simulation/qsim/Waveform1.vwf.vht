-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/20/2023 10:48:18"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testringcounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testringcounter_vhd_vec_tst IS
END testringcounter_vhd_vec_tst;
ARCHITECTURE testringcounter_arch OF testringcounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL Freeze : STD_LOGIC;
SIGNAL toRow : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT testringcounter
	PORT (
	clk : IN STD_LOGIC;
	Freeze : IN STD_LOGIC;
	toRow : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testringcounter
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	Freeze => Freeze,
	toRow => toRow
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2000 ps;
	clk <= '1';
	WAIT FOR 2000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- Freeze
t_prcs_Freeze: PROCESS
BEGIN
	Freeze <= '0';
	WAIT FOR 80000 ps;
	Freeze <= '1';
	WAIT FOR 110000 ps;
	Freeze <= '0';
	WAIT FOR 340000 ps;
	Freeze <= '1';
	WAIT FOR 70000 ps;
	Freeze <= '0';
WAIT;
END PROCESS t_prcs_Freeze;
END testringcounter_arch;
