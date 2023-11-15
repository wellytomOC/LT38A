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
-- Generated on "11/15/2023 18:12:13"
                                                             
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
SIGNAL Q1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL row : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL strobe : STD_LOGIC;
COMPONENT testEntrada
	PORT (
	A : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	clk : IN STD_LOGIC;
	col : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Enable : IN STD_LOGIC;
	Q1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	row : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
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
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4,
	Q5 => Q5,
	Q6 => Q6,
	row => row,
	strobe => strobe
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	FOR i IN 1 TO 166
	LOOP
		clk <= '0';
		WAIT FOR 3000 ps;
		clk <= '1';
		WAIT FOR 3000 ps;
	END LOOP;
	clk <= '0';
	WAIT FOR 3000 ps;
	clk <= '1';
WAIT;
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
	WAIT FOR 10000 ps;
	col(1) <= '0';
	WAIT FOR 60000 ps;
	col(1) <= '1';
	WAIT FOR 80000 ps;
	col(1) <= '0';
	WAIT FOR 80000 ps;
	col(1) <= '1';
	WAIT FOR 80000 ps;
	col(1) <= '0';
	WAIT FOR 70000 ps;
	col(1) <= '1';
	WAIT FOR 80000 ps;
	col(1) <= '0';
	WAIT FOR 80000 ps;
	col(1) <= '1';
	WAIT FOR 110000 ps;
	col(1) <= '0';
	WAIT FOR 60000 ps;
	col(1) <= '1';
	WAIT FOR 70000 ps;
	col(1) <= '0';
	WAIT FOR 60000 ps;
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
