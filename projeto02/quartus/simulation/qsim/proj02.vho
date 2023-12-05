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

-- DATE "12/03/2023 22:17:36"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	testRegisterSelector IS
    PORT (
	enabler : OUT std_logic;
	DAV : IN std_logic;
	reset : IN std_logic;
	data : IN std_logic_vector(3 DOWNTO 0);
	clear : OUT std_logic;
	sel : OUT std_logic_vector(2 DOWNTO 0)
	);
END testRegisterSelector;

-- Design Ports Information
-- enabler	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DAV	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testRegisterSelector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enabler : std_logic;
SIGNAL ww_DAV : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clear : std_logic;
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DAV~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \enabler~output_o\ : std_logic;
SIGNAL \clear~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \DAV~input_o\ : std_logic;
SIGNAL \DAV~inputclkctrl_outclk\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \inst|enabler~q\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|clear~feeder_combout\ : std_logic;
SIGNAL \inst|clear~q\ : std_logic;
SIGNAL \inst|state~0_combout\ : std_logic;
SIGNAL \inst|state[2]~4_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|state~2_combout\ : std_logic;
SIGNAL \inst|state~3_combout\ : std_logic;
SIGNAL \inst|state~1_combout\ : std_logic;
SIGNAL \inst|state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_state\ : std_logic_vector(2 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

enabler <= ww_enabler;
ww_DAV <= DAV;
ww_reset <= reset;
ww_data <= data;
clear <= ww_clear;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\DAV~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \DAV~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\inst|ALT_INV_state\(1) <= NOT \inst|state\(1);
\inst|ALT_INV_state\(2) <= NOT \inst|state\(2);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\enabler~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|enabler~q\,
	devoe => ww_devoe,
	o => \enabler~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\clear~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|clear~q\,
	devoe => ww_devoe,
	o => \clear~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\sel[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_state\(2),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_state\(1),
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|state\(0),
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\DAV~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DAV,
	o => \DAV~input_o\);

-- Location: CLKCTRL_G2
\DAV~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DAV~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DAV~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: LCCOMB_X1_Y7_N22
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\data[0]~input_o\ & (\data[3]~input_o\ & (\data[1]~input_o\ & \data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[1]~input_o\,
	datad => \data[2]~input_o\,
	combout => \inst|Equal0~0_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X1_Y7_N9
\inst|enabler\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DAV~inputclkctrl_outclk\,
	asdata => \inst|Equal0~0_combout\,
	sload => VCC,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|enabler~q\);

-- Location: LCCOMB_X1_Y7_N28
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (!\data[0]~input_o\ & (\data[3]~input_o\ & (\data[1]~input_o\ & \data[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[0]~input_o\,
	datab => \data[3]~input_o\,
	datac => \data[1]~input_o\,
	datad => \data[2]~input_o\,
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\inst|clear~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|clear~feeder_combout\ = \inst|Equal1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Equal1~0_combout\,
	combout => \inst|clear~feeder_combout\);

-- Location: FF_X1_Y7_N27
\inst|clear\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DAV~inputclkctrl_outclk\,
	d => \inst|clear~feeder_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clear~q\);

-- Location: LCCOMB_X1_Y7_N30
\inst|state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~0_combout\ = \inst|Equal0~0_combout\ $ (\inst|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|state~0_combout\);

-- Location: LCCOMB_X1_Y7_N4
\inst|state[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state[2]~4_combout\ = ((!\data[2]~input_o\) # (!\data[1]~input_o\)) # (!\data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \data[3]~input_o\,
	datac => \data[1]~input_o\,
	datad => \data[2]~input_o\,
	combout => \inst|state[2]~4_combout\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X1_Y7_N5
\inst|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DAV~inputclkctrl_outclk\,
	d => \inst|state[2]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state\(0));

-- Location: LCCOMB_X1_Y7_N20
\inst|state~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~2_combout\ = (\inst|state\(0)) # (\inst|state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|state\(0),
	datad => \inst|state\(1),
	combout => \inst|state~2_combout\);

-- Location: LCCOMB_X1_Y7_N18
\inst|state~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~3_combout\ = (!\inst|state\(2) & (!\inst|state~2_combout\ & (\inst|Equal1~0_combout\ $ (!\inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state\(2),
	datab => \inst|Equal1~0_combout\,
	datac => \inst|Equal0~0_combout\,
	datad => \inst|state~2_combout\,
	combout => \inst|state~3_combout\);

-- Location: FF_X1_Y7_N19
\inst|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DAV~inputclkctrl_outclk\,
	d => \inst|state~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state\(1));

-- Location: LCCOMB_X1_Y7_N24
\inst|state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|state~1_combout\ = (!\inst|state~0_combout\ & (\inst|state\(1) & (!\inst|state\(2) & \inst|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state~0_combout\,
	datab => \inst|state\(1),
	datac => \inst|state\(2),
	datad => \inst|state\(0),
	combout => \inst|state~1_combout\);

-- Location: FF_X1_Y7_N25
\inst|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DAV~inputclkctrl_outclk\,
	d => \inst|state~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|state\(2));

ww_enabler <= \enabler~output_o\;

ww_clear <= \clear~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;
END structure;


