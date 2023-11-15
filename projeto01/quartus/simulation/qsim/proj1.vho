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

-- DATE "11/15/2023 18:35:58"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	testEntrada IS
    PORT (
	A : OUT std_logic_vector(6 DOWNTO 0);
	clk : IN std_logic;
	Enable : IN std_logic;
	strobe : IN std_logic;
	col : IN std_logic_vector(2 DOWNTO 0);
	B : OUT std_logic_vector(6 DOWNTO 0);
	Q1 : OUT std_logic_vector(3 DOWNTO 0);
	Q2 : OUT std_logic_vector(3 DOWNTO 0);
	Q3 : OUT std_logic_vector(3 DOWNTO 0);
	Q4 : OUT std_logic_vector(3 DOWNTO 0);
	Q5 : OUT std_logic_vector(3 DOWNTO 0);
	Q6 : OUT std_logic_vector(3 DOWNTO 0);
	row : OUT std_logic_vector(3 DOWNTO 0)
	);
END testEntrada;

-- Design Ports Information
-- A[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_N25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Enable	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- strobe	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[2]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[1]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1[0]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[3]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[2]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[1]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[3]	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[2]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[3]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[1]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q4[0]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[2]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[1]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q5[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q6[0]	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[3]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[2]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row[0]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[2]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[1]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col[0]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testEntrada IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_Enable : std_logic;
SIGNAL ww_strobe : std_logic;
SIGNAL ww_col : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Q1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q3 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q4 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q5 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q6 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_row : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cd|tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Enable~input_o\ : std_logic;
SIGNAL \strobe~input_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \Q1[3]~output_o\ : std_logic;
SIGNAL \Q1[2]~output_o\ : std_logic;
SIGNAL \Q1[1]~output_o\ : std_logic;
SIGNAL \Q1[0]~output_o\ : std_logic;
SIGNAL \Q2[3]~output_o\ : std_logic;
SIGNAL \Q2[2]~output_o\ : std_logic;
SIGNAL \Q2[1]~output_o\ : std_logic;
SIGNAL \Q2[0]~output_o\ : std_logic;
SIGNAL \Q3[3]~output_o\ : std_logic;
SIGNAL \Q3[2]~output_o\ : std_logic;
SIGNAL \Q3[1]~output_o\ : std_logic;
SIGNAL \Q3[0]~output_o\ : std_logic;
SIGNAL \Q4[3]~output_o\ : std_logic;
SIGNAL \Q4[2]~output_o\ : std_logic;
SIGNAL \Q4[1]~output_o\ : std_logic;
SIGNAL \Q4[0]~output_o\ : std_logic;
SIGNAL \Q5[3]~output_o\ : std_logic;
SIGNAL \Q5[2]~output_o\ : std_logic;
SIGNAL \Q5[1]~output_o\ : std_logic;
SIGNAL \Q5[0]~output_o\ : std_logic;
SIGNAL \Q6[3]~output_o\ : std_logic;
SIGNAL \Q6[2]~output_o\ : std_logic;
SIGNAL \Q6[1]~output_o\ : std_logic;
SIGNAL \Q6[0]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \row[3]~output_o\ : std_logic;
SIGNAL \row[2]~output_o\ : std_logic;
SIGNAL \row[1]~output_o\ : std_logic;
SIGNAL \row[0]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|cd|Add0~15\ : std_logic;
SIGNAL \inst|cd|Add0~16_combout\ : std_logic;
SIGNAL \inst|cd|Add0~17\ : std_logic;
SIGNAL \inst|cd|Add0~18_combout\ : std_logic;
SIGNAL \inst|cd|Add0~19\ : std_logic;
SIGNAL \inst|cd|Add0~20_combout\ : std_logic;
SIGNAL \inst|cd|Add0~21\ : std_logic;
SIGNAL \inst|cd|Add0~22_combout\ : std_logic;
SIGNAL \inst|cd|Add0~23\ : std_logic;
SIGNAL \inst|cd|Add0~24_combout\ : std_logic;
SIGNAL \inst|cd|Add0~25\ : std_logic;
SIGNAL \inst|cd|Add0~26_combout\ : std_logic;
SIGNAL \inst|cd|Add0~27\ : std_logic;
SIGNAL \inst|cd|Add0~28_combout\ : std_logic;
SIGNAL \inst|cd|Add0~29\ : std_logic;
SIGNAL \inst|cd|Add0~30_combout\ : std_logic;
SIGNAL \inst|cd|Add0~31\ : std_logic;
SIGNAL \inst|cd|Add0~32_combout\ : std_logic;
SIGNAL \inst|cd|Add0~33\ : std_logic;
SIGNAL \inst|cd|Add0~34_combout\ : std_logic;
SIGNAL \inst|cd|Add0~35\ : std_logic;
SIGNAL \inst|cd|Add0~36_combout\ : std_logic;
SIGNAL \inst|cd|Add0~37\ : std_logic;
SIGNAL \inst|cd|Add0~38_combout\ : std_logic;
SIGNAL \inst|cd|Add0~39\ : std_logic;
SIGNAL \inst|cd|Add0~40_combout\ : std_logic;
SIGNAL \inst|cd|Add0~41\ : std_logic;
SIGNAL \inst|cd|Add0~42_combout\ : std_logic;
SIGNAL \inst|cd|Add0~43\ : std_logic;
SIGNAL \inst|cd|Add0~44_combout\ : std_logic;
SIGNAL \inst|cd|Add0~45\ : std_logic;
SIGNAL \inst|cd|Add0~46_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~6_combout\ : std_logic;
SIGNAL \inst|cd|Add0~47\ : std_logic;
SIGNAL \inst|cd|Add0~48_combout\ : std_logic;
SIGNAL \inst|cd|Add0~49\ : std_logic;
SIGNAL \inst|cd|Add0~50_combout\ : std_logic;
SIGNAL \inst|cd|Add0~51\ : std_logic;
SIGNAL \inst|cd|Add0~52_combout\ : std_logic;
SIGNAL \inst|cd|Add0~53\ : std_logic;
SIGNAL \inst|cd|Add0~54_combout\ : std_logic;
SIGNAL \inst|cd|Add0~55\ : std_logic;
SIGNAL \inst|cd|Add0~56_combout\ : std_logic;
SIGNAL \inst|cd|Add0~57\ : std_logic;
SIGNAL \inst|cd|Add0~58_combout\ : std_logic;
SIGNAL \inst|cd|Add0~59\ : std_logic;
SIGNAL \inst|cd|Add0~60_combout\ : std_logic;
SIGNAL \inst|cd|Add0~61\ : std_logic;
SIGNAL \inst|cd|Add0~62_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~8_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~7_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~5_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~9_combout\ : std_logic;
SIGNAL \inst|cd|Add0~0_combout\ : std_logic;
SIGNAL \inst|cd|count[0]~1_combout\ : std_logic;
SIGNAL \inst|cd|Add0~1\ : std_logic;
SIGNAL \inst|cd|Add0~2_combout\ : std_logic;
SIGNAL \inst|cd|count~0_combout\ : std_logic;
SIGNAL \inst|cd|Add0~3\ : std_logic;
SIGNAL \inst|cd|Add0~4_combout\ : std_logic;
SIGNAL \inst|cd|Add0~5\ : std_logic;
SIGNAL \inst|cd|Add0~6_combout\ : std_logic;
SIGNAL \inst|cd|Add0~7\ : std_logic;
SIGNAL \inst|cd|Add0~8_combout\ : std_logic;
SIGNAL \inst|cd|Add0~9\ : std_logic;
SIGNAL \inst|cd|Add0~10_combout\ : std_logic;
SIGNAL \inst|cd|Add0~11\ : std_logic;
SIGNAL \inst|cd|Add0~12_combout\ : std_logic;
SIGNAL \inst|cd|Add0~13\ : std_logic;
SIGNAL \inst|cd|Add0~14_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~1_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~3_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~2_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~0_combout\ : std_logic;
SIGNAL \inst|cd|Equal0~4_combout\ : std_logic;
SIGNAL \inst|cd|tmp~0_combout\ : std_logic;
SIGNAL \inst|cd|tmp~feeder_combout\ : std_logic;
SIGNAL \inst|cd|tmp~q\ : std_logic;
SIGNAL \inst|cd|tmp~clkctrl_outclk\ : std_logic;
SIGNAL \inst|ke|RC|Mux1~0_combout\ : std_logic;
SIGNAL \col[0]~input_o\ : std_logic;
SIGNAL \col[1]~input_o\ : std_logic;
SIGNAL \col[2]~input_o\ : std_logic;
SIGNAL \inst|ke|Freeze~0_combout\ : std_logic;
SIGNAL \inst|ke|RC|Mux2~0_combout\ : std_logic;
SIGNAL \inst|ke|RC|Mux3~0_combout\ : std_logic;
SIGNAL \inst|ke|RC|Mux0~0_combout\ : std_logic;
SIGNAL \inst|ke|RC|ring\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|cd|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_clk <= clk;
ww_Enable <= Enable;
ww_strobe <= strobe;
ww_col <= col;
B <= ww_B;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
Q4 <= ww_Q4;
Q5 <= ww_Q5;
Q6 <= ww_Q6;
row <= ww_row;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|cd|tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|cd|tmp~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y73_N23
\A[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\Q1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q1[3]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\Q1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q1[2]~output_o\);

-- Location: IOOBUF_X115_Y4_N16
\Q1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q1[1]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\Q1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q1[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\Q2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q2[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\Q2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q2[2]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\Q2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q2[1]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\Q2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q2[0]~output_o\);

-- Location: IOOBUF_X98_Y73_N23
\Q3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q3[3]~output_o\);

-- Location: IOOBUF_X102_Y0_N16
\Q3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q3[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\Q3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q3[1]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Q3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q3[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Q4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q4[3]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\Q4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q4[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\Q4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q4[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\Q4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q4[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Q5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q5[3]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\Q5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q5[2]~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\Q5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q5[1]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\Q5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q5[0]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\Q6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q6[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\Q6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q6[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\Q6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q6[1]~output_o\);

-- Location: IOOBUF_X105_Y73_N2
\Q6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Q6[0]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\A[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\A[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X115_Y45_N23
\A[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\A[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\A[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\A[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X115_Y14_N2
\B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X109_Y73_N9
\B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X0_Y60_N16
\B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N23
\B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X0_Y68_N2
\row[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ke|RC|ring\(3),
	devoe => ww_devoe,
	o => \row[3]~output_o\);

-- Location: IOOBUF_X0_Y68_N9
\row[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ke|RC|ring\(2),
	devoe => ww_devoe,
	o => \row[2]~output_o\);

-- Location: IOOBUF_X0_Y69_N9
\row[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ke|RC|ring\(1),
	devoe => ww_devoe,
	o => \row[1]~output_o\);

-- Location: IOOBUF_X0_Y68_N16
\row[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ke|RC|ring\(0),
	devoe => ww_devoe,
	o => \row[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X55_Y72_N14
\inst|cd|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~14_combout\ = (\inst|cd|count\(7) & (!\inst|cd|Add0~13\)) # (!\inst|cd|count\(7) & ((\inst|cd|Add0~13\) # (GND)))
-- \inst|cd|Add0~15\ = CARRY((!\inst|cd|Add0~13\) # (!\inst|cd|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(7),
	datad => VCC,
	cin => \inst|cd|Add0~13\,
	combout => \inst|cd|Add0~14_combout\,
	cout => \inst|cd|Add0~15\);

-- Location: LCCOMB_X55_Y72_N16
\inst|cd|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~16_combout\ = (\inst|cd|count\(8) & (\inst|cd|Add0~15\ $ (GND))) # (!\inst|cd|count\(8) & (!\inst|cd|Add0~15\ & VCC))
-- \inst|cd|Add0~17\ = CARRY((\inst|cd|count\(8) & !\inst|cd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(8),
	datad => VCC,
	cin => \inst|cd|Add0~15\,
	combout => \inst|cd|Add0~16_combout\,
	cout => \inst|cd|Add0~17\);

-- Location: FF_X55_Y72_N17
\inst|cd|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(8));

-- Location: LCCOMB_X55_Y72_N18
\inst|cd|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~18_combout\ = (\inst|cd|count\(9) & (!\inst|cd|Add0~17\)) # (!\inst|cd|count\(9) & ((\inst|cd|Add0~17\) # (GND)))
-- \inst|cd|Add0~19\ = CARRY((!\inst|cd|Add0~17\) # (!\inst|cd|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(9),
	datad => VCC,
	cin => \inst|cd|Add0~17\,
	combout => \inst|cd|Add0~18_combout\,
	cout => \inst|cd|Add0~19\);

-- Location: FF_X55_Y72_N19
\inst|cd|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(9));

-- Location: LCCOMB_X55_Y72_N20
\inst|cd|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~20_combout\ = (\inst|cd|count\(10) & (\inst|cd|Add0~19\ $ (GND))) # (!\inst|cd|count\(10) & (!\inst|cd|Add0~19\ & VCC))
-- \inst|cd|Add0~21\ = CARRY((\inst|cd|count\(10) & !\inst|cd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(10),
	datad => VCC,
	cin => \inst|cd|Add0~19\,
	combout => \inst|cd|Add0~20_combout\,
	cout => \inst|cd|Add0~21\);

-- Location: FF_X55_Y72_N21
\inst|cd|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(10));

-- Location: LCCOMB_X55_Y72_N22
\inst|cd|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~22_combout\ = (\inst|cd|count\(11) & (!\inst|cd|Add0~21\)) # (!\inst|cd|count\(11) & ((\inst|cd|Add0~21\) # (GND)))
-- \inst|cd|Add0~23\ = CARRY((!\inst|cd|Add0~21\) # (!\inst|cd|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(11),
	datad => VCC,
	cin => \inst|cd|Add0~21\,
	combout => \inst|cd|Add0~22_combout\,
	cout => \inst|cd|Add0~23\);

-- Location: FF_X55_Y72_N23
\inst|cd|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(11));

-- Location: LCCOMB_X55_Y72_N24
\inst|cd|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~24_combout\ = (\inst|cd|count\(12) & (\inst|cd|Add0~23\ $ (GND))) # (!\inst|cd|count\(12) & (!\inst|cd|Add0~23\ & VCC))
-- \inst|cd|Add0~25\ = CARRY((\inst|cd|count\(12) & !\inst|cd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(12),
	datad => VCC,
	cin => \inst|cd|Add0~23\,
	combout => \inst|cd|Add0~24_combout\,
	cout => \inst|cd|Add0~25\);

-- Location: FF_X55_Y72_N25
\inst|cd|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(12));

-- Location: LCCOMB_X55_Y72_N26
\inst|cd|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~26_combout\ = (\inst|cd|count\(13) & (!\inst|cd|Add0~25\)) # (!\inst|cd|count\(13) & ((\inst|cd|Add0~25\) # (GND)))
-- \inst|cd|Add0~27\ = CARRY((!\inst|cd|Add0~25\) # (!\inst|cd|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(13),
	datad => VCC,
	cin => \inst|cd|Add0~25\,
	combout => \inst|cd|Add0~26_combout\,
	cout => \inst|cd|Add0~27\);

-- Location: FF_X55_Y72_N27
\inst|cd|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(13));

-- Location: LCCOMB_X55_Y72_N28
\inst|cd|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~28_combout\ = (\inst|cd|count\(14) & (\inst|cd|Add0~27\ $ (GND))) # (!\inst|cd|count\(14) & (!\inst|cd|Add0~27\ & VCC))
-- \inst|cd|Add0~29\ = CARRY((\inst|cd|count\(14) & !\inst|cd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(14),
	datad => VCC,
	cin => \inst|cd|Add0~27\,
	combout => \inst|cd|Add0~28_combout\,
	cout => \inst|cd|Add0~29\);

-- Location: FF_X55_Y72_N29
\inst|cd|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(14));

-- Location: LCCOMB_X55_Y72_N30
\inst|cd|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~30_combout\ = (\inst|cd|count\(15) & (!\inst|cd|Add0~29\)) # (!\inst|cd|count\(15) & ((\inst|cd|Add0~29\) # (GND)))
-- \inst|cd|Add0~31\ = CARRY((!\inst|cd|Add0~29\) # (!\inst|cd|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(15),
	datad => VCC,
	cin => \inst|cd|Add0~29\,
	combout => \inst|cd|Add0~30_combout\,
	cout => \inst|cd|Add0~31\);

-- Location: FF_X55_Y72_N31
\inst|cd|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(15));

-- Location: LCCOMB_X55_Y71_N0
\inst|cd|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~32_combout\ = (\inst|cd|count\(16) & (\inst|cd|Add0~31\ $ (GND))) # (!\inst|cd|count\(16) & (!\inst|cd|Add0~31\ & VCC))
-- \inst|cd|Add0~33\ = CARRY((\inst|cd|count\(16) & !\inst|cd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(16),
	datad => VCC,
	cin => \inst|cd|Add0~31\,
	combout => \inst|cd|Add0~32_combout\,
	cout => \inst|cd|Add0~33\);

-- Location: FF_X55_Y71_N1
\inst|cd|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(16));

-- Location: LCCOMB_X55_Y71_N2
\inst|cd|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~34_combout\ = (\inst|cd|count\(17) & (!\inst|cd|Add0~33\)) # (!\inst|cd|count\(17) & ((\inst|cd|Add0~33\) # (GND)))
-- \inst|cd|Add0~35\ = CARRY((!\inst|cd|Add0~33\) # (!\inst|cd|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(17),
	datad => VCC,
	cin => \inst|cd|Add0~33\,
	combout => \inst|cd|Add0~34_combout\,
	cout => \inst|cd|Add0~35\);

-- Location: FF_X55_Y71_N3
\inst|cd|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(17));

-- Location: LCCOMB_X55_Y71_N4
\inst|cd|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~36_combout\ = (\inst|cd|count\(18) & (\inst|cd|Add0~35\ $ (GND))) # (!\inst|cd|count\(18) & (!\inst|cd|Add0~35\ & VCC))
-- \inst|cd|Add0~37\ = CARRY((\inst|cd|count\(18) & !\inst|cd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(18),
	datad => VCC,
	cin => \inst|cd|Add0~35\,
	combout => \inst|cd|Add0~36_combout\,
	cout => \inst|cd|Add0~37\);

-- Location: FF_X55_Y71_N5
\inst|cd|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(18));

-- Location: LCCOMB_X55_Y71_N6
\inst|cd|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~38_combout\ = (\inst|cd|count\(19) & (!\inst|cd|Add0~37\)) # (!\inst|cd|count\(19) & ((\inst|cd|Add0~37\) # (GND)))
-- \inst|cd|Add0~39\ = CARRY((!\inst|cd|Add0~37\) # (!\inst|cd|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(19),
	datad => VCC,
	cin => \inst|cd|Add0~37\,
	combout => \inst|cd|Add0~38_combout\,
	cout => \inst|cd|Add0~39\);

-- Location: FF_X55_Y71_N7
\inst|cd|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(19));

-- Location: LCCOMB_X55_Y71_N8
\inst|cd|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~40_combout\ = (\inst|cd|count\(20) & (\inst|cd|Add0~39\ $ (GND))) # (!\inst|cd|count\(20) & (!\inst|cd|Add0~39\ & VCC))
-- \inst|cd|Add0~41\ = CARRY((\inst|cd|count\(20) & !\inst|cd|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(20),
	datad => VCC,
	cin => \inst|cd|Add0~39\,
	combout => \inst|cd|Add0~40_combout\,
	cout => \inst|cd|Add0~41\);

-- Location: FF_X55_Y71_N9
\inst|cd|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(20));

-- Location: LCCOMB_X55_Y71_N10
\inst|cd|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~42_combout\ = (\inst|cd|count\(21) & (!\inst|cd|Add0~41\)) # (!\inst|cd|count\(21) & ((\inst|cd|Add0~41\) # (GND)))
-- \inst|cd|Add0~43\ = CARRY((!\inst|cd|Add0~41\) # (!\inst|cd|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(21),
	datad => VCC,
	cin => \inst|cd|Add0~41\,
	combout => \inst|cd|Add0~42_combout\,
	cout => \inst|cd|Add0~43\);

-- Location: FF_X55_Y71_N11
\inst|cd|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(21));

-- Location: LCCOMB_X55_Y71_N12
\inst|cd|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~44_combout\ = (\inst|cd|count\(22) & (\inst|cd|Add0~43\ $ (GND))) # (!\inst|cd|count\(22) & (!\inst|cd|Add0~43\ & VCC))
-- \inst|cd|Add0~45\ = CARRY((\inst|cd|count\(22) & !\inst|cd|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(22),
	datad => VCC,
	cin => \inst|cd|Add0~43\,
	combout => \inst|cd|Add0~44_combout\,
	cout => \inst|cd|Add0~45\);

-- Location: FF_X55_Y71_N13
\inst|cd|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(22));

-- Location: LCCOMB_X55_Y71_N14
\inst|cd|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~46_combout\ = (\inst|cd|count\(23) & (!\inst|cd|Add0~45\)) # (!\inst|cd|count\(23) & ((\inst|cd|Add0~45\) # (GND)))
-- \inst|cd|Add0~47\ = CARRY((!\inst|cd|Add0~45\) # (!\inst|cd|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(23),
	datad => VCC,
	cin => \inst|cd|Add0~45\,
	combout => \inst|cd|Add0~46_combout\,
	cout => \inst|cd|Add0~47\);

-- Location: FF_X55_Y71_N15
\inst|cd|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(23));

-- Location: LCCOMB_X56_Y71_N30
\inst|cd|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~6_combout\ = (!\inst|cd|count\(23) & (!\inst|cd|count\(21) & (!\inst|cd|count\(22) & !\inst|cd|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(23),
	datab => \inst|cd|count\(21),
	datac => \inst|cd|count\(22),
	datad => \inst|cd|count\(20),
	combout => \inst|cd|Equal0~6_combout\);

-- Location: LCCOMB_X55_Y71_N16
\inst|cd|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~48_combout\ = (\inst|cd|count\(24) & (\inst|cd|Add0~47\ $ (GND))) # (!\inst|cd|count\(24) & (!\inst|cd|Add0~47\ & VCC))
-- \inst|cd|Add0~49\ = CARRY((\inst|cd|count\(24) & !\inst|cd|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(24),
	datad => VCC,
	cin => \inst|cd|Add0~47\,
	combout => \inst|cd|Add0~48_combout\,
	cout => \inst|cd|Add0~49\);

-- Location: FF_X55_Y71_N17
\inst|cd|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(24));

-- Location: LCCOMB_X55_Y71_N18
\inst|cd|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~50_combout\ = (\inst|cd|count\(25) & (!\inst|cd|Add0~49\)) # (!\inst|cd|count\(25) & ((\inst|cd|Add0~49\) # (GND)))
-- \inst|cd|Add0~51\ = CARRY((!\inst|cd|Add0~49\) # (!\inst|cd|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(25),
	datad => VCC,
	cin => \inst|cd|Add0~49\,
	combout => \inst|cd|Add0~50_combout\,
	cout => \inst|cd|Add0~51\);

-- Location: FF_X55_Y71_N19
\inst|cd|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(25));

-- Location: LCCOMB_X55_Y71_N20
\inst|cd|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~52_combout\ = (\inst|cd|count\(26) & (\inst|cd|Add0~51\ $ (GND))) # (!\inst|cd|count\(26) & (!\inst|cd|Add0~51\ & VCC))
-- \inst|cd|Add0~53\ = CARRY((\inst|cd|count\(26) & !\inst|cd|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(26),
	datad => VCC,
	cin => \inst|cd|Add0~51\,
	combout => \inst|cd|Add0~52_combout\,
	cout => \inst|cd|Add0~53\);

-- Location: FF_X55_Y71_N21
\inst|cd|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(26));

-- Location: LCCOMB_X55_Y71_N22
\inst|cd|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~54_combout\ = (\inst|cd|count\(27) & (!\inst|cd|Add0~53\)) # (!\inst|cd|count\(27) & ((\inst|cd|Add0~53\) # (GND)))
-- \inst|cd|Add0~55\ = CARRY((!\inst|cd|Add0~53\) # (!\inst|cd|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(27),
	datad => VCC,
	cin => \inst|cd|Add0~53\,
	combout => \inst|cd|Add0~54_combout\,
	cout => \inst|cd|Add0~55\);

-- Location: FF_X55_Y71_N23
\inst|cd|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(27));

-- Location: LCCOMB_X55_Y71_N24
\inst|cd|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~56_combout\ = (\inst|cd|count\(28) & (\inst|cd|Add0~55\ $ (GND))) # (!\inst|cd|count\(28) & (!\inst|cd|Add0~55\ & VCC))
-- \inst|cd|Add0~57\ = CARRY((\inst|cd|count\(28) & !\inst|cd|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(28),
	datad => VCC,
	cin => \inst|cd|Add0~55\,
	combout => \inst|cd|Add0~56_combout\,
	cout => \inst|cd|Add0~57\);

-- Location: FF_X55_Y71_N25
\inst|cd|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(28));

-- Location: LCCOMB_X55_Y71_N26
\inst|cd|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~58_combout\ = (\inst|cd|count\(29) & (!\inst|cd|Add0~57\)) # (!\inst|cd|count\(29) & ((\inst|cd|Add0~57\) # (GND)))
-- \inst|cd|Add0~59\ = CARRY((!\inst|cd|Add0~57\) # (!\inst|cd|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(29),
	datad => VCC,
	cin => \inst|cd|Add0~57\,
	combout => \inst|cd|Add0~58_combout\,
	cout => \inst|cd|Add0~59\);

-- Location: FF_X55_Y71_N27
\inst|cd|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(29));

-- Location: LCCOMB_X55_Y71_N28
\inst|cd|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~60_combout\ = (\inst|cd|count\(30) & (\inst|cd|Add0~59\ $ (GND))) # (!\inst|cd|count\(30) & (!\inst|cd|Add0~59\ & VCC))
-- \inst|cd|Add0~61\ = CARRY((\inst|cd|count\(30) & !\inst|cd|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(30),
	datad => VCC,
	cin => \inst|cd|Add0~59\,
	combout => \inst|cd|Add0~60_combout\,
	cout => \inst|cd|Add0~61\);

-- Location: FF_X55_Y71_N29
\inst|cd|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(30));

-- Location: LCCOMB_X55_Y71_N30
\inst|cd|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~62_combout\ = \inst|cd|count\(31) $ (\inst|cd|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(31),
	cin => \inst|cd|Add0~61\,
	combout => \inst|cd|Add0~62_combout\);

-- Location: FF_X55_Y71_N31
\inst|cd|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(31));

-- Location: LCCOMB_X56_Y71_N14
\inst|cd|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~8_combout\ = (!\inst|cd|count\(29) & (!\inst|cd|count\(28) & (!\inst|cd|count\(30) & !\inst|cd|count\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(29),
	datab => \inst|cd|count\(28),
	datac => \inst|cd|count\(30),
	datad => \inst|cd|count\(31),
	combout => \inst|cd|Equal0~8_combout\);

-- Location: LCCOMB_X56_Y71_N8
\inst|cd|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~7_combout\ = (!\inst|cd|count\(24) & (!\inst|cd|count\(27) & (!\inst|cd|count\(25) & !\inst|cd|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(24),
	datab => \inst|cd|count\(27),
	datac => \inst|cd|count\(25),
	datad => \inst|cd|count\(26),
	combout => \inst|cd|Equal0~7_combout\);

-- Location: LCCOMB_X56_Y71_N28
\inst|cd|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~5_combout\ = (!\inst|cd|count\(16) & (!\inst|cd|count\(19) & (!\inst|cd|count\(18) & !\inst|cd|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(16),
	datab => \inst|cd|count\(19),
	datac => \inst|cd|count\(18),
	datad => \inst|cd|count\(17),
	combout => \inst|cd|Equal0~5_combout\);

-- Location: LCCOMB_X56_Y71_N0
\inst|cd|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~9_combout\ = (\inst|cd|Equal0~6_combout\ & (\inst|cd|Equal0~8_combout\ & (\inst|cd|Equal0~7_combout\ & \inst|cd|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|Equal0~6_combout\,
	datab => \inst|cd|Equal0~8_combout\,
	datac => \inst|cd|Equal0~7_combout\,
	datad => \inst|cd|Equal0~5_combout\,
	combout => \inst|cd|Equal0~9_combout\);

-- Location: LCCOMB_X55_Y72_N0
\inst|cd|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~0_combout\ = \inst|cd|count\(0) $ (GND)
-- \inst|cd|Add0~1\ = CARRY(!\inst|cd|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(0),
	datad => VCC,
	combout => \inst|cd|Add0~0_combout\,
	cout => \inst|cd|Add0~1\);

-- Location: LCCOMB_X56_Y72_N0
\inst|cd|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|count[0]~1_combout\ = !\inst|cd|Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cd|Add0~0_combout\,
	combout => \inst|cd|count[0]~1_combout\);

-- Location: FF_X55_Y72_N1
\inst|cd|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|cd|count[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(0));

-- Location: LCCOMB_X55_Y72_N2
\inst|cd|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~2_combout\ = (\inst|cd|count\(1) & (!\inst|cd|Add0~1\)) # (!\inst|cd|count\(1) & ((\inst|cd|Add0~1\) # (GND)))
-- \inst|cd|Add0~3\ = CARRY((!\inst|cd|Add0~1\) # (!\inst|cd|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(1),
	datad => VCC,
	cin => \inst|cd|Add0~1\,
	combout => \inst|cd|Add0~2_combout\,
	cout => \inst|cd|Add0~3\);

-- Location: LCCOMB_X56_Y72_N12
\inst|cd|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|count~0_combout\ = (\inst|cd|Add0~2_combout\ & ((!\inst|cd|Equal0~4_combout\) # (!\inst|cd|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|Equal0~9_combout\,
	datac => \inst|cd|Equal0~4_combout\,
	datad => \inst|cd|Add0~2_combout\,
	combout => \inst|cd|count~0_combout\);

-- Location: FF_X55_Y72_N3
\inst|cd|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|cd|count~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(1));

-- Location: LCCOMB_X55_Y72_N4
\inst|cd|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~4_combout\ = (\inst|cd|count\(2) & (\inst|cd|Add0~3\ $ (GND))) # (!\inst|cd|count\(2) & (!\inst|cd|Add0~3\ & VCC))
-- \inst|cd|Add0~5\ = CARRY((\inst|cd|count\(2) & !\inst|cd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(2),
	datad => VCC,
	cin => \inst|cd|Add0~3\,
	combout => \inst|cd|Add0~4_combout\,
	cout => \inst|cd|Add0~5\);

-- Location: FF_X55_Y72_N5
\inst|cd|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(2));

-- Location: LCCOMB_X55_Y72_N6
\inst|cd|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~6_combout\ = (\inst|cd|count\(3) & (!\inst|cd|Add0~5\)) # (!\inst|cd|count\(3) & ((\inst|cd|Add0~5\) # (GND)))
-- \inst|cd|Add0~7\ = CARRY((!\inst|cd|Add0~5\) # (!\inst|cd|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(3),
	datad => VCC,
	cin => \inst|cd|Add0~5\,
	combout => \inst|cd|Add0~6_combout\,
	cout => \inst|cd|Add0~7\);

-- Location: FF_X55_Y72_N7
\inst|cd|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(3));

-- Location: LCCOMB_X55_Y72_N8
\inst|cd|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~8_combout\ = (\inst|cd|count\(4) & (\inst|cd|Add0~7\ $ (GND))) # (!\inst|cd|count\(4) & (!\inst|cd|Add0~7\ & VCC))
-- \inst|cd|Add0~9\ = CARRY((\inst|cd|count\(4) & !\inst|cd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|count\(4),
	datad => VCC,
	cin => \inst|cd|Add0~7\,
	combout => \inst|cd|Add0~8_combout\,
	cout => \inst|cd|Add0~9\);

-- Location: FF_X55_Y72_N9
\inst|cd|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(4));

-- Location: LCCOMB_X55_Y72_N10
\inst|cd|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~10_combout\ = (\inst|cd|count\(5) & (!\inst|cd|Add0~9\)) # (!\inst|cd|count\(5) & ((\inst|cd|Add0~9\) # (GND)))
-- \inst|cd|Add0~11\ = CARRY((!\inst|cd|Add0~9\) # (!\inst|cd|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(5),
	datad => VCC,
	cin => \inst|cd|Add0~9\,
	combout => \inst|cd|Add0~10_combout\,
	cout => \inst|cd|Add0~11\);

-- Location: FF_X55_Y72_N11
\inst|cd|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(5));

-- Location: LCCOMB_X55_Y72_N12
\inst|cd|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Add0~12_combout\ = (\inst|cd|count\(6) & (\inst|cd|Add0~11\ $ (GND))) # (!\inst|cd|count\(6) & (!\inst|cd|Add0~11\ & VCC))
-- \inst|cd|Add0~13\ = CARRY((\inst|cd|count\(6) & !\inst|cd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(6),
	datad => VCC,
	cin => \inst|cd|Add0~11\,
	combout => \inst|cd|Add0~12_combout\,
	cout => \inst|cd|Add0~13\);

-- Location: FF_X55_Y72_N13
\inst|cd|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(6));

-- Location: FF_X55_Y72_N15
\inst|cd|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|count\(7));

-- Location: LCCOMB_X56_Y72_N10
\inst|cd|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~1_combout\ = (!\inst|cd|count\(7) & (!\inst|cd|count\(4) & (!\inst|cd|count\(5) & !\inst|cd|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(7),
	datab => \inst|cd|count\(4),
	datac => \inst|cd|count\(5),
	datad => \inst|cd|count\(6),
	combout => \inst|cd|Equal0~1_combout\);

-- Location: LCCOMB_X56_Y72_N8
\inst|cd|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~3_combout\ = (!\inst|cd|count\(13) & (!\inst|cd|count\(14) & (!\inst|cd|count\(15) & !\inst|cd|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(13),
	datab => \inst|cd|count\(14),
	datac => \inst|cd|count\(15),
	datad => \inst|cd|count\(12),
	combout => \inst|cd|Equal0~3_combout\);

-- Location: LCCOMB_X56_Y72_N26
\inst|cd|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~2_combout\ = (!\inst|cd|count\(8) & (!\inst|cd|count\(9) & (!\inst|cd|count\(10) & !\inst|cd|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(8),
	datab => \inst|cd|count\(9),
	datac => \inst|cd|count\(10),
	datad => \inst|cd|count\(11),
	combout => \inst|cd|Equal0~2_combout\);

-- Location: LCCOMB_X56_Y72_N18
\inst|cd|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~0_combout\ = (\inst|cd|count\(0) & (!\inst|cd|count\(2) & (!\inst|cd|count\(3) & \inst|cd|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|count\(0),
	datab => \inst|cd|count\(2),
	datac => \inst|cd|count\(3),
	datad => \inst|cd|count\(1),
	combout => \inst|cd|Equal0~0_combout\);

-- Location: LCCOMB_X56_Y72_N4
\inst|cd|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|Equal0~4_combout\ = (\inst|cd|Equal0~1_combout\ & (\inst|cd|Equal0~3_combout\ & (\inst|cd|Equal0~2_combout\ & \inst|cd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cd|Equal0~1_combout\,
	datab => \inst|cd|Equal0~3_combout\,
	datac => \inst|cd|Equal0~2_combout\,
	datad => \inst|cd|Equal0~0_combout\,
	combout => \inst|cd|Equal0~4_combout\);

-- Location: LCCOMB_X56_Y72_N2
\inst|cd|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|tmp~0_combout\ = \inst|cd|tmp~q\ $ (((\inst|cd|Equal0~4_combout\ & \inst|cd|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|cd|Equal0~4_combout\,
	datac => \inst|cd|tmp~q\,
	datad => \inst|cd|Equal0~9_combout\,
	combout => \inst|cd|tmp~0_combout\);

-- Location: LCCOMB_X56_Y72_N24
\inst|cd|tmp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cd|tmp~feeder_combout\ = \inst|cd|tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|cd|tmp~0_combout\,
	combout => \inst|cd|tmp~feeder_combout\);

-- Location: FF_X56_Y72_N25
\inst|cd|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cd|tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cd|tmp~q\);

-- Location: CLKCTRL_G10
\inst|cd|tmp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|cd|tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|cd|tmp~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y68_N18
\inst|ke|RC|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ke|RC|Mux1~0_combout\ = ((\inst|ke|RC|ring\(1)) # ((!\inst|ke|RC|ring\(3)) # (!\inst|ke|RC|ring\(2)))) # (!\inst|ke|RC|ring\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ke|RC|ring\(0),
	datab => \inst|ke|RC|ring\(1),
	datac => \inst|ke|RC|ring\(2),
	datad => \inst|ke|RC|ring\(3),
	combout => \inst|ke|RC|Mux1~0_combout\);

-- Location: IOIBUF_X0_Y67_N15
\col[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(0),
	o => \col[0]~input_o\);

-- Location: IOIBUF_X0_Y66_N15
\col[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(1),
	o => \col[1]~input_o\);

-- Location: IOIBUF_X0_Y67_N22
\col[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_col(2),
	o => \col[2]~input_o\);

-- Location: LCCOMB_X1_Y67_N0
\inst|ke|Freeze~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ke|Freeze~0_combout\ = (\col[0]~input_o\ & (\col[1]~input_o\ & \col[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col[0]~input_o\,
	datac => \col[1]~input_o\,
	datad => \col[2]~input_o\,
	combout => \inst|ke|Freeze~0_combout\);

-- Location: FF_X1_Y68_N19
\inst|ke|RC|ring[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cd|tmp~clkctrl_outclk\,
	d => \inst|ke|RC|Mux1~0_combout\,
	ena => \inst|ke|Freeze~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ke|RC|ring\(2));

-- Location: LCCOMB_X1_Y68_N20
\inst|ke|RC|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ke|RC|Mux2~0_combout\ = (\inst|ke|RC|ring\(0)) # (((!\inst|ke|RC|ring\(3)) # (!\inst|ke|RC|ring\(1))) # (!\inst|ke|RC|ring\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ke|RC|ring\(0),
	datab => \inst|ke|RC|ring\(2),
	datac => \inst|ke|RC|ring\(1),
	datad => \inst|ke|RC|ring\(3),
	combout => \inst|ke|RC|Mux2~0_combout\);

-- Location: FF_X1_Y68_N21
\inst|ke|RC|ring[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cd|tmp~clkctrl_outclk\,
	d => \inst|ke|RC|Mux2~0_combout\,
	ena => \inst|ke|Freeze~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ke|RC|ring\(1));

-- Location: LCCOMB_X1_Y68_N22
\inst|ke|RC|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ke|RC|Mux3~0_combout\ = (\inst|ke|RC|ring\(3) & ((\inst|ke|RC|ring\(1) & (\inst|ke|RC|ring\(0) $ (\inst|ke|RC|ring\(2)))) # (!\inst|ke|RC|ring\(1) & (\inst|ke|RC|ring\(0) & \inst|ke|RC|ring\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ke|RC|ring\(1),
	datab => \inst|ke|RC|ring\(3),
	datac => \inst|ke|RC|ring\(0),
	datad => \inst|ke|RC|ring\(2),
	combout => \inst|ke|RC|Mux3~0_combout\);

-- Location: FF_X1_Y68_N23
\inst|ke|RC|ring[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cd|tmp~clkctrl_outclk\,
	d => \inst|ke|RC|Mux3~0_combout\,
	ena => \inst|ke|Freeze~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ke|RC|ring\(0));

-- Location: LCCOMB_X1_Y68_N16
\inst|ke|RC|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ke|RC|Mux0~0_combout\ = ((\inst|ke|RC|ring\(2)) # ((!\inst|ke|RC|ring\(1)) # (!\inst|ke|RC|ring\(3)))) # (!\inst|ke|RC|ring\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ke|RC|ring\(0),
	datab => \inst|ke|RC|ring\(2),
	datac => \inst|ke|RC|ring\(3),
	datad => \inst|ke|RC|ring\(1),
	combout => \inst|ke|RC|Mux0~0_combout\);

-- Location: FF_X1_Y68_N17
\inst|ke|RC|ring[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|cd|tmp~clkctrl_outclk\,
	d => \inst|ke|RC|Mux0~0_combout\,
	ena => \inst|ke|Freeze~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ke|RC|ring\(3));

-- Location: IOIBUF_X35_Y73_N15
\Enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Enable,
	o => \Enable~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\strobe~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_strobe,
	o => \strobe~input_o\);

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_Q1(3) <= \Q1[3]~output_o\;

ww_Q1(2) <= \Q1[2]~output_o\;

ww_Q1(1) <= \Q1[1]~output_o\;

ww_Q1(0) <= \Q1[0]~output_o\;

ww_Q2(3) <= \Q2[3]~output_o\;

ww_Q2(2) <= \Q2[2]~output_o\;

ww_Q2(1) <= \Q2[1]~output_o\;

ww_Q2(0) <= \Q2[0]~output_o\;

ww_Q3(3) <= \Q3[3]~output_o\;

ww_Q3(2) <= \Q3[2]~output_o\;

ww_Q3(1) <= \Q3[1]~output_o\;

ww_Q3(0) <= \Q3[0]~output_o\;

ww_Q4(3) <= \Q4[3]~output_o\;

ww_Q4(2) <= \Q4[2]~output_o\;

ww_Q4(1) <= \Q4[1]~output_o\;

ww_Q4(0) <= \Q4[0]~output_o\;

ww_Q5(3) <= \Q5[3]~output_o\;

ww_Q5(2) <= \Q5[2]~output_o\;

ww_Q5(1) <= \Q5[1]~output_o\;

ww_Q5(0) <= \Q5[0]~output_o\;

ww_Q6(3) <= \Q6[3]~output_o\;

ww_Q6(2) <= \Q6[2]~output_o\;

ww_Q6(1) <= \Q6[1]~output_o\;

ww_Q6(0) <= \Q6[0]~output_o\;

ww_row(3) <= \row[3]~output_o\;

ww_row(2) <= \row[2]~output_o\;

ww_row(1) <= \row[1]~output_o\;

ww_row(0) <= \row[0]~output_o\;
END structure;


