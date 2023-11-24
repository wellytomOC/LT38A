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
-- Generated on "11/20/2023 10:13:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testSevenSeg8BitDec
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testSevenSeg8BitDec_vhd_vec_tst IS
END testSevenSeg8BitDec_vhd_vec_tst;
ARCHITECTURE testSevenSeg8BitDec_arch OF testSevenSeg8BitDec_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ssA0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssA1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ssA2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT testSevenSeg8BitDec
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	ssA0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssA1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ssA2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testSevenSeg8BitDec
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	ssA0 => ssA0,
	ssA1 => ssA1,
	ssA2 => ssA2
	);
-- A[7]
t_prcs_A_7: PROCESS
BEGIN
	A(7) <= '0';
WAIT;
END PROCESS t_prcs_A_7;
-- A[6]
t_prcs_A_6: PROCESS
BEGIN
	A(6) <= '0';
	WAIT FOR 600000 ps;
	A(6) <= '1';
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
	WAIT FOR 300000 ps;
	A(5) <= '1';
	WAIT FOR 300000 ps;
	A(5) <= '0';
	WAIT FOR 200000 ps;
	A(5) <= '1';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
	WAIT FOR 200000 ps;
	A(4) <= '1';
	WAIT FOR 100000 ps;
	A(4) <= '0';
	WAIT FOR 100000 ps;
	A(4) <= '1';
	WAIT FOR 200000 ps;
	A(4) <= '0';
	WAIT FOR 100000 ps;
	A(4) <= '1';
	WAIT FOR 100000 ps;
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		A(3) <= '1';
		WAIT FOR 200000 ps;
		A(3) <= '0';
		WAIT FOR 200000 ps;
	END LOOP;
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
LOOP
	A(2) <= '0';
	WAIT FOR 100000 ps;
	A(2) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	A(0) <= '1';
WAIT;
END PROCESS t_prcs_A_0;
END testSevenSeg8BitDec_arch;
