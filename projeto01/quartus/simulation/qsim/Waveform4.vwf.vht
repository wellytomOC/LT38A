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
-- Generated on "11/15/2023 17:00:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          testBitConcat
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY testBitConcat_vhd_vec_tst IS
END testBitConcat_vhd_vec_tst;
ARCHITECTURE testBitConcat_arch OF testBitConcat_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL input_hundreds : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL input_tens : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL input_units : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL output_result : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT testBitConcat
	PORT (
	input_hundreds : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	input_tens : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	input_units : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	output_result : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : testBitConcat
	PORT MAP (
-- list connections between master ports and signals
	input_hundreds => input_hundreds,
	input_tens => input_tens,
	input_units => input_units,
	output_result => output_result
	);
-- input_hundreds[3]
t_prcs_input_hundreds_3: PROCESS
BEGIN
	input_hundreds(3) <= '0';
WAIT;
END PROCESS t_prcs_input_hundreds_3;
-- input_hundreds[2]
t_prcs_input_hundreds_2: PROCESS
BEGIN
	input_hundreds(2) <= '0';
WAIT;
END PROCESS t_prcs_input_hundreds_2;
-- input_hundreds[1]
t_prcs_input_hundreds_1: PROCESS
BEGIN
	input_hundreds(1) <= '0';
WAIT;
END PROCESS t_prcs_input_hundreds_1;
-- input_hundreds[0]
t_prcs_input_hundreds_0: PROCESS
BEGIN
	input_hundreds(0) <= '0';
	WAIT FOR 20000 ps;
	input_hundreds(0) <= '1';
	WAIT FOR 330000 ps;
	input_hundreds(0) <= '0';
WAIT;
END PROCESS t_prcs_input_hundreds_0;
-- input_tens[3]
t_prcs_input_tens_3: PROCESS
BEGIN
	input_tens(3) <= '0';
	WAIT FOR 800000 ps;
	input_tens(3) <= '1';
WAIT;
END PROCESS t_prcs_input_tens_3;
-- input_tens[2]
t_prcs_input_tens_2: PROCESS
BEGIN
	input_tens(2) <= '0';
	WAIT FOR 400000 ps;
	input_tens(2) <= '1';
	WAIT FOR 400000 ps;
	input_tens(2) <= '0';
WAIT;
END PROCESS t_prcs_input_tens_2;
-- input_tens[1]
t_prcs_input_tens_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		input_tens(1) <= '0';
		WAIT FOR 200000 ps;
		input_tens(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	input_tens(1) <= '0';
WAIT;
END PROCESS t_prcs_input_tens_1;
-- input_tens[0]
t_prcs_input_tens_0: PROCESS
BEGIN
LOOP
	input_tens(0) <= '0';
	WAIT FOR 100000 ps;
	input_tens(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_tens_0;
-- input_units[3]
t_prcs_input_units_3: PROCESS
BEGIN
	input_units(3) <= '0';
	WAIT FOR 800000 ps;
	input_units(3) <= '1';
WAIT;
END PROCESS t_prcs_input_units_3;
-- input_units[2]
t_prcs_input_units_2: PROCESS
BEGIN
	input_units(2) <= '0';
	WAIT FOR 400000 ps;
	input_units(2) <= '1';
	WAIT FOR 400000 ps;
	input_units(2) <= '0';
WAIT;
END PROCESS t_prcs_input_units_2;
-- input_units[1]
t_prcs_input_units_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		input_units(1) <= '0';
		WAIT FOR 200000 ps;
		input_units(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	input_units(1) <= '0';
WAIT;
END PROCESS t_prcs_input_units_1;
-- input_units[0]
t_prcs_input_units_0: PROCESS
BEGIN
LOOP
	input_units(0) <= '0';
	WAIT FOR 100000 ps;
	input_units(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_units_0;
END testBitConcat_arch;
