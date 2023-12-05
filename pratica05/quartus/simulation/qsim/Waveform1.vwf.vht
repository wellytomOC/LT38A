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
-- Generated on "12/04/2023 22:44:04"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          atv05
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY atv05_vhd_vec_tst IS
END atv05_vhd_vec_tst;
ARCHITECTURE atv05_arch OF atv05_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL en : STD_LOGIC;
SIGNAL inibicao : STD_LOGIC;
SIGNAL outssState : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL outssTemp0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL outssTemp1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL outssTemp2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL outssTransition : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL temp : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT atv05
	PORT (
	en : IN STD_LOGIC;
	inibicao : IN STD_LOGIC;
	outssState : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	outssTemp0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	outssTemp1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	outssTemp2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	outssTransition : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	temp : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : atv05
	PORT MAP (
-- list connections between master ports and signals
	en => en,
	inibicao => inibicao,
	outssState => outssState,
	outssTemp0 => outssTemp0,
	outssTemp1 => outssTemp1,
	outssTemp2 => outssTemp2,
	outssTransition => outssTransition,
	temp => temp
	);

-- en
t_prcs_en: PROCESS
BEGIN
	en <= '1';
WAIT;
END PROCESS t_prcs_en;

-- inibicao
t_prcs_inibicao: PROCESS
BEGIN
	inibicao <= '0';
WAIT;
END PROCESS t_prcs_inibicao;
-- temp[7]
t_prcs_temp_7: PROCESS
BEGIN
	temp(7) <= '0';
WAIT;
END PROCESS t_prcs_temp_7;
-- temp[6]
t_prcs_temp_6: PROCESS
BEGIN
	temp(6) <= '0';
WAIT;
END PROCESS t_prcs_temp_6;
-- temp[5]
t_prcs_temp_5: PROCESS
BEGIN
	temp(5) <= '0';
WAIT;
END PROCESS t_prcs_temp_5;
-- temp[4]
t_prcs_temp_4: PROCESS
BEGIN
	temp(4) <= '0';
WAIT;
END PROCESS t_prcs_temp_4;
-- temp[3]
t_prcs_temp_3: PROCESS
BEGIN
	temp(3) <= '0';
	WAIT FOR 800000 ps;
	temp(3) <= '1';
WAIT;
END PROCESS t_prcs_temp_3;
-- temp[2]
t_prcs_temp_2: PROCESS
BEGIN
	temp(2) <= '0';
	WAIT FOR 400000 ps;
	temp(2) <= '1';
	WAIT FOR 400000 ps;
	temp(2) <= '0';
WAIT;
END PROCESS t_prcs_temp_2;
-- temp[1]
t_prcs_temp_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		temp(1) <= '0';
		WAIT FOR 200000 ps;
		temp(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	temp(1) <= '0';
WAIT;
END PROCESS t_prcs_temp_1;
-- temp[0]
t_prcs_temp_0: PROCESS
BEGIN
LOOP
	temp(0) <= '0';
	WAIT FOR 100000 ps;
	temp(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_temp_0;
END atv05_arch;
