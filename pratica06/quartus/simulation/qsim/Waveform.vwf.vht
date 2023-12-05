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
-- Generated on "12/04/2023 23:03:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          atv06
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY atv06_vhd_vec_tst IS
END atv06_vhd_vec_tst;
ARCHITECTURE atv06_arch OF atv06_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL En : STD_LOGIC;
SIGNAL inibedsevenSeg0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL inibedsevenSeg1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL inibedsevenSeg2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL inibi : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT atv06
	PORT (
	A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	En : IN STD_LOGIC;
	inibedsevenSeg0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	inibedsevenSeg1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	inibedsevenSeg2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	inibi : IN STD_LOGIC;
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : atv06
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	En => En,
	inibedsevenSeg0 => inibedsevenSeg0,
	inibedsevenSeg1 => inibedsevenSeg1,
	inibedsevenSeg2 => inibedsevenSeg2,
	inibi => inibi,
	sel => sel
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
WAIT;
END PROCESS t_prcs_A_6;
-- A[5]
t_prcs_A_5: PROCESS
BEGIN
	A(5) <= '0';
WAIT;
END PROCESS t_prcs_A_5;
-- A[4]
t_prcs_A_4: PROCESS
BEGIN
	A(4) <= '0';
WAIT;
END PROCESS t_prcs_A_4;
-- A[3]
t_prcs_A_3: PROCESS
BEGIN
	A(3) <= '0';
	WAIT FOR 800000 ps;
	A(3) <= '1';
WAIT;
END PROCESS t_prcs_A_3;
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	A(2) <= '0';
	WAIT FOR 400000 ps;
	A(2) <= '1';
	WAIT FOR 400000 ps;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		A(1) <= '0';
		WAIT FOR 200000 ps;
		A(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
LOOP
	A(0) <= '0';
	WAIT FOR 100000 ps;
	A(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_A_0;
-- B[7]
t_prcs_B_7: PROCESS
BEGIN
	B(7) <= '0';
WAIT;
END PROCESS t_prcs_B_7;
-- B[6]
t_prcs_B_6: PROCESS
BEGIN
	B(6) <= '0';
WAIT;
END PROCESS t_prcs_B_6;
-- B[5]
t_prcs_B_5: PROCESS
BEGIN
	B(5) <= '0';
WAIT;
END PROCESS t_prcs_B_5;
-- B[4]
t_prcs_B_4: PROCESS
BEGIN
	B(4) <= '0';
WAIT;
END PROCESS t_prcs_B_4;
-- B[3]
t_prcs_B_3: PROCESS
BEGIN
	B(3) <= '0';
	WAIT FOR 600000 ps;
	B(3) <= '1';
WAIT;
END PROCESS t_prcs_B_3;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
	WAIT FOR 300000 ps;
	B(2) <= '1';
	WAIT FOR 300000 ps;
	B(2) <= '0';
	WAIT FOR 300000 ps;
	B(2) <= '1';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		B(1) <= '0';
		WAIT FOR 150000 ps;
		B(1) <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	B(1) <= '0';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		B(0) <= '0';
		WAIT FOR 75000 ps;
		B(0) <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	B(0) <= '0';
	WAIT FOR 75000 ps;
	B(0) <= '1';
WAIT;
END PROCESS t_prcs_B_0;

-- En
t_prcs_En: PROCESS
BEGIN
	En <= '1';
WAIT;
END PROCESS t_prcs_En;

-- inibi
t_prcs_inibi: PROCESS
BEGIN
	inibi <= '0';
WAIT;
END PROCESS t_prcs_inibi;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
LOOP
	sel(1) <= '0';
	WAIT FOR 500000 ps;
	sel(1) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
LOOP
	sel(0) <= '0';
	WAIT FOR 250000 ps;
	sel(0) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_0;
END atv06_arch;
