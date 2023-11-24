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
-- Generated on "11/20/2023 10:53:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testrowencoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testrowencoder_vhd_vec_tst IS
END testrowencoder_vhd_vec_tst;
ARCHITECTURE testrowencoder_arch OF testrowencoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL rows : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT testrowencoder
	PORT (
	data : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rows : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testrowencoder
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	rows => rows
	);
-- rows[3]
t_prcs_rows_3: PROCESS
BEGIN
	rows(3) <= '1';
	WAIT FOR 690000 ps;
	rows(3) <= '0';
	WAIT FOR 70000 ps;
	rows(3) <= '1';
WAIT;
END PROCESS t_prcs_rows_3;
-- rows[2]
t_prcs_rows_2: PROCESS
BEGIN
	rows(2) <= '1';
	WAIT FOR 480000 ps;
	rows(2) <= '0';
	WAIT FOR 60000 ps;
	rows(2) <= '1';
WAIT;
END PROCESS t_prcs_rows_2;
-- rows[1]
t_prcs_rows_1: PROCESS
BEGIN
	rows(1) <= '1';
	WAIT FOR 270000 ps;
	rows(1) <= '0';
	WAIT FOR 60000 ps;
	rows(1) <= '1';
WAIT;
END PROCESS t_prcs_rows_1;
-- rows[0]
t_prcs_rows_0: PROCESS
BEGIN
	rows(0) <= '1';
	WAIT FOR 120000 ps;
	rows(0) <= '0';
	WAIT FOR 50000 ps;
	rows(0) <= '1';
WAIT;
END PROCESS t_prcs_rows_0;
END testrowencoder_arch;
