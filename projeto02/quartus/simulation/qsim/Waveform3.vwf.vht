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
-- Generated on "12/03/2023 22:17:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testRegisterSelector
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testRegisterSelector_vhd_vec_tst IS
END testRegisterSelector_vhd_vec_tst;
ARCHITECTURE testRegisterSelector_arch OF testRegisterSelector_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clear : STD_LOGIC;
SIGNAL data : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DAV : STD_LOGIC;
SIGNAL enabler : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT testRegisterSelector
	PORT (
	clear : OUT STD_LOGIC;
	data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	DAV : IN STD_LOGIC;
	enabler : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	sel : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testRegisterSelector
	PORT MAP (
-- list connections between master ports and signals
	clear => clear,
	data => data,
	DAV => DAV,
	enabler => enabler,
	reset => reset,
	sel => sel
	);
-- data[3]
t_prcs_data_3: PROCESS
BEGIN
	data(3) <= '0';
	WAIT FOR 800000 ps;
	data(3) <= '1';
WAIT;
END PROCESS t_prcs_data_3;
-- data[2]
t_prcs_data_2: PROCESS
BEGIN
	data(2) <= '0';
	WAIT FOR 400000 ps;
	data(2) <= '1';
	WAIT FOR 400000 ps;
	data(2) <= '0';
WAIT;
END PROCESS t_prcs_data_2;
-- data[1]
t_prcs_data_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		data(1) <= '0';
		WAIT FOR 200000 ps;
		data(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	data(1) <= '0';
WAIT;
END PROCESS t_prcs_data_1;
-- data[0]
t_prcs_data_0: PROCESS
BEGIN
LOOP
	data(0) <= '0';
	WAIT FOR 100000 ps;
	data(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_data_0;

-- DAV
t_prcs_DAV: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		DAV <= '0';
		WAIT FOR 200000 ps;
		DAV <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	DAV <= '0';
WAIT;
END PROCESS t_prcs_DAV;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END testRegisterSelector_arch;
