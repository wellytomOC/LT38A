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
-- Generated on "11/20/2023 11:00:36"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testregisterselector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testregisterselector_vhd_vec_tst IS
END testregisterselector_vhd_vec_tst;
ARCHITECTURE testregisterselector_arch OF testregisterselector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL DAV : STD_LOGIC;
SIGNAL enabler : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT testregisterselector
	PORT (
	DAV : IN STD_LOGIC;
	enabler : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	sel : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testregisterselector
	PORT MAP (
-- list connections between master ports and signals
	DAV => DAV,
	enabler => enabler,
	reset => reset,
	sel => sel
	);

-- DAV
t_prcs_DAV: PROCESS
BEGIN
LOOP
	DAV <= '0';
	WAIT FOR 100000 ps;
	DAV <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DAV;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 680000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
END testregisterselector_arch;
