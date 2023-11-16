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
-- Generated on "11/15/2023 22:33:01"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testEntrada
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testEntrada_vhd_vec_tst IS
END testEntrada_vhd_vec_tst;
ARCHITECTURE testEntrada_arch OF testEntrada_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL col : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
SIGNAL row : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeData : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeDAV : STD_LOGIC;
SIGNAL seeQ1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeQ2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeQ3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeQ4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeQ5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeQ6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL strobe : STD_LOGIC;
COMPONENT testEntrada
	PORT (
	A : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	col : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Enable : IN STD_LOGIC;
	row : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeData : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeDAV : OUT STD_LOGIC;
	seeQ1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeQ2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeQ3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeQ4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeQ5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeQ6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	strobe : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testEntrada
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	clk => clk,
	col => col,
	Enable => Enable,
	row => row,
	seeData => seeData,
	seeDAV => seeDAV,
	seeQ1 => seeQ1,
	seeQ2 => seeQ2,
	seeQ3 => seeQ3,
	seeQ4 => seeQ4,
	seeQ5 => seeQ5,
	seeQ6 => seeQ6,
	strobe => strobe
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- row[3]
t_prcs_row_3: PROCESS
BEGIN
	row(3) <= '1';
	WAIT FOR 580000 ps;
	row(3) <= '0';
	WAIT FOR 40000 ps;
	row(3) <= '1';
WAIT;
END PROCESS t_prcs_row_3;
-- row[2]
t_prcs_row_2: PROCESS
BEGIN
	row(2) <= '1';
WAIT;
END PROCESS t_prcs_row_2;
-- row[1]
t_prcs_row_1: PROCESS
BEGIN
	row(1) <= '1';
WAIT;
END PROCESS t_prcs_row_1;
-- row[0]
t_prcs_row_0: PROCESS
BEGIN
	row(0) <= '1';
	WAIT FOR 30000 ps;
	row(0) <= '0';
	WAIT FOR 30000 ps;
	row(0) <= '1';
	WAIT FOR 40000 ps;
	row(0) <= '0';
	WAIT FOR 30000 ps;
	row(0) <= '1';
	WAIT FOR 40000 ps;
	row(0) <= '0';
	WAIT FOR 30000 ps;
	row(0) <= '1';
	WAIT FOR 60000 ps;
	row(0) <= '0';
	WAIT FOR 30000 ps;
	row(0) <= '1';
	WAIT FOR 40000 ps;
	row(0) <= '0';
	WAIT FOR 30000 ps;
	row(0) <= '1';
	WAIT FOR 40000 ps;
	row(0) <= '0';
	WAIT FOR 30000 ps;
	row(0) <= '1';
	WAIT FOR 40000 ps;
	row(0) <= '0';
	WAIT FOR 40000 ps;
	row(0) <= '1';
WAIT;
END PROCESS t_prcs_row_0;
-- col[2]
t_prcs_col_2: PROCESS
BEGIN
	col(2) <= '1';
	WAIT FOR 170000 ps;
	col(2) <= '0';
	WAIT FOR 30000 ps;
	col(2) <= '1';
	WAIT FOR 200000 ps;
	col(2) <= '0';
	WAIT FOR 30000 ps;
	col(2) <= '1';
WAIT;
END PROCESS t_prcs_col_2;
-- col[1]
t_prcs_col_1: PROCESS
BEGIN
	col(1) <= '1';
	WAIT FOR 100000 ps;
	col(1) <= '0';
	WAIT FOR 30000 ps;
	col(1) <= '1';
	WAIT FOR 200000 ps;
	col(1) <= '0';
	WAIT FOR 30000 ps;
	col(1) <= '1';
	WAIT FOR 220000 ps;
	col(1) <= '0';
	WAIT FOR 40000 ps;
	col(1) <= '1';
WAIT;
END PROCESS t_prcs_col_1;
-- col[0]
t_prcs_col_0: PROCESS
BEGIN
	col(0) <= '1';
	WAIT FOR 30000 ps;
	col(0) <= '0';
	WAIT FOR 30000 ps;
	col(0) <= '1';
	WAIT FOR 200000 ps;
	col(0) <= '0';
	WAIT FOR 30000 ps;
	col(0) <= '1';
	WAIT FOR 180000 ps;
	col(0) <= '0';
	WAIT FOR 40000 ps;
	col(0) <= '1';
WAIT;
END PROCESS t_prcs_col_0;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;

-- strobe
t_prcs_strobe: PROCESS
BEGIN
	strobe <= '0';
WAIT;
END PROCESS t_prcs_strobe;
END testEntrada_arch;
