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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "10/20/2023 00:56:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	atv05 IS
    PORT (
	outssState : OUT std_logic_vector(6 DOWNTO 0);
	en : IN std_logic;
	inibicao : IN std_logic;
	temp : IN std_logic_vector(7 DOWNTO 0);
	outssTemp0 : OUT std_logic_vector(6 DOWNTO 0);
	outssTemp1 : OUT std_logic_vector(6 DOWNTO 0);
	outssTemp2 : OUT std_logic_vector(6 DOWNTO 0);
	outssTransition : OUT std_logic_vector(6 DOWNTO 0)
	);
END atv05;

-- Design Ports Information
-- outssState[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssState[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssState[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssState[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssState[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssState[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssState[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[5]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp0[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[6]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[4]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp1[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[6]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[2]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTemp2[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[6]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[4]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[3]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outssTransition[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inibicao	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[4]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- temp[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF atv05 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_outssState : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_en : std_logic;
SIGNAL ww_inibicao : std_logic;
SIGNAL ww_temp : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_outssTemp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outssTemp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outssTemp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_outssTransition : std_logic_vector(6 DOWNTO 0);
SIGNAL \outssState[6]~output_o\ : std_logic;
SIGNAL \outssState[5]~output_o\ : std_logic;
SIGNAL \outssState[4]~output_o\ : std_logic;
SIGNAL \outssState[3]~output_o\ : std_logic;
SIGNAL \outssState[2]~output_o\ : std_logic;
SIGNAL \outssState[1]~output_o\ : std_logic;
SIGNAL \outssState[0]~output_o\ : std_logic;
SIGNAL \outssTemp0[6]~output_o\ : std_logic;
SIGNAL \outssTemp0[5]~output_o\ : std_logic;
SIGNAL \outssTemp0[4]~output_o\ : std_logic;
SIGNAL \outssTemp0[3]~output_o\ : std_logic;
SIGNAL \outssTemp0[2]~output_o\ : std_logic;
SIGNAL \outssTemp0[1]~output_o\ : std_logic;
SIGNAL \outssTemp0[0]~output_o\ : std_logic;
SIGNAL \outssTemp1[6]~output_o\ : std_logic;
SIGNAL \outssTemp1[5]~output_o\ : std_logic;
SIGNAL \outssTemp1[4]~output_o\ : std_logic;
SIGNAL \outssTemp1[3]~output_o\ : std_logic;
SIGNAL \outssTemp1[2]~output_o\ : std_logic;
SIGNAL \outssTemp1[1]~output_o\ : std_logic;
SIGNAL \outssTemp1[0]~output_o\ : std_logic;
SIGNAL \outssTemp2[6]~output_o\ : std_logic;
SIGNAL \outssTemp2[5]~output_o\ : std_logic;
SIGNAL \outssTemp2[4]~output_o\ : std_logic;
SIGNAL \outssTemp2[3]~output_o\ : std_logic;
SIGNAL \outssTemp2[2]~output_o\ : std_logic;
SIGNAL \outssTemp2[1]~output_o\ : std_logic;
SIGNAL \outssTemp2[0]~output_o\ : std_logic;
SIGNAL \outssTransition[6]~output_o\ : std_logic;
SIGNAL \outssTransition[5]~output_o\ : std_logic;
SIGNAL \outssTransition[4]~output_o\ : std_logic;
SIGNAL \outssTransition[3]~output_o\ : std_logic;
SIGNAL \outssTransition[2]~output_o\ : std_logic;
SIGNAL \outssTransition[1]~output_o\ : std_logic;
SIGNAL \outssTransition[0]~output_o\ : std_logic;
SIGNAL \inibicao~input_o\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \temp[4]~input_o\ : std_logic;
SIGNAL \temp[2]~input_o\ : std_logic;
SIGNAL \temp[3]~input_o\ : std_logic;
SIGNAL \temp[1]~input_o\ : std_logic;
SIGNAL \inst|stateConverter0|LessThan8~0_combout\ : std_logic;
SIGNAL \temp[7]~input_o\ : std_logic;
SIGNAL \temp[6]~input_o\ : std_logic;
SIGNAL \inst|stateConverter0|state[2]~1_combout\ : std_logic;
SIGNAL \temp[5]~input_o\ : std_logic;
SIGNAL \inst|stateConverter0|LessThan8~1_combout\ : std_logic;
SIGNAL \temp[0]~input_o\ : std_logic;
SIGNAL \inst|stateConverter0|state~2_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~3_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~4_combout\ : std_logic;
SIGNAL \inst|enable0|S[4]~2_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~6_combout\ : std_logic;
SIGNAL \inst|enable0|S[3]~1_combout\ : std_logic;
SIGNAL \inst|enable0|S[2]~3_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~5_combout\ : std_logic;
SIGNAL \inst|stateConverter0|Equal3~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~7_combout\ : std_logic;
SIGNAL \inst|enable0|S[5]~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state[0]~8_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~9_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~10_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state~11_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state[0]~14_combout\ : std_logic;
SIGNAL \inst|stateConverter0|comb~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|LessThan3~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state[2]~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state[2]~12_combout\ : std_logic;
SIGNAL \inst|stateConverter0|comb~3_combout\ : std_logic;
SIGNAL \inst|stateConverter0|comb~4_combout\ : std_logic;
SIGNAL \inst|stateConverter0|comb~5_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state[1]~13_combout\ : std_logic;
SIGNAL \inst|stateConverter0|comb~2_combout\ : std_logic;
SIGNAL \inst|stateConverter0|comb~1_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[6]~0_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[5]~1_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[4]~2_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[3]~3_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[2]~4_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[1]~5_combout\ : std_logic;
SIGNAL \inst|inib0|outssState[0]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ : std_logic;
SIGNAL \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst|display0|ssTemp2[3]~0_combout\ : std_logic;
SIGNAL \inst|display0|Equal7~0_combout\ : std_logic;
SIGNAL \inst|enable0|S[7]~6_combout\ : std_logic;
SIGNAL \inst|display0|ssTemp2[4]~1_combout\ : std_logic;
SIGNAL \inst|enable0|S[6]~7_combout\ : std_logic;
SIGNAL \inst|display0|Add0~1\ : std_logic;
SIGNAL \inst|display0|Add0~3\ : std_logic;
SIGNAL \inst|display0|Add0~5\ : std_logic;
SIGNAL \inst|display0|Add0~7\ : std_logic;
SIGNAL \inst|display0|Add0~9\ : std_logic;
SIGNAL \inst|display0|Add0~11\ : std_logic;
SIGNAL \inst|display0|Add0~13\ : std_logic;
SIGNAL \inst|display0|Add0~15\ : std_logic;
SIGNAL \inst|display0|Add0~17\ : std_logic;
SIGNAL \inst|display0|Add0~18_combout\ : std_logic;
SIGNAL \inst|display0|Add0~16_combout\ : std_logic;
SIGNAL \inst|display0|Add0~14_combout\ : std_logic;
SIGNAL \inst|display0|Add0~12_combout\ : std_logic;
SIGNAL \inst|display0|Add0~6_combout\ : std_logic;
SIGNAL \inst|display0|Add0~8_combout\ : std_logic;
SIGNAL \inst|display0|Add0~4_combout\ : std_logic;
SIGNAL \inst|display0|Add0~2_combout\ : std_logic;
SIGNAL \inst|display0|Add0~0_combout\ : std_logic;
SIGNAL \inst|enable0|S[1]~5_combout\ : std_logic;
SIGNAL \inst|enable0|S[0]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ : std_logic;
SIGNAL \inst|display0|Add0~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[28]~74_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~82_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~148_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~133_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~89_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~96_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~135_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~138_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~103_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~140_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~110_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~143_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~117_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~124_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~145_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~146_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~125_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~147_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~126_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~127_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~128_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~129_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~130_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ : std_logic;
SIGNAL \inst|display0|Equal21~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ : std_logic;
SIGNAL \inst|display0|Add2~1_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ : std_logic;
SIGNAL \inst|display0|Add2~2_combout\ : std_logic;
SIGNAL \inst|display0|Add2~0_combout\ : std_logic;
SIGNAL \inst|display0|Equal25~0_combout\ : std_logic;
SIGNAL \inst|display0|Add2~3_combout\ : std_logic;
SIGNAL \inst|display0|comb~4_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[6]~0_combout\ : std_logic;
SIGNAL \inst|display0|comb~5_combout\ : std_logic;
SIGNAL \inst|display0|comb~6_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[5]~1_combout\ : std_logic;
SIGNAL \inst|display0|comb~8_combout\ : std_logic;
SIGNAL \inst|display0|comb~7_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[4]~2_combout\ : std_logic;
SIGNAL \inst|display0|comb~9_combout\ : std_logic;
SIGNAL \inst|display0|comb~10_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[3]~3_combout\ : std_logic;
SIGNAL \inst|display0|comb~12_combout\ : std_logic;
SIGNAL \inst|display0|comb~11_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[2]~4_combout\ : std_logic;
SIGNAL \inst|display0|comb~14_combout\ : std_logic;
SIGNAL \inst|display0|comb~13_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[1]~5_combout\ : std_logic;
SIGNAL \inst|display0|comb~16_combout\ : std_logic;
SIGNAL \inst|display0|comb~15_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp0[0]~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ : std_logic;
SIGNAL \inst|display0|comb~17_combout\ : std_logic;
SIGNAL \inst|display0|Equal15~0_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[6]~0_combout\ : std_logic;
SIGNAL \inst|display0|comb~28_combout\ : std_logic;
SIGNAL \inst|display0|comb~29_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[5]~1_combout\ : std_logic;
SIGNAL \inst|display0|comb~19_combout\ : std_logic;
SIGNAL \inst|display0|comb~18_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[4]~2_combout\ : std_logic;
SIGNAL \inst|display0|comb~20_combout\ : std_logic;
SIGNAL \inst|display0|comb~21_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[3]~3_combout\ : std_logic;
SIGNAL \inst|display0|comb~22_combout\ : std_logic;
SIGNAL \inst|display0|comb~23_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[2]~4_combout\ : std_logic;
SIGNAL \inst|display0|comb~24_combout\ : std_logic;
SIGNAL \inst|display0|comb~25_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[1]~5_combout\ : std_logic;
SIGNAL \inst|display0|comb~27_combout\ : std_logic;
SIGNAL \inst|display0|comb~26_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp1[0]~6_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp2[5]~0_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp2[4]~1_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp2[2]~2_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp2[1]~3_combout\ : std_logic;
SIGNAL \inst|inib0|outssTemp2[0]~4_combout\ : std_logic;
SIGNAL \inst|stateConverter0|Equal3~1_combout\ : std_logic;
SIGNAL \inst|stateConverter0|Equal3~2_combout\ : std_logic;
SIGNAL \inst|stateConverter0|Equal0~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|transition[0]~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|transition[0]~1_combout\ : std_logic;
SIGNAL \inst|stateConverter0|Equal0~1_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[0]~0_combout\ : std_logic;
SIGNAL \inst|stateConverter0|transition[1]~2_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[6]~1_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[5]~2_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[4]~3_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[3]~4_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[2]~5_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[1]~6_combout\ : std_logic;
SIGNAL \inst|inib0|outssTransition[0]~7_combout\ : std_logic;
SIGNAL \inst|stateConverter0|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|display0|ssTemp0\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|display0|ssTemp1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|inib0|ALT_INV_outssState[6]~0_combout\ : std_logic;
SIGNAL \inst|inib0|ALT_INV_outssTransition[5]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

outssState <= ww_outssState;
ww_en <= en;
ww_inibicao <= inibicao;
ww_temp <= temp;
outssTemp0 <= ww_outssTemp0;
outssTemp1 <= ww_outssTemp1;
outssTemp2 <= ww_outssTemp2;
outssTransition <= ww_outssTransition;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|inib0|ALT_INV_outssState[6]~0_combout\ <= NOT \inst|inib0|outssState[6]~0_combout\;
\inst|inib0|ALT_INV_outssTransition[5]~2_combout\ <= NOT \inst|inib0|outssTransition[5]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X49_Y73_N16
\outssState[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|ALT_INV_outssState[6]~0_combout\,
	devoe => ww_devoe,
	o => \outssState[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\outssState[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssState[5]~1_combout\,
	devoe => ww_devoe,
	o => \outssState[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\outssState[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssState[4]~2_combout\,
	devoe => ww_devoe,
	o => \outssState[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\outssState[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssState[3]~3_combout\,
	devoe => ww_devoe,
	o => \outssState[3]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\outssState[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssState[2]~4_combout\,
	devoe => ww_devoe,
	o => \outssState[2]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\outssState[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssState[1]~5_combout\,
	devoe => ww_devoe,
	o => \outssState[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\outssState[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssState[0]~6_combout\,
	devoe => ww_devoe,
	o => \outssState[0]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\outssTemp0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[6]~0_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\outssTemp0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[5]~1_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\outssTemp0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[4]~2_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\outssTemp0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[3]~3_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\outssTemp0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[2]~4_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[2]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\outssTemp0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[1]~5_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[1]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\outssTemp0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp0[0]~6_combout\,
	devoe => ww_devoe,
	o => \outssTemp0[0]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\outssTemp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[6]~0_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\outssTemp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[5]~1_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[5]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\outssTemp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[4]~2_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[4]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\outssTemp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[3]~3_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\outssTemp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[2]~4_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\outssTemp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[1]~5_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\outssTemp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp1[0]~6_combout\,
	devoe => ww_devoe,
	o => \outssTemp1[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\outssTemp2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inibicao~input_o\,
	devoe => ww_devoe,
	o => \outssTemp2[6]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\outssTemp2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp2[5]~0_combout\,
	devoe => ww_devoe,
	o => \outssTemp2[5]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\outssTemp2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp2[4]~1_combout\,
	devoe => ww_devoe,
	o => \outssTemp2[4]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\outssTemp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inibicao~input_o\,
	devoe => ww_devoe,
	o => \outssTemp2[3]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\outssTemp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp2[2]~2_combout\,
	devoe => ww_devoe,
	o => \outssTemp2[2]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\outssTemp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp2[1]~3_combout\,
	devoe => ww_devoe,
	o => \outssTemp2[1]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\outssTemp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTemp2[0]~4_combout\,
	devoe => ww_devoe,
	o => \outssTemp2[0]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\outssTransition[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTransition[6]~1_combout\,
	devoe => ww_devoe,
	o => \outssTransition[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\outssTransition[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|ALT_INV_outssTransition[5]~2_combout\,
	devoe => ww_devoe,
	o => \outssTransition[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\outssTransition[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTransition[4]~3_combout\,
	devoe => ww_devoe,
	o => \outssTransition[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\outssTransition[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTransition[3]~4_combout\,
	devoe => ww_devoe,
	o => \outssTransition[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\outssTransition[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTransition[2]~5_combout\,
	devoe => ww_devoe,
	o => \outssTransition[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\outssTransition[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTransition[1]~6_combout\,
	devoe => ww_devoe,
	o => \outssTransition[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\outssTransition[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inib0|outssTransition[0]~7_combout\,
	devoe => ww_devoe,
	o => \outssTransition[0]~output_o\);

-- Location: IOIBUF_X23_Y73_N8
\inibicao~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inibicao,
	o => \inibicao~input_o\);

-- Location: IOIBUF_X47_Y73_N1
\en~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X45_Y73_N1
\temp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(4),
	o => \temp[4]~input_o\);

-- Location: IOIBUF_X38_Y73_N1
\temp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(2),
	o => \temp[2]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\temp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(3),
	o => \temp[3]~input_o\);

-- Location: IOIBUF_X40_Y73_N1
\temp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(1),
	o => \temp[1]~input_o\);

-- Location: LCCOMB_X45_Y69_N28
\inst|stateConverter0|LessThan8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|LessThan8~0_combout\ = (!\temp[4]~input_o\ & (((!\temp[2]~input_o\ & !\temp[1]~input_o\)) # (!\temp[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[4]~input_o\,
	datab => \temp[2]~input_o\,
	datac => \temp[3]~input_o\,
	datad => \temp[1]~input_o\,
	combout => \inst|stateConverter0|LessThan8~0_combout\);

-- Location: IOIBUF_X18_Y73_N15
\temp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(7),
	o => \temp[7]~input_o\);

-- Location: IOIBUF_X42_Y73_N8
\temp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(6),
	o => \temp[6]~input_o\);

-- Location: LCCOMB_X43_Y69_N10
\inst|stateConverter0|state[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state[2]~1_combout\ = (!\temp[7]~input_o\ & !\temp[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[7]~input_o\,
	datad => \temp[6]~input_o\,
	combout => \inst|stateConverter0|state[2]~1_combout\);

-- Location: IOIBUF_X42_Y73_N1
\temp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(5),
	o => \temp[5]~input_o\);

-- Location: LCCOMB_X45_Y69_N22
\inst|stateConverter0|LessThan8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|LessThan8~1_combout\ = ((\inst|stateConverter0|LessThan8~0_combout\ & (\inst|stateConverter0|state[2]~1_combout\ & !\temp[5]~input_o\))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \inst|stateConverter0|LessThan8~0_combout\,
	datac => \inst|stateConverter0|state[2]~1_combout\,
	datad => \temp[5]~input_o\,
	combout => \inst|stateConverter0|LessThan8~1_combout\);

-- Location: IOIBUF_X40_Y73_N8
\temp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_temp(0),
	o => \temp[0]~input_o\);

-- Location: LCCOMB_X45_Y69_N30
\inst|stateConverter0|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~2_combout\ = (!\temp[2]~input_o\ & (!\temp[4]~input_o\ & ((!\temp[0]~input_o\) # (!\temp[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~input_o\,
	datab => \temp[2]~input_o\,
	datac => \temp[4]~input_o\,
	datad => \temp[0]~input_o\,
	combout => \inst|stateConverter0|state~2_combout\);

-- Location: LCCOMB_X45_Y69_N0
\inst|stateConverter0|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~3_combout\ = ((\temp[3]~input_o\ & ((\temp[4]~input_o\))) # (!\temp[3]~input_o\ & ((\temp[2]~input_o\) # (!\temp[4]~input_o\)))) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \temp[2]~input_o\,
	datac => \temp[3]~input_o\,
	datad => \temp[4]~input_o\,
	combout => \inst|stateConverter0|state~3_combout\);

-- Location: LCCOMB_X45_Y69_N10
\inst|stateConverter0|state~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~4_combout\ = (\temp[5]~input_o\) # (((\inst|stateConverter0|state~2_combout\) # (\inst|stateConverter0|state~3_combout\)) # (!\inst|stateConverter0|state[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[5]~input_o\,
	datab => \inst|stateConverter0|state[2]~1_combout\,
	datac => \inst|stateConverter0|state~2_combout\,
	datad => \inst|stateConverter0|state~3_combout\,
	combout => \inst|stateConverter0|state~4_combout\);

-- Location: LCCOMB_X41_Y69_N10
\inst|enable0|S[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[4]~2_combout\ = (\temp[4]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[4]~input_o\,
	datad => \en~input_o\,
	combout => \inst|enable0|S[4]~2_combout\);

-- Location: LCCOMB_X41_Y69_N8
\inst|stateConverter0|state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~6_combout\ = (\temp[3]~input_o\ & (\temp[1]~input_o\ & (\temp[2]~input_o\ & \en~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[3]~input_o\,
	datab => \temp[1]~input_o\,
	datac => \temp[2]~input_o\,
	datad => \en~input_o\,
	combout => \inst|stateConverter0|state~6_combout\);

-- Location: LCCOMB_X41_Y69_N16
\inst|enable0|S[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[3]~1_combout\ = (\en~input_o\ & \temp[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datad => \temp[3]~input_o\,
	combout => \inst|enable0|S[3]~1_combout\);

-- Location: LCCOMB_X41_Y69_N20
\inst|enable0|S[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[2]~3_combout\ = (\temp[2]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[2]~input_o\,
	datad => \en~input_o\,
	combout => \inst|enable0|S[2]~3_combout\);

-- Location: LCCOMB_X41_Y69_N30
\inst|stateConverter0|state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~5_combout\ = (!\inst|enable0|S[3]~1_combout\ & (((!\temp[0]~input_o\ & !\temp[1]~input_o\)) # (!\inst|enable0|S[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[0]~input_o\,
	datab => \inst|enable0|S[3]~1_combout\,
	datac => \temp[1]~input_o\,
	datad => \inst|enable0|S[2]~3_combout\,
	combout => \inst|stateConverter0|state~5_combout\);

-- Location: LCCOMB_X43_Y69_N16
\inst|stateConverter0|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|Equal3~0_combout\ = ((!\temp[7]~input_o\ & !\temp[6]~input_o\)) # (!\en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[7]~input_o\,
	datab => \en~input_o\,
	datad => \temp[6]~input_o\,
	combout => \inst|stateConverter0|Equal3~0_combout\);

-- Location: LCCOMB_X41_Y69_N26
\inst|stateConverter0|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~7_combout\ = ((\inst|stateConverter0|state~6_combout\) # ((\inst|stateConverter0|state~5_combout\) # (!\inst|stateConverter0|Equal3~0_combout\))) # (!\inst|enable0|S[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[4]~2_combout\,
	datab => \inst|stateConverter0|state~6_combout\,
	datac => \inst|stateConverter0|state~5_combout\,
	datad => \inst|stateConverter0|Equal3~0_combout\,
	combout => \inst|stateConverter0|state~7_combout\);

-- Location: LCCOMB_X45_Y69_N8
\inst|enable0|S[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[5]~0_combout\ = (\en~input_o\ & \temp[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \en~input_o\,
	datad => \temp[5]~input_o\,
	combout => \inst|enable0|S[5]~0_combout\);

-- Location: LCCOMB_X45_Y69_N16
\inst|stateConverter0|state[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state[0]~8_combout\ = (\inst|stateConverter0|state~4_combout\ & (!\inst|stateConverter0|LessThan8~1_combout\ & ((\inst|stateConverter0|state~7_combout\) # (\inst|enable0|S[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|state~4_combout\,
	datab => \inst|stateConverter0|state~7_combout\,
	datac => \inst|stateConverter0|LessThan8~1_combout\,
	datad => \inst|enable0|S[5]~0_combout\,
	combout => \inst|stateConverter0|state[0]~8_combout\);

-- Location: LCCOMB_X45_Y69_N18
\inst|stateConverter0|state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~9_combout\ = (\en~input_o\ & (\temp[2]~input_o\ & (\temp[3]~input_o\ & \temp[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \temp[2]~input_o\,
	datac => \temp[3]~input_o\,
	datad => \temp[4]~input_o\,
	combout => \inst|stateConverter0|state~9_combout\);

-- Location: LCCOMB_X45_Y69_N4
\inst|stateConverter0|state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~10_combout\ = ((!\temp[0]~input_o\) # (!\en~input_o\)) # (!\temp[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~input_o\,
	datac => \en~input_o\,
	datad => \temp[0]~input_o\,
	combout => \inst|stateConverter0|state~10_combout\);

-- Location: LCCOMB_X45_Y69_N14
\inst|stateConverter0|state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state~11_combout\ = ((\inst|enable0|S[5]~0_combout\ & (\inst|stateConverter0|state~9_combout\)) # (!\inst|enable0|S[5]~0_combout\ & ((\inst|stateConverter0|state~10_combout\) # (!\inst|stateConverter0|state~9_combout\)))) # 
-- (!\inst|stateConverter0|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[5]~0_combout\,
	datab => \inst|stateConverter0|state~9_combout\,
	datac => \inst|stateConverter0|state~10_combout\,
	datad => \inst|stateConverter0|Equal3~0_combout\,
	combout => \inst|stateConverter0|state~11_combout\);

-- Location: LCCOMB_X45_Y69_N20
\inst|stateConverter0|state[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state[0]~14_combout\ = (\inst|stateConverter0|LessThan8~1_combout\ & (\inst|stateConverter0|state[0]~8_combout\ & (!\inst|stateConverter0|state~11_combout\))) # (!\inst|stateConverter0|LessThan8~1_combout\ & 
-- (((\inst|stateConverter0|state[0]~8_combout\ & !\inst|stateConverter0|state~11_combout\)) # (!\inst|stateConverter0|state~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|LessThan8~1_combout\,
	datab => \inst|stateConverter0|state[0]~8_combout\,
	datac => \inst|stateConverter0|state~11_combout\,
	datad => \inst|stateConverter0|state~4_combout\,
	combout => \inst|stateConverter0|state[0]~14_combout\);

-- Location: LCCOMB_X45_Y69_N24
\inst|stateConverter0|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|comb~0_combout\ = (\inst|stateConverter0|state[0]~8_combout\ & \inst|stateConverter0|state~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|stateConverter0|state[0]~8_combout\,
	datac => \inst|stateConverter0|state~11_combout\,
	combout => \inst|stateConverter0|comb~0_combout\);

-- Location: LCCOMB_X45_Y69_N26
\inst|stateConverter0|LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|LessThan3~0_combout\ = (((!\temp[1]~input_o\ & !\temp[0]~input_o\)) # (!\en~input_o\)) # (!\temp[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~input_o\,
	datab => \temp[2]~input_o\,
	datac => \en~input_o\,
	datad => \temp[0]~input_o\,
	combout => \inst|stateConverter0|LessThan3~0_combout\);

-- Location: LCCOMB_X45_Y69_N12
\inst|stateConverter0|state[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state[2]~0_combout\ = (!\inst|stateConverter0|LessThan3~0_combout\ & (\inst|enable0|S[3]~1_combout\ & (\temp[4]~input_o\ & \temp[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|LessThan3~0_combout\,
	datab => \inst|enable0|S[3]~1_combout\,
	datac => \temp[4]~input_o\,
	datad => \temp[5]~input_o\,
	combout => \inst|stateConverter0|state[2]~0_combout\);

-- Location: LCCOMB_X46_Y69_N6
\inst|stateConverter0|state[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state[2]~12_combout\ = ((\en~input_o\ & ((\inst|stateConverter0|state[2]~0_combout\) # (!\inst|stateConverter0|state[2]~1_combout\)))) # (!\inst|stateConverter0|comb~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|state[2]~1_combout\,
	datab => \inst|stateConverter0|comb~0_combout\,
	datac => \en~input_o\,
	datad => \inst|stateConverter0|state[2]~0_combout\,
	combout => \inst|stateConverter0|state[2]~12_combout\);

-- Location: LCCOMB_X46_Y69_N12
\inst|stateConverter0|comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|comb~3_combout\ = (!\inst|stateConverter0|state[0]~14_combout\ & \inst|stateConverter0|state[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|stateConverter0|state[0]~14_combout\,
	datad => \inst|stateConverter0|state[2]~12_combout\,
	combout => \inst|stateConverter0|comb~3_combout\);

-- Location: LCCOMB_X46_Y69_N22
\inst|stateConverter0|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|comb~4_combout\ = (\inst|stateConverter0|state[0]~14_combout\ & \inst|stateConverter0|state[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|stateConverter0|state[0]~14_combout\,
	datad => \inst|stateConverter0|state[2]~12_combout\,
	combout => \inst|stateConverter0|comb~4_combout\);

-- Location: LCCOMB_X46_Y69_N20
\inst|stateConverter0|state[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state\(0) = (!\inst|stateConverter0|comb~3_combout\ & ((\inst|stateConverter0|comb~4_combout\) # (\inst|stateConverter0|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|comb~3_combout\,
	datac => \inst|stateConverter0|comb~4_combout\,
	datad => \inst|stateConverter0|state\(0),
	combout => \inst|stateConverter0|state\(0));

-- Location: LCCOMB_X46_Y69_N16
\inst|stateConverter0|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|comb~5_combout\ = (\inst|stateConverter0|comb~0_combout\ & (\en~input_o\ & ((\inst|stateConverter0|state[2]~0_combout\) # (!\inst|stateConverter0|state[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|state[2]~1_combout\,
	datab => \inst|stateConverter0|comb~0_combout\,
	datac => \en~input_o\,
	datad => \inst|stateConverter0|state[2]~0_combout\,
	combout => \inst|stateConverter0|comb~5_combout\);

-- Location: LCCOMB_X46_Y69_N30
\inst|stateConverter0|state[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state\(2) = (\inst|stateConverter0|comb~0_combout\ & ((\inst|stateConverter0|state\(2)) # (\inst|stateConverter0|comb~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|stateConverter0|comb~0_combout\,
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|comb~5_combout\,
	combout => \inst|stateConverter0|state\(2));

-- Location: LCCOMB_X45_Y69_N2
\inst|stateConverter0|state[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state[1]~13_combout\ = (\inst|stateConverter0|state[0]~8_combout\ & (((!\inst|stateConverter0|state~11_combout\)))) # (!\inst|stateConverter0|state[0]~8_combout\ & (!\inst|stateConverter0|LessThan8~1_combout\ & 
-- ((\inst|stateConverter0|state~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|LessThan8~1_combout\,
	datab => \inst|stateConverter0|state[0]~8_combout\,
	datac => \inst|stateConverter0|state~11_combout\,
	datad => \inst|stateConverter0|state~4_combout\,
	combout => \inst|stateConverter0|state[1]~13_combout\);

-- Location: LCCOMB_X46_Y69_N10
\inst|stateConverter0|comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|comb~2_combout\ = (\inst|stateConverter0|state[1]~13_combout\ & \inst|stateConverter0|state[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|state[1]~13_combout\,
	datad => \inst|stateConverter0|state[2]~12_combout\,
	combout => \inst|stateConverter0|comb~2_combout\);

-- Location: LCCOMB_X46_Y69_N24
\inst|stateConverter0|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|comb~1_combout\ = (!\inst|stateConverter0|state[1]~13_combout\ & \inst|stateConverter0|state[2]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|state[1]~13_combout\,
	datad => \inst|stateConverter0|state[2]~12_combout\,
	combout => \inst|stateConverter0|comb~1_combout\);

-- Location: LCCOMB_X46_Y69_N18
\inst|stateConverter0|state[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|state\(1) = (!\inst|stateConverter0|comb~1_combout\ & ((\inst|stateConverter0|comb~2_combout\) # (\inst|stateConverter0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|comb~2_combout\,
	datab => \inst|stateConverter0|comb~1_combout\,
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|stateConverter0|state\(1));

-- Location: LCCOMB_X46_Y69_N0
\inst|inib0|outssState[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[6]~0_combout\ = (!\inibicao~input_o\ & ((\inst|stateConverter0|state\(0)) # ((\inst|stateConverter0|state\(1)) # (!\inst|stateConverter0|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[6]~0_combout\);

-- Location: LCCOMB_X46_Y69_N26
\inst|inib0|outssState[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[5]~1_combout\ = (\inibicao~input_o\) # ((\inst|stateConverter0|state\(0) & ((!\inst|stateConverter0|state\(1)))) # (!\inst|stateConverter0|state\(0) & (\inst|stateConverter0|state\(2) & \inst|stateConverter0|state\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[5]~1_combout\);

-- Location: LCCOMB_X46_Y69_N28
\inst|inib0|outssState[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[4]~2_combout\ = (\inibicao~input_o\) # ((!\inst|stateConverter0|state\(2) & (\inst|stateConverter0|state\(0) $ (\inst|stateConverter0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[4]~2_combout\);

-- Location: LCCOMB_X46_Y69_N14
\inst|inib0|outssState[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[3]~3_combout\ = (\inibicao~input_o\) # ((\inst|stateConverter0|state\(2) & (\inst|stateConverter0|state\(0) $ (!\inst|stateConverter0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[3]~3_combout\);

-- Location: LCCOMB_X46_Y69_N8
\inst|inib0|outssState[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[2]~4_combout\ = (\inibicao~input_o\) # ((\inst|stateConverter0|state\(0) & ((\inst|stateConverter0|state\(2)) # (\inst|stateConverter0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[2]~4_combout\);

-- Location: LCCOMB_X46_Y69_N2
\inst|inib0|outssState[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[1]~5_combout\ = (\inibicao~input_o\) # (\inst|stateConverter0|state\(1) $ (((!\inst|stateConverter0|state\(0) & \inst|stateConverter0|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[1]~5_combout\);

-- Location: LCCOMB_X46_Y69_N4
\inst|inib0|outssState[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssState[0]~6_combout\ = (\inibicao~input_o\) # ((\inst|stateConverter0|state\(0) & (\inst|stateConverter0|state\(2) & \inst|stateConverter0|state\(1))) # (!\inst|stateConverter0|state\(0) & ((!\inst|stateConverter0|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inibicao~input_o\,
	datab => \inst|stateConverter0|state\(0),
	datac => \inst|stateConverter0|state\(2),
	datad => \inst|stateConverter0|state\(1),
	combout => \inst|inib0|outssState[0]~6_combout\);

-- Location: LCCOMB_X43_Y69_N18
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = (((\temp[3]~input_o\ & \en~input_o\)))
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY((\temp[3]~input_o\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[3]~input_o\,
	datab => \en~input_o\,
	datad => VCC,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X43_Y69_N20
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\en~input_o\ & ((\temp[4]~input_o\ & (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\temp[4]~input_o\ & 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\)))) # (!\en~input_o\ & (((!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))))
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & ((!\temp[4]~input_o\) # (!\en~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \en~input_o\,
	datab => \temp[4]~input_o\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X43_Y69_N22
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & ((((\temp[5]~input_o\ & \en~input_o\))))) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ & (((\temp[5]~input_o\ & \en~input_o\)) # (GND)))
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY(((\temp[5]~input_o\ & \en~input_o\)) # (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp[5]~input_o\,
	datab => \en~input_o\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X43_Y69_N24
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((!\en~input_o\)) # (!\temp[6]~input_o\))) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ & (((\temp[6]~input_o\ & \en~input_o\)) # (GND)))
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY(((!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\en~input_o\)) # (!\temp[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp[6]~input_o\,
	datab => \en~input_o\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X43_Y69_N26
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & (\temp[7]~input_o\ & (\en~input_o\ & VCC))) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & ((((\temp[7]~input_o\ & \en~input_o\)))))
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\temp[7]~input_o\ & (\en~input_o\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp[7]~input_o\,
	datab => \en~input_o\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X43_Y69_N28
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X42_Y69_N8
\inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ = (\temp[7]~input_o\ & (\en~input_o\ & \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[7]~input_o\,
	datac => \en~input_o\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\);

-- Location: LCCOMB_X43_Y69_N0
\inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\);

-- Location: LCCOMB_X43_Y69_N2
\inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\ = (\temp[6]~input_o\ & (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[6]~input_o\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \en~input_o\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\);

-- Location: LCCOMB_X43_Y69_N12
\inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\);

-- Location: LCCOMB_X43_Y69_N30
\inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\);

-- Location: LCCOMB_X42_Y69_N10
\inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\ = (\temp[5]~input_o\ & (\en~input_o\ & \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp[5]~input_o\,
	datac => \en~input_o\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\);

-- Location: LCCOMB_X42_Y69_N30
\inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\);

-- Location: LCCOMB_X42_Y69_N28
\inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\en~input_o\ & \temp[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \en~input_o\,
	datad => \temp[4]~input_o\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\);

-- Location: LCCOMB_X41_Y69_N2
\inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ = (\en~input_o\ & (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \temp[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \en~input_o\,
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \temp[3]~input_o\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\);

-- Location: LCCOMB_X42_Y69_N0
\inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ = (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\);

-- Location: LCCOMB_X41_Y69_N12
\inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\temp[2]~input_o\ & \en~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \temp[2]~input_o\,
	datad => \en~input_o\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\);

-- Location: LCCOMB_X41_Y69_N0
\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ = (\temp[2]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[2]~input_o\,
	datad => \en~input_o\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\);

-- Location: LCCOMB_X41_Y69_N6
\inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\ & 
-- !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~12_combout\,
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\);

-- Location: LCCOMB_X42_Y69_N14
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\ = CARRY((\inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\) # (\inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~10_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|StageOut[49]~11_combout\,
	datad => VCC,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\);

-- Location: LCCOMB_X42_Y69_N16
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\ = CARRY((!\inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\ & (!\inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\ & 
-- !\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~8_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|StageOut[50]~9_combout\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~1_cout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\);

-- Location: LCCOMB_X42_Y69_N18
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\ = CARRY((\inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\) # ((\inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~7_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|StageOut[51]~6_combout\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~3_cout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\);

-- Location: LCCOMB_X42_Y69_N20
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ = CARRY(((!\inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\)) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~5_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|StageOut[52]~4_combout\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~5_cout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\);

-- Location: LCCOMB_X42_Y69_N22
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\ = CARRY((!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\ & ((\inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\) 
-- # (\inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~2_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|StageOut[53]~3_combout\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~7_cout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\);

-- Location: LCCOMB_X42_Y69_N24
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\ = CARRY((!\inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\ & (!\inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\ & 
-- !\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~0_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|StageOut[54]~1_combout\,
	datad => VCC,
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~9_cout\,
	cout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\);

-- Location: LCCOMB_X42_Y69_N26
\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~11_cout\,
	combout => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X45_Y67_N24
\inst|display0|ssTemp2[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp2[3]~0_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|ssTemp2[3]~0_combout\);

-- Location: LCCOMB_X38_Y61_N24
\inst|display0|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Equal7~0_combout\ = (\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|Equal7~0_combout\);

-- Location: LCCOMB_X43_Y69_N4
\inst|enable0|S[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[7]~6_combout\ = (\temp[7]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[7]~input_o\,
	datad => \en~input_o\,
	combout => \inst|enable0|S[7]~6_combout\);

-- Location: LCCOMB_X39_Y62_N24
\inst|display0|ssTemp2[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp2[4]~1_combout\ = \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|display0|ssTemp2[4]~1_combout\);

-- Location: LCCOMB_X43_Y69_N6
\inst|enable0|S[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[6]~7_combout\ = (\temp[6]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[6]~input_o\,
	datad => \en~input_o\,
	combout => \inst|enable0|S[6]~7_combout\);

-- Location: LCCOMB_X45_Y61_N6
\inst|display0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~0_combout\ = (\inst|enable0|S[2]~3_combout\ & ((\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\) # (GND))) # (!\inst|enable0|S[2]~3_combout\ & 
-- (\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (VCC)))
-- \inst|display0|Add0~1\ = CARRY((\inst|enable0|S[2]~3_combout\) # (\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[2]~3_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	combout => \inst|display0|Add0~0_combout\,
	cout => \inst|display0|Add0~1\);

-- Location: LCCOMB_X45_Y61_N8
\inst|display0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~2_combout\ = (\inst|enable0|S[3]~1_combout\ & ((\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst|display0|Add0~1\ & VCC)) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (!\inst|display0|Add0~1\)))) # (!\inst|enable0|S[3]~1_combout\ & ((\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (!\inst|display0|Add0~1\)) # (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst|display0|Add0~1\) # (GND)))))
-- \inst|display0|Add0~3\ = CARRY((\inst|enable0|S[3]~1_combout\ & (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & !\inst|display0|Add0~1\)) # (!\inst|enable0|S[3]~1_combout\ & ((!\inst|display0|Add0~1\) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[3]~1_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => VCC,
	cin => \inst|display0|Add0~1\,
	combout => \inst|display0|Add0~2_combout\,
	cout => \inst|display0|Add0~3\);

-- Location: LCCOMB_X45_Y61_N10
\inst|display0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~4_combout\ = (\inst|enable0|S[4]~2_combout\ & ((GND) # (!\inst|display0|Add0~3\))) # (!\inst|enable0|S[4]~2_combout\ & (\inst|display0|Add0~3\ $ (GND)))
-- \inst|display0|Add0~5\ = CARRY((\inst|enable0|S[4]~2_combout\) # (!\inst|display0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|enable0|S[4]~2_combout\,
	datad => VCC,
	cin => \inst|display0|Add0~3\,
	combout => \inst|display0|Add0~4_combout\,
	cout => \inst|display0|Add0~5\);

-- Location: LCCOMB_X45_Y61_N12
\inst|display0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~6_combout\ = (\inst|enable0|S[5]~0_combout\ & ((\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst|display0|Add0~5\ & VCC)) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (!\inst|display0|Add0~5\)))) # (!\inst|enable0|S[5]~0_combout\ & ((\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (!\inst|display0|Add0~5\)) # (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst|display0|Add0~5\) # (GND)))))
-- \inst|display0|Add0~7\ = CARRY((\inst|enable0|S[5]~0_combout\ & (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\inst|display0|Add0~5\)) # (!\inst|enable0|S[5]~0_combout\ & ((!\inst|display0|Add0~5\) # 
-- (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[5]~0_combout\,
	datab => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => VCC,
	cin => \inst|display0|Add0~5\,
	combout => \inst|display0|Add0~6_combout\,
	cout => \inst|display0|Add0~7\);

-- Location: LCCOMB_X45_Y61_N14
\inst|display0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~8_combout\ = ((\inst|display0|ssTemp2[4]~1_combout\ $ (\inst|enable0|S[6]~7_combout\ $ (\inst|display0|Add0~7\)))) # (GND)
-- \inst|display0|Add0~9\ = CARRY((\inst|display0|ssTemp2[4]~1_combout\ & (\inst|enable0|S[6]~7_combout\ & !\inst|display0|Add0~7\)) # (!\inst|display0|ssTemp2[4]~1_combout\ & ((\inst|enable0|S[6]~7_combout\) # (!\inst|display0|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|ssTemp2[4]~1_combout\,
	datab => \inst|enable0|S[6]~7_combout\,
	datad => VCC,
	cin => \inst|display0|Add0~7\,
	combout => \inst|display0|Add0~8_combout\,
	cout => \inst|display0|Add0~9\);

-- Location: LCCOMB_X45_Y61_N16
\inst|display0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~10_combout\ = (\inst|display0|Equal7~0_combout\ & ((\inst|enable0|S[7]~6_combout\ & (!\inst|display0|Add0~9\)) # (!\inst|enable0|S[7]~6_combout\ & ((\inst|display0|Add0~9\) # (GND))))) # (!\inst|display0|Equal7~0_combout\ & 
-- ((\inst|enable0|S[7]~6_combout\ & (\inst|display0|Add0~9\ & VCC)) # (!\inst|enable0|S[7]~6_combout\ & (!\inst|display0|Add0~9\))))
-- \inst|display0|Add0~11\ = CARRY((\inst|display0|Equal7~0_combout\ & ((!\inst|display0|Add0~9\) # (!\inst|enable0|S[7]~6_combout\))) # (!\inst|display0|Equal7~0_combout\ & (!\inst|enable0|S[7]~6_combout\ & !\inst|display0|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Equal7~0_combout\,
	datab => \inst|enable0|S[7]~6_combout\,
	datad => VCC,
	cin => \inst|display0|Add0~9\,
	combout => \inst|display0|Add0~10_combout\,
	cout => \inst|display0|Add0~11\);

-- Location: LCCOMB_X45_Y61_N18
\inst|display0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~12_combout\ = (\inst|display0|ssTemp2[3]~0_combout\ & (\inst|display0|Add0~11\ $ (GND))) # (!\inst|display0|ssTemp2[3]~0_combout\ & (!\inst|display0|Add0~11\ & VCC))
-- \inst|display0|Add0~13\ = CARRY((\inst|display0|ssTemp2[3]~0_combout\ & !\inst|display0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|ssTemp2[3]~0_combout\,
	datad => VCC,
	cin => \inst|display0|Add0~11\,
	combout => \inst|display0|Add0~12_combout\,
	cout => \inst|display0|Add0~13\);

-- Location: LCCOMB_X45_Y61_N20
\inst|display0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~14_combout\ = !\inst|display0|Add0~13\
-- \inst|display0|Add0~15\ = CARRY(!\inst|display0|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|display0|Add0~13\,
	combout => \inst|display0|Add0~14_combout\,
	cout => \inst|display0|Add0~15\);

-- Location: LCCOMB_X45_Y61_N22
\inst|display0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~16_combout\ = \inst|display0|Add0~15\ $ (GND)
-- \inst|display0|Add0~17\ = CARRY(!\inst|display0|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|display0|Add0~15\,
	combout => \inst|display0|Add0~16_combout\,
	cout => \inst|display0|Add0~17\);

-- Location: LCCOMB_X45_Y61_N24
\inst|display0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add0~18_combout\ = !\inst|display0|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Add0~17\,
	combout => \inst|display0|Add0~18_combout\);

-- Location: LCCOMB_X41_Y69_N18
\inst|enable0|S[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[1]~5_combout\ = (\temp[1]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[1]~input_o\,
	datad => \en~input_o\,
	combout => \inst|enable0|S[1]~5_combout\);

-- Location: LCCOMB_X41_Y69_N14
\inst|enable0|S[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|enable0|S[0]~4_combout\ = (\temp[0]~input_o\ & \en~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp[0]~input_o\,
	datad => \en~input_o\,
	combout => \inst|enable0|S[0]~4_combout\);

-- Location: LCCOMB_X46_Y61_N24
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ = (\inst|display0|Add0~18_combout\ & (!\inst|display0|Add0~0_combout\ & (!\inst|enable0|S[1]~5_combout\ & !\inst|enable0|S[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~0_combout\,
	datac => \inst|enable0|S[1]~5_combout\,
	datad => \inst|enable0|S[0]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\);

-- Location: LCCOMB_X45_Y61_N0
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\inst|display0|Add0~4_combout\ & (!\inst|display0|Add0~18_combout\ & \inst|display0|Add0~2_combout\)) 
-- # (!\inst|display0|Add0~4_combout\ & (\inst|display0|Add0~18_combout\ & !\inst|display0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~4_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Add0~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\);

-- Location: LCCOMB_X45_Y61_N26
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((\inst|display0|Add0~6_combout\ & (!\inst|display0|Add0~18_combout\ & \inst|display0|Add0~8_combout\)) 
-- # (!\inst|display0|Add0~6_combout\ & (\inst|display0|Add0~18_combout\ & !\inst|display0|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~6_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Add0~8_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\);

-- Location: LCCOMB_X45_Y61_N28
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((\inst|display0|Add0~12_combout\ & (!\inst|display0|Add0~18_combout\ & 
-- \inst|display0|Add0~10_combout\)) # (!\inst|display0|Add0~12_combout\ & (\inst|display0|Add0~18_combout\ & !\inst|display0|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~12_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \inst|display0|Add0~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\);

-- Location: LCCOMB_X46_Y57_N24
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((\inst|display0|Add0~16_combout\ & (!\inst|display0|Add0~18_combout\ & 
-- \inst|display0|Add0~14_combout\)) # (!\inst|display0|Add0~16_combout\ & (\inst|display0|Add0~18_combout\ & !\inst|display0|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~16_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Add0~14_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\);

-- Location: LCCOMB_X46_Y57_N26
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\ = \inst|display0|Add0~16_combout\ $ (((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & ((\inst|display0|Add0~14_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ & (\inst|display0|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~16_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Add0~14_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\);

-- Location: LCCOMB_X46_Y57_N28
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6_combout\ = \inst|display0|Add0~14_combout\ $ (\inst|display0|Add0~18_combout\ $ (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~14_combout\,
	datac => \inst|display0|Add0~18_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6_combout\);

-- Location: LCCOMB_X46_Y57_N10
\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6_combout\ $ (VCC)
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY(\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[9]~6_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X46_Y57_N12
\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\ & (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & VCC)) # 
-- (!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X46_Y57_N14
\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ $ (GND))) # 
-- (!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & VCC))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X46_Y57_N16
\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY(!\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X46_Y57_N18
\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X45_Y57_N24
\inst|display0|Div1|auto_generated|divider|divider|StageOut[28]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[28]~74_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[28]~74_combout\);

-- Location: LCCOMB_X45_Y57_N26
\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\);

-- Location: LCCOMB_X46_Y57_N22
\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\);

-- Location: LCCOMB_X45_Y57_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\);

-- Location: LCCOMB_X45_Y57_N28
\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\);

-- Location: LCCOMB_X45_Y57_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\);

-- Location: LCCOMB_X46_Y57_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|display0|Add0~14_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\ $ (\inst|display0|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~14_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~3_combout\,
	datac => \inst|display0|Add0~18_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\);

-- Location: LCCOMB_X45_Y61_N2
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\ = \inst|display0|Add0~12_combout\ $ (((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & ((\inst|display0|Add0~10_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\ & (\inst|display0|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~12_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	datad => \inst|display0|Add0~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\);

-- Location: LCCOMB_X45_Y57_N10
\inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80_combout\);

-- Location: LCCOMB_X45_Y57_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81_combout\);

-- Location: LCCOMB_X45_Y57_N12
\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~80_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[24]~81_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X45_Y57_N14
\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~79_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X45_Y57_N16
\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~78_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[26]~77_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X45_Y57_N18
\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~75_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[27]~76_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X45_Y57_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[28]~74_combout\) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[28]~74_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X45_Y57_N22
\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X45_Y57_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~82_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~82_combout\);

-- Location: LCCOMB_X45_Y57_N6
\inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~148_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~148_combout\);

-- Location: LCCOMB_X45_Y58_N16
\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\);

-- Location: LCCOMB_X46_Y57_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[10]~5_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\);

-- Location: LCCOMB_X45_Y58_N10
\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\);

-- Location: LCCOMB_X45_Y57_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[25]~131_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\);

-- Location: LCCOMB_X45_Y58_N12
\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\);

-- Location: LCCOMB_X45_Y58_N6
\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\);

-- Location: LCCOMB_X45_Y58_N18
\inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst|display0|Add0~18_combout\ $ (\inst|display0|Add0~10_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88_combout\);

-- Location: LCCOMB_X45_Y58_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst|display0|Add0~18_combout\ $ (\inst|display0|Add0~10_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87_combout\);

-- Location: LCCOMB_X45_Y58_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~88_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[30]~87_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X45_Y58_N22
\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~85_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[31]~86_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X45_Y58_N24
\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~84_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X45_Y58_N26
\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~83_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X45_Y58_N28
\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~82_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~148_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~82_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[34]~148_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X45_Y58_N30
\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X45_Y58_N14
\inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~133_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|StageOut[33]~149_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~133_combout\);

-- Location: LCCOMB_X45_Y60_N24
\inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~89_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~89_combout\);

-- Location: LCCOMB_X45_Y60_N26
\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\);

-- Location: LCCOMB_X45_Y58_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[32]~132_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\);

-- Location: LCCOMB_X45_Y58_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\)) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[8]~7_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\);

-- Location: LCCOMB_X45_Y60_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\);

-- Location: LCCOMB_X45_Y58_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (\inst|display0|Add0~18_combout\ $ (\inst|display0|Add0~10_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\);

-- Location: LCCOMB_X45_Y60_N18
\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\);

-- Location: LCCOMB_X45_Y61_N4
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ = \inst|display0|Add0~8_combout\ $ (((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & (\inst|display0|Add0~6_combout\)) # 
-- (!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ & ((\inst|display0|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~6_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Add0~8_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\);

-- Location: LCCOMB_X45_Y60_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95_combout\);

-- Location: LCCOMB_X45_Y60_N28
\inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94_combout\);

-- Location: LCCOMB_X45_Y60_N4
\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~95_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[36]~94_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X45_Y60_N6
\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~93_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X45_Y60_N8
\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~91_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X45_Y60_N10
\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~90_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X45_Y60_N12
\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~133_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~89_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~133_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[40]~89_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X45_Y60_N14
\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X45_Y60_N16
\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\);

-- Location: LCCOMB_X45_Y60_N22
\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[37]~92_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\);

-- Location: LCCOMB_X45_Y60_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\);

-- Location: LCCOMB_X46_Y60_N28
\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\);

-- Location: LCCOMB_X46_Y60_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\inst|display0|Add0~18_combout\ $ (\inst|display0|Add0~6_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~6_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101_combout\);

-- Location: LCCOMB_X46_Y60_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\inst|display0|Add0~18_combout\ $ (\inst|display0|Add0~6_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~6_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\);

-- Location: LCCOMB_X46_Y60_N12
\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~101_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[42]~102_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\);

-- Location: LCCOMB_X46_Y60_N14
\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~99_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[43]~100_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\);

-- Location: LCCOMB_X46_Y60_N16
\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~98_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\);

-- Location: LCCOMB_X46_Y60_N24
\inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~96_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~96_combout\);

-- Location: LCCOMB_X46_Y60_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~135_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[39]~134_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~135_combout\);

-- Location: LCCOMB_X46_Y60_N10
\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\);

-- Location: LCCOMB_X45_Y60_N20
\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[38]~150_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\);

-- Location: LCCOMB_X46_Y60_N18
\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~97_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\);

-- Location: LCCOMB_X46_Y60_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~96_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~135_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~96_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[46]~135_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\);

-- Location: LCCOMB_X46_Y60_N22
\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\);

-- Location: LCCOMB_X46_Y60_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[44]~137_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\);

-- Location: LCCOMB_X46_Y60_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~138_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[45]~136_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~138_combout\);

-- Location: LCCOMB_X47_Y60_N24
\inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~103_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[4]~6_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~103_combout\);

-- Location: LCCOMB_X47_Y60_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\);

-- Location: LCCOMB_X47_Y60_N28
\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\);

-- Location: LCCOMB_X46_Y60_N6
\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & (\inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[6]~8_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\);

-- Location: LCCOMB_X46_Y60_N26
\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\ $ 
-- (\inst|display0|Add0~18_combout\ $ (\inst|display0|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~1_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \inst|display0|Add0~6_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\);

-- Location: LCCOMB_X47_Y60_N22
\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\);

-- Location: LCCOMB_X45_Y61_N30
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ = \inst|display0|Add0~4_combout\ $ (((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & ((\inst|display0|Add0~2_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ & (\inst|display0|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~4_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Add0~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\);

-- Location: LCCOMB_X47_Y60_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109_combout\);

-- Location: LCCOMB_X47_Y60_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108_combout\);

-- Location: LCCOMB_X47_Y60_N10
\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~109_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[48]~108_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\);

-- Location: LCCOMB_X47_Y60_N12
\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~107_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\);

-- Location: LCCOMB_X47_Y60_N14
\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~105_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\);

-- Location: LCCOMB_X47_Y60_N16
\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~104_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\);

-- Location: LCCOMB_X47_Y60_N18
\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~138_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~103_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~138_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[52]~103_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\);

-- Location: LCCOMB_X47_Y60_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\);

-- Location: LCCOMB_X47_Y60_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~140_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[3]~4_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|StageOut[51]~139_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~140_combout\);

-- Location: LCCOMB_X47_Y61_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~110_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[4]~6_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~110_combout\);

-- Location: LCCOMB_X46_Y61_N18
\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\);

-- Location: LCCOMB_X47_Y60_N26
\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[2]~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|StageOut[50]~151_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\);

-- Location: LCCOMB_X47_Y61_N26
\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\);

-- Location: LCCOMB_X47_Y60_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[1]~0_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_8_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|StageOut[49]~106_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\);

-- Location: LCCOMB_X47_Y61_N22
\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\);

-- Location: LCCOMB_X47_Y61_N28
\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\);

-- Location: LCCOMB_X46_Y61_N12
\inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\inst|display0|Add0~2_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\inst|display0|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \inst|display0|Add0~18_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115_combout\);

-- Location: LCCOMB_X46_Y61_N6
\inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\inst|display0|Add0~2_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\inst|display0|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \inst|display0|Add0~18_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116_combout\);

-- Location: LCCOMB_X47_Y61_N10
\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~115_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[54]~116_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\);

-- Location: LCCOMB_X47_Y61_N12
\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~114_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[55]~113_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\);

-- Location: LCCOMB_X47_Y61_N14
\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~112_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\);

-- Location: LCCOMB_X47_Y61_N16
\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~111_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\);

-- Location: LCCOMB_X47_Y61_N18
\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~140_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~110_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~140_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[58]~110_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\);

-- Location: LCCOMB_X47_Y61_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\);

-- Location: LCCOMB_X48_Y61_N10
\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\);

-- Location: LCCOMB_X47_Y61_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[2]~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|StageOut[56]~142_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\);

-- Location: LCCOMB_X48_Y61_N28
\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\);

-- Location: LCCOMB_X47_Y61_N6
\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\))) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\ & (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[1]~0_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[4]~9_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\);

-- Location: LCCOMB_X48_Y61_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\);

-- Location: LCCOMB_X46_Y61_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\inst|display0|Add0~18_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\ $ (\inst|display0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \inst|display0|Add0~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\);

-- Location: LCCOMB_X46_Y61_N26
\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ = \inst|display0|Add0~0_combout\ $ (((\inst|display0|Add0~18_combout\ & ((\inst|enable0|S[1]~5_combout\) # (\inst|enable0|S[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|display0|Add0~0_combout\,
	datac => \inst|enable0|S[1]~5_combout\,
	datad => \inst|enable0|S[0]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\);

-- Location: LCCOMB_X47_Y61_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123_combout\);

-- Location: LCCOMB_X48_Y61_N8
\inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122_combout\);

-- Location: LCCOMB_X48_Y61_N16
\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\ = (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~123_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[60]~122_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\);

-- Location: LCCOMB_X48_Y61_N18
\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~121_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~1\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\);

-- Location: LCCOMB_X48_Y61_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((((\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\)))))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~119_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~3\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\);

-- Location: LCCOMB_X48_Y61_N22
\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (((\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\)))
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~118_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~5\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\);

-- Location: LCCOMB_X47_Y61_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~143_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\) # 
-- ((\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\ & !\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[3]~4_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|StageOut[57]~141_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~143_combout\);

-- Location: LCCOMB_X48_Y61_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~117_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[4]~6_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~117_combout\);

-- Location: LCCOMB_X48_Y61_N24
\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~143_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~117_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~143_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[64]~117_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~7\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\);

-- Location: LCCOMB_X48_Y61_N26
\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\);

-- Location: LCCOMB_X48_Y61_N2
\inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~124_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[4]~6_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~124_combout\);

-- Location: LCCOMB_X48_Y61_N6
\inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~145_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|StageOut[63]~144_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[3]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~145_combout\);

-- Location: LCCOMB_X48_Y61_N12
\inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~146_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|StageOut[62]~152_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[2]~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~146_combout\);

-- Location: LCCOMB_X49_Y61_N0
\inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~125_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[3]~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~125_combout\);

-- Location: LCCOMB_X48_Y61_N14
\inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~147_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\) # 
-- ((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[61]~120_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~147_combout\);

-- Location: LCCOMB_X47_Y61_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~126_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~126_combout\);

-- Location: LCCOMB_X47_Y61_N24
\inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~127_combout\ = (\inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\ & \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|my_abs_num|cs2a[2]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~127_combout\);

-- Location: LCCOMB_X48_Y61_N4
\inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~128_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[1]~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~128_combout\);

-- Location: LCCOMB_X46_Y61_N20
\inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~129_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\inst|enable0|S[1]~5_combout\ $ (((\inst|display0|Add0~18_combout\ & 
-- \inst|enable0|S[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|enable0|S[1]~5_combout\,
	datac => \inst|enable0|S[0]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~129_combout\);

-- Location: LCCOMB_X46_Y61_N30
\inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~130_combout\ = (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (\inst|enable0|S[1]~5_combout\ $ (((\inst|display0|Add0~18_combout\ & 
-- \inst|enable0|S[0]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datab => \inst|enable0|S[1]~5_combout\,
	datac => \inst|enable0|S[0]~4_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~130_combout\);

-- Location: LCCOMB_X49_Y61_N20
\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~129_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~130_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~129_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[66]~130_combout\,
	datad => VCC,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\);

-- Location: LCCOMB_X49_Y61_N22
\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~127_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~128_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~127_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[67]~128_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[1]~1_cout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\);

-- Location: LCCOMB_X49_Y61_N24
\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\ & 
-- ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~147_combout\) # (\inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~126_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~147_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[68]~126_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[2]~3_cout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\);

-- Location: LCCOMB_X49_Y61_N26
\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\ = CARRY((!\inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~146_combout\ & (!\inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~125_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~146_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[69]~125_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[3]~5_cout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\);

-- Location: LCCOMB_X49_Y61_N28
\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~124_combout\) # ((\inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~145_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~124_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|divider|StageOut[70]~145_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[4]~7_cout\,
	cout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\);

-- Location: LCCOMB_X49_Y61_N30
\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ = !\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[5]~9_cout\,
	combout => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\);

-- Location: LCCOMB_X49_Y61_N10
\inst|display0|Div1|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|op_1~0_combout\ = \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\ $ (VCC)
-- \inst|display0|Div1|auto_generated|divider|op_1~1\ = CARRY(\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => VCC,
	combout => \inst|display0|Div1|auto_generated|divider|op_1~0_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X49_Y61_N4
\inst|display0|Div1|auto_generated|divider|quotient[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ = (\inst|display0|Add0~18_combout\ & ((\inst|display0|Div1|auto_generated|divider|op_1~0_combout\))) # (!\inst|display0|Add0~18_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|op_1~0_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\);

-- Location: LCCOMB_X45_Y69_N6
\inst|display0|Equal21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Equal21~2_combout\ = (\en~input_o\ & (!\temp[0]~input_o\ & (\temp[1]~input_o\ $ (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\)))) # (!\en~input_o\ & 
-- (((!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp[1]~input_o\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datac => \en~input_o\,
	datad => \temp[0]~input_o\,
	combout => \inst|display0|Equal21~2_combout\);

-- Location: LCCOMB_X49_Y61_N12
\inst|display0|Div1|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|op_1~2_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & (!\inst|display0|Div1|auto_generated|divider|op_1~1\)) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\ & ((\inst|display0|Div1|auto_generated|divider|op_1~1\) # (GND)))
-- \inst|display0|Div1|auto_generated|divider|op_1~3\ = CARRY((!\inst|display0|Div1|auto_generated|divider|op_1~1\) # (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|op_1~1\,
	combout => \inst|display0|Div1|auto_generated|divider|op_1~2_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X49_Y61_N18
\inst|display0|Div1|auto_generated|divider|quotient[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ = (\inst|display0|Add0~18_combout\ & ((\inst|display0|Div1|auto_generated|divider|op_1~2_combout\))) # (!\inst|display0|Add0~18_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_11_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|op_1~2_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\);

-- Location: LCCOMB_X46_Y61_N10
\inst|display0|Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add2~1_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & (\inst|display0|Add0~0_combout\ & ((\inst|enable0|S[1]~5_combout\) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\)))) # 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & ((\inst|enable0|S[1]~5_combout\) # ((\inst|display0|Add0~0_combout\) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datab => \inst|enable0|S[1]~5_combout\,
	datac => \inst|display0|Add0~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	combout => \inst|display0|Add2~1_combout\);

-- Location: LCCOMB_X49_Y61_N14
\inst|display0|Div1|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|op_1~4_combout\ = (\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (\inst|display0|Div1|auto_generated|divider|op_1~3\ $ (GND))) # 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & (!\inst|display0|Div1|auto_generated|divider|op_1~3\ & VCC))
-- \inst|display0|Div1|auto_generated|divider|op_1~5\ = CARRY((\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\ & !\inst|display0|Div1|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => VCC,
	cin => \inst|display0|Div1|auto_generated|divider|op_1~3\,
	combout => \inst|display0|Div1|auto_generated|divider|op_1~4_combout\,
	cout => \inst|display0|Div1|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X46_Y61_N4
\inst|display0|Div1|auto_generated|divider|quotient[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ = (\inst|display0|Add0~18_combout\ & ((\inst|display0|Div1|auto_generated|divider|op_1~4_combout\))) # (!\inst|display0|Add0~18_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_10_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|op_1~4_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\);

-- Location: LCCOMB_X46_Y61_N14
\inst|display0|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add2~2_combout\ = \inst|display0|Add2~1_combout\ $ (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ $ (\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ $ (\inst|display0|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Add2~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Add0~2_combout\,
	combout => \inst|display0|Add2~2_combout\);

-- Location: LCCOMB_X46_Y61_N16
\inst|display0|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add2~0_combout\ = \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ $ (\inst|display0|Add0~0_combout\ $ (((\inst|enable0|S[1]~5_combout\) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datab => \inst|enable0|S[1]~5_combout\,
	datac => \inst|display0|Add0~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	combout => \inst|display0|Add2~0_combout\);

-- Location: LCCOMB_X52_Y69_N10
\inst|display0|Equal25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Equal25~0_combout\ = (\inst|display0|Equal21~2_combout\ & (\inst|display0|Add2~2_combout\ & !\inst|display0|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Equal21~2_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~0_combout\,
	combout => \inst|display0|Equal25~0_combout\);

-- Location: LCCOMB_X49_Y61_N6
\inst|display0|Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Add2~3_combout\ = \inst|enable0|S[1]~5_combout\ $ (((\inst|display0|Add0~18_combout\ & ((\inst|display0|Div1|auto_generated|divider|op_1~0_combout\))) # (!\inst|display0|Add0~18_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[1]~5_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|divider|add_sub_12_result_int[6]~10_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|op_1~0_combout\,
	combout => \inst|display0|Add2~3_combout\);

-- Location: LCCOMB_X52_Y69_N24
\inst|display0|comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~4_combout\ = (\inst|display0|Add2~0_combout\ & (((\inst|display0|Add2~2_combout\) # (!\inst|display0|Add2~3_combout\)))) # (!\inst|display0|Add2~0_combout\ & (!\inst|display0|Equal21~2_combout\ & (\inst|display0|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Equal21~2_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~4_combout\);

-- Location: LCCOMB_X52_Y69_N28
\inst|display0|ssTemp0[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(6) = (!\inst|display0|comb~4_combout\ & ((\inst|display0|Equal25~0_combout\) # (\inst|display0|ssTemp0\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Equal25~0_combout\,
	datab => \inst|display0|comb~4_combout\,
	datad => \inst|display0|ssTemp0\(6),
	combout => \inst|display0|ssTemp0\(6));

-- Location: LCCOMB_X53_Y69_N24
\inst|inib0|outssTemp0[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[6]~0_combout\ = (\inst|display0|ssTemp0\(6)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp0\(6),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[6]~0_combout\);

-- Location: LCCOMB_X52_Y69_N20
\inst|display0|comb~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~5_combout\ = (\inst|display0|Add2~2_combout\ & ((\inst|enable0|S[0]~4_combout\ & ((\inst|display0|Add2~3_combout\))) # (!\inst|enable0|S[0]~4_combout\ & ((\inst|display0|Add2~0_combout\) # (!\inst|display0|Add2~3_combout\))))) # 
-- (!\inst|display0|Add2~2_combout\ & (((\inst|display0|Add2~0_combout\ & !\inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~5_combout\);

-- Location: LCCOMB_X52_Y69_N6
\inst|display0|comb~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~6_combout\ = (\inst|display0|Add2~2_combout\ & ((\inst|enable0|S[0]~4_combout\ & ((!\inst|display0|Add2~3_combout\))) # (!\inst|enable0|S[0]~4_combout\ & (!\inst|display0|Add2~0_combout\ & \inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~6_combout\);

-- Location: LCCOMB_X52_Y69_N30
\inst|display0|ssTemp0[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(5) = (!\inst|display0|comb~5_combout\ & ((\inst|display0|ssTemp0\(5)) # (\inst|display0|comb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|comb~5_combout\,
	datac => \inst|display0|ssTemp0\(5),
	datad => \inst|display0|comb~6_combout\,
	combout => \inst|display0|ssTemp0\(5));

-- Location: LCCOMB_X53_Y69_N2
\inst|inib0|outssTemp0[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[5]~1_combout\ = (\inst|display0|ssTemp0\(5)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp0\(5),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[5]~1_combout\);

-- Location: LCCOMB_X52_Y69_N2
\inst|display0|comb~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~8_combout\ = (\inst|display0|Add2~0_combout\ & (\inst|display0|Add2~2_combout\ & (\inst|enable0|S[0]~4_combout\ $ (\inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~8_combout\);

-- Location: LCCOMB_X52_Y69_N8
\inst|display0|comb~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~7_combout\ = (\inst|display0|Add2~0_combout\ & (\inst|display0|Add2~3_combout\ $ (((!\inst|display0|Add2~2_combout\) # (!\inst|enable0|S[0]~4_combout\))))) # (!\inst|display0|Add2~0_combout\ & (((\inst|display0|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~7_combout\);

-- Location: LCCOMB_X53_Y69_N28
\inst|display0|ssTemp0[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(4) = (!\inst|display0|comb~7_combout\ & ((\inst|display0|comb~8_combout\) # (\inst|display0|ssTemp0\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~8_combout\,
	datac => \inst|display0|comb~7_combout\,
	datad => \inst|display0|ssTemp0\(4),
	combout => \inst|display0|ssTemp0\(4));

-- Location: LCCOMB_X53_Y69_N12
\inst|inib0|outssTemp0[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[4]~2_combout\ = (\inst|display0|ssTemp0\(4)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp0\(4),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[4]~2_combout\);

-- Location: LCCOMB_X52_Y69_N12
\inst|display0|comb~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~9_combout\ = (\inst|enable0|S[0]~4_combout\ & (\inst|display0|Add2~2_combout\ & ((\inst|display0|Add2~0_combout\) # (!\inst|display0|Add2~3_combout\)))) # (!\inst|enable0|S[0]~4_combout\ & ((\inst|display0|Add2~3_combout\ & 
-- ((\inst|display0|Add2~2_combout\))) # (!\inst|display0|Add2~3_combout\ & (\inst|display0|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~9_combout\);

-- Location: LCCOMB_X52_Y69_N14
\inst|display0|comb~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~10_combout\ = (\inst|display0|Add2~0_combout\ & (\inst|enable0|S[0]~4_combout\ & (!\inst|display0|Add2~2_combout\ & !\inst|display0|Add2~3_combout\))) # (!\inst|display0|Add2~0_combout\ & (\inst|display0|Add2~2_combout\ & 
-- (\inst|enable0|S[0]~4_combout\ $ (!\inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~10_combout\);

-- Location: LCCOMB_X53_Y69_N22
\inst|display0|ssTemp0[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(3) = (!\inst|display0|comb~9_combout\ & ((\inst|display0|ssTemp0\(3)) # (\inst|display0|comb~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~9_combout\,
	datac => \inst|display0|ssTemp0\(3),
	datad => \inst|display0|comb~10_combout\,
	combout => \inst|display0|ssTemp0\(3));

-- Location: LCCOMB_X53_Y69_N14
\inst|inib0|outssTemp0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[3]~3_combout\ = (\inst|display0|ssTemp0\(3)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|ssTemp0\(3),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[3]~3_combout\);

-- Location: LCCOMB_X52_Y69_N18
\inst|display0|comb~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~12_combout\ = (\inst|enable0|S[0]~4_combout\ & (\inst|display0|Add2~2_combout\ $ (((\inst|display0|Add2~0_combout\ & !\inst|display0|Add2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~12_combout\);

-- Location: LCCOMB_X52_Y69_N0
\inst|display0|comb~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~11_combout\ = (\inst|enable0|S[0]~4_combout\ & (\inst|display0|Add2~0_combout\ & (\inst|display0|Add2~2_combout\ & !\inst|display0|Add2~3_combout\))) # (!\inst|enable0|S[0]~4_combout\ & ((\inst|display0|Add2~2_combout\) # 
-- ((\inst|display0|Add2~0_combout\ & !\inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~11_combout\);

-- Location: LCCOMB_X53_Y69_N16
\inst|display0|ssTemp0[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(2) = (!\inst|display0|comb~11_combout\ & ((\inst|display0|comb~12_combout\) # (\inst|display0|ssTemp0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|comb~12_combout\,
	datac => \inst|display0|comb~11_combout\,
	datad => \inst|display0|ssTemp0\(2),
	combout => \inst|display0|ssTemp0\(2));

-- Location: LCCOMB_X53_Y69_N8
\inst|inib0|outssTemp0[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[2]~4_combout\ = (\inst|display0|ssTemp0\(2)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp0\(2),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[2]~4_combout\);

-- Location: LCCOMB_X52_Y69_N22
\inst|display0|comb~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~14_combout\ = (\inst|display0|Add2~2_combout\ & (\inst|display0|Add2~3_combout\ $ (((!\inst|enable0|S[0]~4_combout\ & !\inst|display0|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~14_combout\);

-- Location: LCCOMB_X52_Y69_N4
\inst|display0|comb~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~13_combout\ = (\inst|display0|Add2~0_combout\ & (((!\inst|display0|Add2~3_combout\)))) # (!\inst|display0|Add2~0_combout\ & (\inst|display0|Add2~2_combout\ & (\inst|enable0|S[0]~4_combout\ $ (\inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~13_combout\);

-- Location: LCCOMB_X53_Y69_N18
\inst|display0|ssTemp0[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(1) = (!\inst|display0|comb~13_combout\ & ((\inst|display0|comb~14_combout\) # (\inst|display0|ssTemp0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|comb~14_combout\,
	datac => \inst|display0|comb~13_combout\,
	datad => \inst|display0|ssTemp0\(1),
	combout => \inst|display0|ssTemp0\(1));

-- Location: LCCOMB_X53_Y69_N26
\inst|inib0|outssTemp0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[1]~5_combout\ = (\inst|display0|ssTemp0\(1)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp0\(1),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[1]~5_combout\);

-- Location: LCCOMB_X52_Y69_N26
\inst|display0|comb~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~16_combout\ = (\inst|display0|Add2~2_combout\ & ((\inst|enable0|S[0]~4_combout\ & (!\inst|display0|Add2~0_combout\ & \inst|display0|Add2~3_combout\)) # (!\inst|enable0|S[0]~4_combout\ & ((!\inst|display0|Add2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~16_combout\);

-- Location: LCCOMB_X52_Y69_N16
\inst|display0|comb~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~15_combout\ = (\inst|display0|Add2~2_combout\ & ((\inst|enable0|S[0]~4_combout\ & ((\inst|display0|Add2~0_combout\) # (!\inst|display0|Add2~3_combout\))) # (!\inst|enable0|S[0]~4_combout\ & ((\inst|display0|Add2~3_combout\))))) # 
-- (!\inst|display0|Add2~2_combout\ & (((\inst|display0|Add2~0_combout\ & !\inst|display0|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[0]~4_combout\,
	datab => \inst|display0|Add2~0_combout\,
	datac => \inst|display0|Add2~2_combout\,
	datad => \inst|display0|Add2~3_combout\,
	combout => \inst|display0|comb~15_combout\);

-- Location: LCCOMB_X53_Y69_N20
\inst|display0|ssTemp0[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp0\(0) = (!\inst|display0|comb~15_combout\ & ((\inst|display0|comb~16_combout\) # (\inst|display0|ssTemp0\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~16_combout\,
	datac => \inst|display0|comb~15_combout\,
	datad => \inst|display0|ssTemp0\(0),
	combout => \inst|display0|ssTemp0\(0));

-- Location: LCCOMB_X53_Y69_N4
\inst|inib0|outssTemp0[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp0[0]~6_combout\ = (\inst|display0|ssTemp0\(0)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp0\(0),
	datac => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp0[0]~6_combout\);

-- Location: LCCOMB_X49_Y61_N16
\inst|display0|Div1|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|op_1~6_combout\ = \inst|display0|Div1|auto_generated|divider|op_1~5\ $ (\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	cin => \inst|display0|Div1|auto_generated|divider|op_1~5\,
	combout => \inst|display0|Div1|auto_generated|divider|op_1~6_combout\);

-- Location: LCCOMB_X49_Y61_N8
\inst|display0|Div1|auto_generated|divider|quotient[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ = (\inst|display0|Add0~18_combout\ & ((\inst|display0|Div1|auto_generated|divider|op_1~6_combout\))) # (!\inst|display0|Add0~18_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|divider|add_sub_9_result_int[6]~10_combout\,
	datab => \inst|display0|Add0~18_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|op_1~6_combout\,
	combout => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\);

-- Location: LCCOMB_X53_Y69_N0
\inst|display0|comb~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~17_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & (((!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & 
-- (((\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & !\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\)) # (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~17_combout\);

-- Location: LCCOMB_X53_Y69_N10
\inst|display0|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|Equal15~0_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|Equal15~0_combout\);

-- Location: LCCOMB_X53_Y69_N30
\inst|display0|ssTemp1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(6) = (!\inst|display0|comb~17_combout\ & ((\inst|display0|ssTemp1\(6)) # (\inst|display0|Equal15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|comb~17_combout\,
	datac => \inst|display0|ssTemp1\(6),
	datad => \inst|display0|Equal15~0_combout\,
	combout => \inst|display0|ssTemp1\(6));

-- Location: LCCOMB_X53_Y69_N6
\inst|inib0|outssTemp1[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[6]~0_combout\ = (\inibicao~input_o\) # (\inst|display0|ssTemp1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datac => \inst|display0|ssTemp1\(6),
	combout => \inst|inib0|outssTemp1[6]~0_combout\);

-- Location: LCCOMB_X36_Y69_N20
\inst|display0|comb~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~28_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & ((\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & ((\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & 
-- ((!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\))) # (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~28_combout\);

-- Location: LCCOMB_X36_Y69_N14
\inst|display0|comb~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~29_combout\ = (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & ((\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\)) # 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~29_combout\);

-- Location: LCCOMB_X36_Y69_N16
\inst|display0|ssTemp1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(5) = (!\inst|display0|comb~28_combout\ & ((\inst|display0|comb~29_combout\) # (\inst|display0|ssTemp1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|comb~28_combout\,
	datac => \inst|display0|comb~29_combout\,
	datad => \inst|display0|ssTemp1\(5),
	combout => \inst|display0|ssTemp1\(5));

-- Location: LCCOMB_X35_Y69_N24
\inst|inib0|outssTemp1[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[5]~1_combout\ = (\inst|display0|ssTemp1\(5)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp1\(5),
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp1[5]~1_combout\);

-- Location: LCCOMB_X36_Y69_N10
\inst|display0|comb~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~19_combout\ = (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~19_combout\);

-- Location: LCCOMB_X36_Y69_N0
\inst|display0|comb~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~18_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (((!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & 
-- (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ $ (((\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~18_combout\);

-- Location: LCCOMB_X36_Y69_N2
\inst|display0|ssTemp1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(4) = (!\inst|display0|comb~18_combout\ & ((\inst|display0|comb~19_combout\) # (\inst|display0|ssTemp1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~19_combout\,
	datab => \inst|display0|comb~18_combout\,
	datad => \inst|display0|ssTemp1\(4),
	combout => \inst|display0|ssTemp1\(4));

-- Location: LCCOMB_X35_Y69_N10
\inst|inib0|outssTemp1[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[4]~2_combout\ = (\inst|display0|ssTemp1\(4)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|ssTemp1\(4),
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp1[4]~2_combout\);

-- Location: LCCOMB_X36_Y69_N12
\inst|display0|comb~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~20_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & ((!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & ((\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & 
-- ((!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\))) # (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~20_combout\);

-- Location: LCCOMB_X36_Y69_N6
\inst|display0|comb~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~21_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ $ 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~21_combout\);

-- Location: LCCOMB_X36_Y69_N28
\inst|display0|ssTemp1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(3) = (!\inst|display0|comb~20_combout\ & ((\inst|display0|comb~21_combout\) # (\inst|display0|ssTemp1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~20_combout\,
	datac => \inst|display0|comb~21_combout\,
	datad => \inst|display0|ssTemp1\(3),
	combout => \inst|display0|ssTemp1\(3));

-- Location: LCCOMB_X35_Y69_N20
\inst|inib0|outssTemp1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[3]~3_combout\ = (\inst|display0|ssTemp1\(3)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp1\(3),
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp1[3]~3_combout\);

-- Location: LCCOMB_X36_Y69_N24
\inst|display0|comb~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~22_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\))) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (((!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & 
-- !\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\)) # (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~22_combout\);

-- Location: LCCOMB_X36_Y69_N18
\inst|display0|comb~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~23_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ $ (((\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\) # 
-- (\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~23_combout\);

-- Location: LCCOMB_X35_Y69_N6
\inst|display0|ssTemp1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(2) = (!\inst|display0|comb~22_combout\ & ((\inst|display0|comb~23_combout\) # (\inst|display0|ssTemp1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|comb~22_combout\,
	datac => \inst|display0|comb~23_combout\,
	datad => \inst|display0|ssTemp1\(2),
	combout => \inst|display0|ssTemp1\(2));

-- Location: LCCOMB_X35_Y69_N22
\inst|inib0|outssTemp1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[2]~4_combout\ = (\inst|display0|ssTemp1\(2)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|ssTemp1\(2),
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp1[2]~4_combout\);

-- Location: LCCOMB_X36_Y69_N4
\inst|display0|comb~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~24_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ $ 
-- (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\ & (((!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~24_combout\);

-- Location: LCCOMB_X36_Y69_N22
\inst|display0|comb~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~25_combout\ = (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ $ (((!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~25_combout\);

-- Location: LCCOMB_X35_Y69_N16
\inst|display0|ssTemp1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(1) = (!\inst|display0|comb~24_combout\ & ((\inst|display0|comb~25_combout\) # (\inst|display0|ssTemp1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~24_combout\,
	datab => \inst|display0|comb~25_combout\,
	datad => \inst|display0|ssTemp1\(1),
	combout => \inst|display0|ssTemp1\(1));

-- Location: LCCOMB_X35_Y69_N8
\inst|inib0|outssTemp1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[1]~5_combout\ = (\inst|display0|ssTemp1\(1)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|display0|ssTemp1\(1),
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp1[1]~5_combout\);

-- Location: LCCOMB_X36_Y69_N26
\inst|display0|comb~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~27_combout\ = (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & ((\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & 
-- \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\)) # (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~27_combout\);

-- Location: LCCOMB_X36_Y69_N8
\inst|display0|comb~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|comb~26_combout\ = (\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & ((!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\) # 
-- (!\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\)))) # (!\inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\ & ((\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & 
-- ((!\inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\))) # (!\inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\ & (\inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|Div1|auto_generated|divider|quotient[0]~1_combout\,
	datab => \inst|display0|Div1|auto_generated|divider|quotient[1]~0_combout\,
	datac => \inst|display0|Div1|auto_generated|divider|quotient[2]~2_combout\,
	datad => \inst|display0|Div1|auto_generated|divider|quotient[3]~3_combout\,
	combout => \inst|display0|comb~26_combout\);

-- Location: LCCOMB_X36_Y69_N30
\inst|display0|ssTemp1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|display0|ssTemp1\(0) = (!\inst|display0|comb~26_combout\ & ((\inst|display0|comb~27_combout\) # (\inst|display0|ssTemp1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|display0|comb~27_combout\,
	datab => \inst|display0|comb~26_combout\,
	datac => \inst|display0|ssTemp1\(0),
	combout => \inst|display0|ssTemp1\(0));

-- Location: LCCOMB_X35_Y69_N2
\inst|inib0|outssTemp1[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp1[0]~6_combout\ = (\inst|display0|ssTemp1\(0)) # (\inibicao~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|display0|ssTemp1\(0),
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTemp1[0]~6_combout\);

-- Location: LCCOMB_X35_Y69_N4
\inst|inib0|outssTemp2[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp2[5]~0_combout\ = (\inibicao~input_o\) # ((!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|inib0|outssTemp2[5]~0_combout\);

-- Location: LCCOMB_X35_Y69_N30
\inst|inib0|outssTemp2[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp2[4]~1_combout\ = (\inibicao~input_o\) # (\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ $ (\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|inib0|outssTemp2[4]~1_combout\);

-- Location: LCCOMB_X35_Y69_N0
\inst|inib0|outssTemp2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp2[2]~2_combout\ = (\inibicao~input_o\) # ((!\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & !\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|inib0|outssTemp2[2]~2_combout\);

-- Location: LCCOMB_X35_Y69_N18
\inst|inib0|outssTemp2[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp2[1]~3_combout\ = (\inibicao~input_o\) # (!\inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|inib0|outssTemp2[1]~3_combout\);

-- Location: LCCOMB_X35_Y69_N12
\inst|inib0|outssTemp2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTemp2[0]~4_combout\ = (\inibicao~input_o\) # ((\inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datac => \inst|display0|Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst|display0|Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst|inib0|outssTemp2[0]~4_combout\);

-- Location: LCCOMB_X41_Y69_N4
\inst|stateConverter0|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|Equal3~1_combout\ = (!\inst|enable0|S[4]~2_combout\ & (!\inst|enable0|S[2]~3_combout\ & (!\inst|enable0|S[0]~4_combout\ & \inst|stateConverter0|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[4]~2_combout\,
	datab => \inst|enable0|S[2]~3_combout\,
	datac => \inst|enable0|S[0]~4_combout\,
	datad => \inst|stateConverter0|Equal3~0_combout\,
	combout => \inst|stateConverter0|Equal3~1_combout\);

-- Location: LCCOMB_X38_Y69_N20
\inst|stateConverter0|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|Equal3~2_combout\ = (\inst|stateConverter0|Equal3~1_combout\ & (\inst|enable0|S[3]~1_combout\ & (\inst|enable0|S[1]~5_combout\ & !\inst|enable0|S[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|Equal3~1_combout\,
	datab => \inst|enable0|S[3]~1_combout\,
	datac => \inst|enable0|S[1]~5_combout\,
	datad => \inst|enable0|S[5]~0_combout\,
	combout => \inst|stateConverter0|Equal3~2_combout\);

-- Location: LCCOMB_X41_Y69_N24
\inst|stateConverter0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|Equal0~0_combout\ = (\inst|enable0|S[4]~2_combout\ & (\inst|enable0|S[2]~3_combout\ & (!\inst|enable0|S[0]~4_combout\ & \inst|stateConverter0|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|enable0|S[4]~2_combout\,
	datab => \inst|enable0|S[2]~3_combout\,
	datac => \inst|enable0|S[0]~4_combout\,
	datad => \inst|stateConverter0|Equal3~0_combout\,
	combout => \inst|stateConverter0|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y69_N10
\inst|stateConverter0|transition[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|transition[0]~0_combout\ = (\inst|stateConverter0|Equal0~0_combout\ & (\inst|enable0|S[3]~1_combout\ & (\inst|enable0|S[1]~5_combout\ & !\inst|enable0|S[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|Equal0~0_combout\,
	datab => \inst|enable0|S[3]~1_combout\,
	datac => \inst|enable0|S[1]~5_combout\,
	datad => \inst|enable0|S[5]~0_combout\,
	combout => \inst|stateConverter0|transition[0]~0_combout\);

-- Location: LCCOMB_X38_Y69_N6
\inst|stateConverter0|transition[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|transition[0]~1_combout\ = (\inst|stateConverter0|Equal3~2_combout\) # (\inst|stateConverter0|transition[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|stateConverter0|Equal3~2_combout\,
	datad => \inst|stateConverter0|transition[0]~0_combout\,
	combout => \inst|stateConverter0|transition[0]~1_combout\);

-- Location: LCCOMB_X38_Y69_N16
\inst|stateConverter0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|Equal0~1_combout\ = (\inst|stateConverter0|Equal0~0_combout\ & (\inst|enable0|S[3]~1_combout\ & (!\inst|enable0|S[1]~5_combout\ & \inst|enable0|S[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|Equal0~0_combout\,
	datab => \inst|enable0|S[3]~1_combout\,
	datac => \inst|enable0|S[1]~5_combout\,
	datad => \inst|enable0|S[5]~0_combout\,
	combout => \inst|stateConverter0|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y69_N24
\inst|inib0|outssTransition[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[0]~0_combout\ = ((\inst|enable0|S[5]~0_combout\) # (\inst|enable0|S[3]~1_combout\ $ (\inst|enable0|S[1]~5_combout\))) # (!\inst|stateConverter0|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|Equal0~0_combout\,
	datab => \inst|enable0|S[3]~1_combout\,
	datac => \inst|enable0|S[1]~5_combout\,
	datad => \inst|enable0|S[5]~0_combout\,
	combout => \inst|inib0|outssTransition[0]~0_combout\);

-- Location: LCCOMB_X38_Y69_N18
\inst|stateConverter0|transition[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|stateConverter0|transition[1]~2_combout\ = (!\inst|stateConverter0|Equal3~2_combout\ & !\inst|inib0|outssTransition[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|stateConverter0|Equal3~2_combout\,
	datad => \inst|inib0|outssTransition[0]~0_combout\,
	combout => \inst|stateConverter0|transition[1]~2_combout\);

-- Location: LCCOMB_X38_Y69_N12
\inst|inib0|outssTransition[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[6]~1_combout\ = (\inibicao~input_o\) # ((!\inst|stateConverter0|transition[0]~1_combout\ & (\inst|stateConverter0|Equal0~1_combout\ & !\inst|stateConverter0|transition[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|transition[0]~1_combout\,
	datab => \inst|stateConverter0|Equal0~1_combout\,
	datac => \inst|stateConverter0|transition[1]~2_combout\,
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTransition[6]~1_combout\);

-- Location: LCCOMB_X38_Y69_N14
\inst|inib0|outssTransition[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[5]~2_combout\ = (!\inibicao~input_o\ & (((\inst|stateConverter0|Equal0~1_combout\) # (\inst|stateConverter0|transition[1]~2_combout\)) # (!\inst|stateConverter0|transition[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|transition[0]~1_combout\,
	datab => \inst|stateConverter0|Equal0~1_combout\,
	datac => \inst|stateConverter0|transition[1]~2_combout\,
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTransition[5]~2_combout\);

-- Location: LCCOMB_X38_Y69_N8
\inst|inib0|outssTransition[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[4]~3_combout\ = (\inibicao~input_o\) # ((\inst|stateConverter0|transition[0]~1_combout\ & (!\inst|stateConverter0|Equal0~1_combout\ & !\inst|stateConverter0|transition[1]~2_combout\)) # 
-- (!\inst|stateConverter0|transition[0]~1_combout\ & ((\inst|stateConverter0|transition[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|transition[0]~1_combout\,
	datab => \inst|stateConverter0|Equal0~1_combout\,
	datac => \inst|stateConverter0|transition[1]~2_combout\,
	datad => \inibicao~input_o\,
	combout => \inst|inib0|outssTransition[4]~3_combout\);

-- Location: LCCOMB_X38_Y69_N26
\inst|inib0|outssTransition[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[3]~4_combout\ = (\inibicao~input_o\) # (\inst|stateConverter0|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datad => \inst|stateConverter0|Equal0~1_combout\,
	combout => \inst|inib0|outssTransition[3]~4_combout\);

-- Location: LCCOMB_X38_Y69_N4
\inst|inib0|outssTransition[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[2]~5_combout\ = (\inibicao~input_o\) # ((\inst|stateConverter0|transition[0]~0_combout\ & (!\inst|stateConverter0|Equal3~2_combout\ & !\inst|inib0|outssTransition[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|transition[0]~0_combout\,
	datab => \inibicao~input_o\,
	datac => \inst|stateConverter0|Equal3~2_combout\,
	datad => \inst|inib0|outssTransition[0]~0_combout\,
	combout => \inst|inib0|outssTransition[2]~5_combout\);

-- Location: LCCOMB_X38_Y69_N22
\inst|inib0|outssTransition[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[1]~6_combout\ = (\inibicao~input_o\) # ((!\inst|stateConverter0|Equal3~2_combout\ & ((\inst|stateConverter0|Equal0~1_combout\) # (!\inst|inib0|outssTransition[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|stateConverter0|Equal3~2_combout\,
	datab => \inibicao~input_o\,
	datac => \inst|stateConverter0|Equal0~1_combout\,
	datad => \inst|inib0|outssTransition[0]~0_combout\,
	combout => \inst|inib0|outssTransition[1]~6_combout\);

-- Location: LCCOMB_X38_Y69_N0
\inst|inib0|outssTransition[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inib0|outssTransition[0]~7_combout\ = (\inibicao~input_o\) # ((!\inst|stateConverter0|Equal3~2_combout\ & \inst|inib0|outssTransition[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inibicao~input_o\,
	datac => \inst|stateConverter0|Equal3~2_combout\,
	datad => \inst|inib0|outssTransition[0]~0_combout\,
	combout => \inst|inib0|outssTransition[0]~7_combout\);

ww_outssState(6) <= \outssState[6]~output_o\;

ww_outssState(5) <= \outssState[5]~output_o\;

ww_outssState(4) <= \outssState[4]~output_o\;

ww_outssState(3) <= \outssState[3]~output_o\;

ww_outssState(2) <= \outssState[2]~output_o\;

ww_outssState(1) <= \outssState[1]~output_o\;

ww_outssState(0) <= \outssState[0]~output_o\;

ww_outssTemp0(6) <= \outssTemp0[6]~output_o\;

ww_outssTemp0(5) <= \outssTemp0[5]~output_o\;

ww_outssTemp0(4) <= \outssTemp0[4]~output_o\;

ww_outssTemp0(3) <= \outssTemp0[3]~output_o\;

ww_outssTemp0(2) <= \outssTemp0[2]~output_o\;

ww_outssTemp0(1) <= \outssTemp0[1]~output_o\;

ww_outssTemp0(0) <= \outssTemp0[0]~output_o\;

ww_outssTemp1(6) <= \outssTemp1[6]~output_o\;

ww_outssTemp1(5) <= \outssTemp1[5]~output_o\;

ww_outssTemp1(4) <= \outssTemp1[4]~output_o\;

ww_outssTemp1(3) <= \outssTemp1[3]~output_o\;

ww_outssTemp1(2) <= \outssTemp1[2]~output_o\;

ww_outssTemp1(1) <= \outssTemp1[1]~output_o\;

ww_outssTemp1(0) <= \outssTemp1[0]~output_o\;

ww_outssTemp2(6) <= \outssTemp2[6]~output_o\;

ww_outssTemp2(5) <= \outssTemp2[5]~output_o\;

ww_outssTemp2(4) <= \outssTemp2[4]~output_o\;

ww_outssTemp2(3) <= \outssTemp2[3]~output_o\;

ww_outssTemp2(2) <= \outssTemp2[2]~output_o\;

ww_outssTemp2(1) <= \outssTemp2[1]~output_o\;

ww_outssTemp2(0) <= \outssTemp2[0]~output_o\;

ww_outssTransition(6) <= \outssTransition[6]~output_o\;

ww_outssTransition(5) <= \outssTransition[5]~output_o\;

ww_outssTransition(4) <= \outssTransition[4]~output_o\;

ww_outssTransition(3) <= \outssTransition[3]~output_o\;

ww_outssTransition(2) <= \outssTransition[2]~output_o\;

ww_outssTransition(1) <= \outssTransition[1]~output_o\;

ww_outssTransition(0) <= \outssTransition[0]~output_o\;
END structure;


