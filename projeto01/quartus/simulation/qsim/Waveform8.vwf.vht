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
-- Generated on "11/20/2023 11:56:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testArquitetura
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testArquitetura_vhd_vec_tst IS
END testArquitetura_vhd_vec_tst;
ARCHITECTURE testArquitetura_arch OF testArquitetura_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL col : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Enable : STD_LOGIC;
SIGNAL EnLed : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL row : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL ss0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ss1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL ss2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL strobe : STD_LOGIC;
SIGNAL StrobeLed : STD_LOGIC;
COMPONENT testArquitetura
	PORT (
	clk : IN STD_LOGIC;
	col : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Enable : IN STD_LOGIC;
	EnLed : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	row : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	ss0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ss1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	ss2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	strobe : IN STD_LOGIC;
	StrobeLed : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : testArquitetura
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	col => col,
	Enable => Enable,
	EnLed => EnLed,
	reset => reset,
	row => row,
	sel => sel,
	ss0 => ss0,
	ss1 => ss1,
	ss2 => ss2,
	strobe => strobe,
	StrobeLed => StrobeLed
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- col[2]
t_prcs_col_2: PROCESS
BEGIN
	col(2) <= '1';
WAIT;
END PROCESS t_prcs_col_2;
-- col[1]
t_prcs_col_1: PROCESS
BEGIN
	col(1) <= '1';
	WAIT FOR 100000 ps;
	col(1) <= '0';
	WAIT FOR 100000 ps;
	col(1) <= '1';
	WAIT FOR 100000 ps;
	col(1) <= '0';
	WAIT FOR 100000 ps;
	col(1) <= '1';
WAIT;
END PROCESS t_prcs_col_1;
-- col[0]
t_prcs_col_0: PROCESS
BEGIN
	col(0) <= '1';
WAIT;
END PROCESS t_prcs_col_0;

-- Enable
t_prcs_Enable: PROCESS
BEGIN
	Enable <= '0';
	WAIT FOR 20000 ps;
	Enable <= '1';
WAIT;
END PROCESS t_prcs_Enable;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
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

-- strobe
t_prcs_strobe: PROCESS
BEGIN
	strobe <= '0';
WAIT;
END PROCESS t_prcs_strobe;
END testArquitetura_arch;
