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
-- Generated on "11/16/2023 00:12:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testSaida
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testSaida_vhd_vec_tst IS
END testSaida_vhd_vec_tst;
ARCHITECTURE testSaida_arch OF testSaida_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AQ1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL AQ2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL AQ3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BQ1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BQ2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BQ3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL EnLed : STD_LOGIC;
SIGNAL R : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ss0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ss1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ss2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL strobe : STD_LOGIC;
SIGNAL StrobeLed : STD_LOGIC;
COMPONENT testSaida
	PORT (
	AQ1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	AQ2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	AQ3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BQ1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BQ2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BQ3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	enable : IN STD_LOGIC;
	EnLed : OUT STD_LOGIC;
	R : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ss0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ss1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ss2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	strobe : IN STD_LOGIC;
	StrobeLed : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testSaida
	PORT MAP (
-- list connections between master ports and signals
	AQ1 => AQ1,
	AQ2 => AQ2,
	AQ3 => AQ3,
	BQ1 => BQ1,
	BQ2 => BQ2,
	BQ3 => BQ3,
	enable => enable,
	EnLed => EnLed,
	R => R,
	S => S,
	sel => sel,
	ss0 => ss0,
	ss1 => ss1,
	ss2 => ss2,
	strobe => strobe,
	StrobeLed => StrobeLed
	);
-- AQ1[3]
t_prcs_AQ1_3: PROCESS
BEGIN
	AQ1(3) <= '0';
WAIT;
END PROCESS t_prcs_AQ1_3;
-- AQ1[2]
t_prcs_AQ1_2: PROCESS
BEGIN
	AQ1(2) <= '0';
WAIT;
END PROCESS t_prcs_AQ1_2;
-- AQ1[1]
t_prcs_AQ1_1: PROCESS
BEGIN
	AQ1(1) <= '0';
WAIT;
END PROCESS t_prcs_AQ1_1;
-- AQ1[0]
t_prcs_AQ1_0: PROCESS
BEGIN
	AQ1(0) <= '1';
WAIT;
END PROCESS t_prcs_AQ1_0;
-- AQ2[3]
t_prcs_AQ2_3: PROCESS
BEGIN
	AQ2(3) <= '0';
WAIT;
END PROCESS t_prcs_AQ2_3;
-- AQ2[2]
t_prcs_AQ2_2: PROCESS
BEGIN
	AQ2(2) <= '0';
WAIT;
END PROCESS t_prcs_AQ2_2;
-- AQ2[1]
t_prcs_AQ2_1: PROCESS
BEGIN
	AQ2(1) <= '1';
WAIT;
END PROCESS t_prcs_AQ2_1;
-- AQ2[0]
t_prcs_AQ2_0: PROCESS
BEGIN
	AQ2(0) <= '0';
WAIT;
END PROCESS t_prcs_AQ2_0;
-- AQ3[3]
t_prcs_AQ3_3: PROCESS
BEGIN
	AQ3(3) <= '0';
WAIT;
END PROCESS t_prcs_AQ3_3;
-- AQ3[2]
t_prcs_AQ3_2: PROCESS
BEGIN
	AQ3(2) <= '0';
WAIT;
END PROCESS t_prcs_AQ3_2;
-- AQ3[1]
t_prcs_AQ3_1: PROCESS
BEGIN
	AQ3(1) <= '1';
WAIT;
END PROCESS t_prcs_AQ3_1;
-- AQ3[0]
t_prcs_AQ3_0: PROCESS
BEGIN
	AQ3(0) <= '1';
WAIT;
END PROCESS t_prcs_AQ3_0;
-- BQ1[3]
t_prcs_BQ1_3: PROCESS
BEGIN
	BQ1(3) <= '0';
WAIT;
END PROCESS t_prcs_BQ1_3;
-- BQ1[2]
t_prcs_BQ1_2: PROCESS
BEGIN
	BQ1(2) <= '0';
WAIT;
END PROCESS t_prcs_BQ1_2;
-- BQ1[1]
t_prcs_BQ1_1: PROCESS
BEGIN
	BQ1(1) <= '0';
WAIT;
END PROCESS t_prcs_BQ1_1;
-- BQ1[0]
t_prcs_BQ1_0: PROCESS
BEGIN
	BQ1(0) <= '0';
WAIT;
END PROCESS t_prcs_BQ1_0;
-- BQ2[3]
t_prcs_BQ2_3: PROCESS
BEGIN
	BQ2(3) <= '0';
WAIT;
END PROCESS t_prcs_BQ2_3;
-- BQ2[2]
t_prcs_BQ2_2: PROCESS
BEGIN
	BQ2(2) <= '1';
WAIT;
END PROCESS t_prcs_BQ2_2;
-- BQ2[1]
t_prcs_BQ2_1: PROCESS
BEGIN
	BQ2(1) <= '0';
WAIT;
END PROCESS t_prcs_BQ2_1;
-- BQ2[0]
t_prcs_BQ2_0: PROCESS
BEGIN
	BQ2(0) <= '0';
WAIT;
END PROCESS t_prcs_BQ2_0;
-- BQ3[3]
t_prcs_BQ3_3: PROCESS
BEGIN
	BQ3(3) <= '0';
WAIT;
END PROCESS t_prcs_BQ3_3;
-- BQ3[2]
t_prcs_BQ3_2: PROCESS
BEGIN
	BQ3(2) <= '1';
WAIT;
END PROCESS t_prcs_BQ3_2;
-- BQ3[1]
t_prcs_BQ3_1: PROCESS
BEGIN
	BQ3(1) <= '0';
WAIT;
END PROCESS t_prcs_BQ3_1;
-- BQ3[0]
t_prcs_BQ3_0: PROCESS
BEGIN
	BQ3(0) <= '1';
WAIT;
END PROCESS t_prcs_BQ3_0;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
	WAIT FOR 500000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
-- R[6]
t_prcs_R_6: PROCESS
BEGIN
	R(6) <= '0';
WAIT;
END PROCESS t_prcs_R_6;
-- R[5]
t_prcs_R_5: PROCESS
BEGIN
	R(5) <= '0';
WAIT;
END PROCESS t_prcs_R_5;
-- R[4]
t_prcs_R_4: PROCESS
BEGIN
	R(4) <= '0';
WAIT;
END PROCESS t_prcs_R_4;
-- R[3]
t_prcs_R_3: PROCESS
BEGIN
	R(3) <= '1';
WAIT;
END PROCESS t_prcs_R_3;
-- R[2]
t_prcs_R_2: PROCESS
BEGIN
	R(2) <= '1';
WAIT;
END PROCESS t_prcs_R_2;
-- R[1]
t_prcs_R_1: PROCESS
BEGIN
	R(1) <= '1';
WAIT;
END PROCESS t_prcs_R_1;
-- R[0]
t_prcs_R_0: PROCESS
BEGIN
	R(0) <= '1';
WAIT;
END PROCESS t_prcs_R_0;
-- S[6]
t_prcs_S_6: PROCESS
BEGIN
	S(6) <= '0';
WAIT;
END PROCESS t_prcs_S_6;
-- S[5]
t_prcs_S_5: PROCESS
BEGIN
	S(5) <= '0';
WAIT;
END PROCESS t_prcs_S_5;
-- S[4]
t_prcs_S_4: PROCESS
BEGIN
	S(4) <= '0';
WAIT;
END PROCESS t_prcs_S_4;
-- S[3]
t_prcs_S_3: PROCESS
BEGIN
	S(3) <= '1';
WAIT;
END PROCESS t_prcs_S_3;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	S(1) <= '1';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
	S(0) <= '0';
WAIT;
END PROCESS t_prcs_S_0;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
LOOP
	sel(1) <= '0';
	WAIT FOR 100000 ps;
	sel(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
LOOP
	sel(0) <= '0';
	WAIT FOR 50000 ps;
	sel(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_sel_0;

-- strobe
t_prcs_strobe: PROCESS
BEGIN
LOOP
	strobe <= '0';
	WAIT FOR 500000 ps;
	strobe <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_strobe;
END testSaida_arch;
