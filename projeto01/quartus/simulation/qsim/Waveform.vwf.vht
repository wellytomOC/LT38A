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
-- Generated on "11/20/2023 10:44:07"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testKeypadEncoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testKeypadEncoder_vhd_vec_tst IS
END testKeypadEncoder_vhd_vec_tst;
ARCHITECTURE testKeypadEncoder_arch OF testKeypadEncoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL col : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dav : STD_LOGIC;
SIGNAL Enable : STD_LOGIC;
SIGNAL row : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT testKeypadEncoder
	PORT (
	clk : IN STD_LOGIC;
	col : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	dav : OUT STD_LOGIC;
	Enable : IN STD_LOGIC;
	row : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testKeypadEncoder
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	col => col,
	data => data,
	dav => dav,
	Enable => Enable,
	row => row
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
	WAIT FOR 50000 ps;
	col(1) <= '0';
	WAIT FOR 30000 ps;
	col(1) <= '1';
	WAIT FOR 40000 ps;
	col(1) <= '0';
	WAIT FOR 20000 ps;
	col(1) <= '1';
	WAIT FOR 30000 ps;
	col(1) <= '0';
	WAIT FOR 30000 ps;
	col(1) <= '1';
	WAIT FOR 40000 ps;
	col(1) <= '0';
	WAIT FOR 40000 ps;
	col(1) <= '1';
	WAIT FOR 40000 ps;
	col(1) <= '0';
	WAIT FOR 50000 ps;
	col(1) <= '1';
	WAIT FOR 60000 ps;
	col(1) <= '0';
	WAIT FOR 30000 ps;
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
END testKeypadEncoder_arch;
