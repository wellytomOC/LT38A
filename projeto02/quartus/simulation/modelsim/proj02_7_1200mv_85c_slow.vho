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

-- DATE "12/03/2023 22:12:59"

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

ENTITY 	testRegister_10Bits IS
    PORT (
	Q : OUT std_logic_vector(9 DOWNTO 0);
	CLK : IN std_logic;
	reset : IN std_logic;
	D : IN std_logic_vector(9 DOWNTO 0)
	);
END testRegister_10Bits;

-- Design Ports Information
-- Q[9]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[8]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[9]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[8]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testRegister_10Bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_D : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[9]~output_o\ : std_logic;
SIGNAL \Q[8]~output_o\ : std_logic;
SIGNAL \Q[7]~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[9]~input_o\ : std_logic;
SIGNAL \inst|Q[9]~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \D[8]~input_o\ : std_logic;
SIGNAL \inst|Q[8]~feeder_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \inst|Q[7]~feeder_combout\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \inst|Q[5]~feeder_combout\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \inst|Q[4]~feeder_combout\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \inst|Q[3]~feeder_combout\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \inst|Q[1]~feeder_combout\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \inst|Q[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q <= ww_Q;
ww_CLK <= CLK;
ww_reset <= reset;
ww_D <= D;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y43_N16
\Q[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(9),
	devoe => ww_devoe,
	o => \Q[9]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Q[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(8),
	devoe => ww_devoe,
	o => \Q[8]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\Q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(7),
	devoe => ww_devoe,
	o => \Q[7]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Q\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y48_N8
\D[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(9),
	o => \D[9]~input_o\);

-- Location: LCCOMB_X1_Y44_N16
\inst|Q[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[9]~feeder_combout\ = \D[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[9]~input_o\,
	combout => \inst|Q[9]~feeder_combout\);

-- Location: IOIBUF_X115_Y6_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y44_N17
\inst|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[9]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(9));

-- Location: IOIBUF_X0_Y47_N22
\D[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(8),
	o => \D[8]~input_o\);

-- Location: LCCOMB_X1_Y44_N10
\inst|Q[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[8]~feeder_combout\ = \D[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[8]~input_o\,
	combout => \inst|Q[8]~feeder_combout\);

-- Location: FF_X1_Y44_N11
\inst|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[8]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(8));

-- Location: IOIBUF_X0_Y49_N1
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X1_Y44_N4
\inst|Q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[7]~feeder_combout\ = \D[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[7]~input_o\,
	combout => \inst|Q[7]~feeder_combout\);

-- Location: FF_X1_Y44_N5
\inst|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[7]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(7));

-- Location: IOIBUF_X0_Y44_N8
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: FF_X1_Y44_N31
\inst|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D[6]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(6));

-- Location: IOIBUF_X0_Y44_N1
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: LCCOMB_X1_Y44_N24
\inst|Q[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[5]~feeder_combout\ = \D[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[5]~input_o\,
	combout => \inst|Q[5]~feeder_combout\);

-- Location: FF_X1_Y44_N25
\inst|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[5]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(5));

-- Location: IOIBUF_X0_Y49_N8
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X1_Y44_N18
\inst|Q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[4]~feeder_combout\ = \D[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[4]~input_o\,
	combout => \inst|Q[4]~feeder_combout\);

-- Location: FF_X1_Y44_N19
\inst|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[4]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(4));

-- Location: IOIBUF_X0_Y47_N1
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: LCCOMB_X1_Y44_N12
\inst|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[3]~feeder_combout\ = \D[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[3]~input_o\,
	combout => \inst|Q[3]~feeder_combout\);

-- Location: FF_X1_Y44_N13
\inst|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[3]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(3));

-- Location: IOIBUF_X0_Y48_N1
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: FF_X1_Y44_N23
\inst|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \D[2]~input_o\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(2));

-- Location: IOIBUF_X0_Y47_N15
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X1_Y44_N0
\inst|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[1]~feeder_combout\ = \D[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[1]~input_o\,
	combout => \inst|Q[1]~feeder_combout\);

-- Location: FF_X1_Y44_N1
\inst|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(1));

-- Location: IOIBUF_X0_Y44_N22
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X1_Y44_N26
\inst|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Q[0]~feeder_combout\ = \D[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[0]~input_o\,
	combout => \inst|Q[0]~feeder_combout\);

-- Location: FF_X1_Y44_N27
\inst|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Q\(0));

ww_Q(9) <= \Q[9]~output_o\;

ww_Q(8) <= \Q[8]~output_o\;

ww_Q(7) <= \Q[7]~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


