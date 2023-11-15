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
-- Generated on "11/15/2023 17:52:47"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testememoria
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testememoria_vhd_vec_tst IS
END testememoria_vhd_vec_tst;
ARCHITECTURE testememoria_arch OF testememoria_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dav : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seeSel : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT testememoria
	PORT (
	data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dav : IN STD_LOGIC;
	Q1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q3 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q4 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q5 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q6 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	seeSel : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testememoria
	PORT MAP (
-- list connections between master ports and signals
	data => data,
	dav => dav,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Q4 => Q4,
	Q5 => Q5,
	Q6 => Q6,
	seeSel => seeSel
	);
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 400000 ps;
	data(3) <= '1';
	WAIT FOR 400000 ps;
	data(3) <= '0';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data(2) <= '0';
		WAIT FOR 200000 ps;
		data(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
LOOP
	data(1) <= '0';
	WAIT FOR 100000 ps;
	data(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
LOOP
	data(0) <= '0';
	WAIT FOR 50000 ps;
	data(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_0;

-- dav
t_prcs_dav: PROCESS
BEGIN
LOOP
	dav <= '0';
	WAIT FOR 25000 ps;
	dav <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_dav;
END testememoria_arch;
