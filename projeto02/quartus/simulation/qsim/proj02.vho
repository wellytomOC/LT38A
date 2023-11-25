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

-- DATE "11/24/2023 15:00:55"

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

ENTITY 	testclock20hz IS
    PORT (
	clock_out : OUT std_logic;
	clk : IN std_logic
	);
END testclock20hz;

-- Design Ports Information
-- clock_out	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF testclock20hz IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~97_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~70_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~71_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~68_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~69_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~73_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~74_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~75_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~76_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~77_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~78_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~79_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~80_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~81_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~82_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~83_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~84_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~85_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~86_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~87_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~88_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~89_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~90_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~91_combout\ : std_logic;
SIGNAL \inst|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~92_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~93_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~94_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~95_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~96_combout\ : std_logic;
SIGNAL \inst|Add0~63\ : std_logic;
SIGNAL \inst|Add0~64_combout\ : std_logic;
SIGNAL \inst|Add0~99_combout\ : std_logic;
SIGNAL \inst|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|Add0~65\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~98_combout\ : std_logic;
SIGNAL \inst|tmp~0_combout\ : std_logic;
SIGNAL \inst|tmp~q\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

clock_out <= ww_clock_out;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y36_N2
\clock_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|tmp~q\,
	devoe => ww_devoe,
	o => \clock_out~output_o\);

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

-- Location: LCCOMB_X81_Y39_N0
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = \inst|count\(0) $ (GND)
-- \inst|Add0~5\ = CARRY(!\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datad => VCC,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X82_Y39_N14
\inst|Add0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~97_combout\ = (!\inst|Add0~4_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~4_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~97_combout\);

-- Location: FF_X81_Y39_N21
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Add0~97_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X81_Y39_N2
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|count\(1) & (!\inst|Add0~5\)) # (!\inst|count\(1) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X82_Y39_N0
\inst|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~70_combout\ = (\inst|Add0~6_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~6_combout\,
	datac => \inst|count\(31),
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~70_combout\);

-- Location: FF_X81_Y39_N27
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Add0~70_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X81_Y39_N4
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count\(2) & (\inst|Add0~7\ $ (GND))) # (!\inst|count\(2) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|count\(2) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X82_Y39_N20
\inst|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~71_combout\ = (\inst|Add0~8_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~8_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~71_combout\);

-- Location: FF_X82_Y39_N21
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LCCOMB_X81_Y39_N6
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count\(3) & (!\inst|Add0~9\)) # (!\inst|count\(3) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(3),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X82_Y39_N12
\inst|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~68_combout\ = (\inst|Add0~10_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~10_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~68_combout\);

-- Location: FF_X82_Y39_N13
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LCCOMB_X81_Y39_N8
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|count\(4) & (\inst|Add0~11\ $ (GND))) # (!\inst|count\(4) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|count\(4) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(4),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X82_Y39_N22
\inst|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~69_combout\ = (\inst|Add0~12_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~12_combout\,
	datac => \inst|count\(31),
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~69_combout\);

-- Location: FF_X82_Y39_N23
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X81_Y39_N10
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|count\(5) & (!\inst|Add0~13\)) # (!\inst|count\(5) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(5),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X80_Y38_N0
\inst|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = (\inst|Add0~14_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|Add0~72_combout\);

-- Location: FF_X80_Y38_N1
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LCCOMB_X81_Y39_N12
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|count\(6) & (\inst|Add0~15\ $ (GND))) # (!\inst|count\(6) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|count\(6) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(6),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X80_Y38_N18
\inst|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~73_combout\ = (\inst|Add0~16_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~16_combout\,
	combout => \inst|Add0~73_combout\);

-- Location: FF_X80_Y38_N19
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LCCOMB_X81_Y39_N14
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|count\(7) & (!\inst|Add0~17\)) # (!\inst|count\(7) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X80_Y38_N4
\inst|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~74_combout\ = (\inst|Add0~18_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|Add0~74_combout\);

-- Location: FF_X80_Y38_N5
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LCCOMB_X81_Y39_N16
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|count\(8) & (\inst|Add0~19\ $ (GND))) # (!\inst|count\(8) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|count\(8) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: LCCOMB_X80_Y38_N10
\inst|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~75_combout\ = (\inst|Add0~20_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~20_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~75_combout\);

-- Location: FF_X80_Y38_N11
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LCCOMB_X81_Y39_N18
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|count\(9) & (!\inst|Add0~21\)) # (!\inst|count\(9) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(9),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: LCCOMB_X82_Y39_N8
\inst|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~76_combout\ = (\inst|Add0~22_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~22_combout\,
	datac => \inst|count\(31),
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~76_combout\);

-- Location: FF_X82_Y39_N9
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LCCOMB_X81_Y39_N20
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|count\(10) & (\inst|Add0~23\ $ (GND))) # (!\inst|count\(10) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|count\(10) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(10),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X82_Y39_N18
\inst|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~77_combout\ = (\inst|Add0~24_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~24_combout\,
	datac => \inst|count\(31),
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~77_combout\);

-- Location: FF_X82_Y39_N19
\inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(10));

-- Location: LCCOMB_X81_Y39_N22
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|count\(11) & (!\inst|Add0~25\)) # (!\inst|count\(11) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(11),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: LCCOMB_X82_Y39_N16
\inst|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~78_combout\ = (\inst|Add0~26_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~26_combout\,
	datac => \inst|count\(31),
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~78_combout\);

-- Location: FF_X82_Y39_N17
\inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(11));

-- Location: LCCOMB_X81_Y39_N24
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|count\(12) & (\inst|Add0~27\ $ (GND))) # (!\inst|count\(12) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|count\(12) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(12),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: LCCOMB_X82_Y39_N10
\inst|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~79_combout\ = (\inst|Add0~28_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~9_combout\,
	datac => \inst|count\(31),
	datad => \inst|Add0~28_combout\,
	combout => \inst|Add0~79_combout\);

-- Location: FF_X82_Y39_N11
\inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(12));

-- Location: LCCOMB_X81_Y39_N26
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|count\(13) & (!\inst|Add0~29\)) # (!\inst|count\(13) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(13),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X82_Y39_N26
\inst|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~80_combout\ = (\inst|Add0~30_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~30_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~80_combout\);

-- Location: FF_X82_Y39_N27
\inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(13));

-- Location: LCCOMB_X81_Y39_N28
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|count\(14) & (\inst|Add0~31\ $ (GND))) # (!\inst|count\(14) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|count\(14) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(14),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: LCCOMB_X82_Y39_N4
\inst|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~81_combout\ = (\inst|Add0~32_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~9_combout\,
	datac => \inst|count\(31),
	datad => \inst|Add0~32_combout\,
	combout => \inst|Add0~81_combout\);

-- Location: FF_X82_Y39_N5
\inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(14));

-- Location: LCCOMB_X81_Y39_N30
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|count\(15) & (!\inst|Add0~33\)) # (!\inst|count\(15) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(15),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: LCCOMB_X82_Y39_N2
\inst|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~82_combout\ = (\inst|Add0~34_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~9_combout\,
	datac => \inst|count\(31),
	datad => \inst|Add0~34_combout\,
	combout => \inst|Add0~82_combout\);

-- Location: FF_X82_Y39_N3
\inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(15));

-- Location: LCCOMB_X81_Y38_N0
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|count\(16) & (\inst|Add0~35\ $ (GND))) # (!\inst|count\(16) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|count\(16) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(16),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X82_Y39_N28
\inst|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~83_combout\ = (\inst|Add0~36_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~36_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~83_combout\);

-- Location: FF_X82_Y39_N29
\inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(16));

-- Location: LCCOMB_X81_Y38_N2
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|count\(17) & (!\inst|Add0~37\)) # (!\inst|count\(17) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(17),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: LCCOMB_X82_Y38_N4
\inst|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~84_combout\ = (\inst|Add0~38_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|Add0~84_combout\);

-- Location: FF_X82_Y38_N5
\inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(17));

-- Location: LCCOMB_X81_Y38_N4
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|count\(18) & (\inst|Add0~39\ $ (GND))) # (!\inst|count\(18) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|count\(18) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(18),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: LCCOMB_X82_Y38_N2
\inst|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~85_combout\ = (\inst|Add0~40_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~9_combout\,
	datac => \inst|Add0~40_combout\,
	datad => \inst|count\(31),
	combout => \inst|Add0~85_combout\);

-- Location: FF_X82_Y38_N3
\inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(18));

-- Location: LCCOMB_X81_Y38_N6
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|count\(19) & (!\inst|Add0~41\)) # (!\inst|count\(19) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(19),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X82_Y38_N0
\inst|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~86_combout\ = (\inst|Add0~42_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~9_combout\,
	datac => \inst|Add0~42_combout\,
	datad => \inst|count\(31),
	combout => \inst|Add0~86_combout\);

-- Location: FF_X82_Y38_N1
\inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(19));

-- Location: LCCOMB_X81_Y38_N8
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|count\(20) & (\inst|Add0~43\ $ (GND))) # (!\inst|count\(20) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|count\(20) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(20),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: LCCOMB_X82_Y38_N26
\inst|Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~87_combout\ = (\inst|Add0~44_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~44_combout\,
	combout => \inst|Add0~87_combout\);

-- Location: FF_X82_Y38_N27
\inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~87_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(20));

-- Location: LCCOMB_X81_Y38_N10
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|count\(21) & (!\inst|Add0~45\)) # (!\inst|count\(21) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(21),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: LCCOMB_X82_Y38_N18
\inst|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~88_combout\ = (\inst|Add0~46_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~46_combout\,
	combout => \inst|Add0~88_combout\);

-- Location: FF_X82_Y38_N19
\inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(21));

-- Location: LCCOMB_X81_Y38_N12
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|count\(22) & (\inst|Add0~47\ $ (GND))) # (!\inst|count\(22) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|count\(22) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(22),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X82_Y38_N28
\inst|Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~89_combout\ = (\inst|Add0~48_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~48_combout\,
	combout => \inst|Add0~89_combout\);

-- Location: FF_X82_Y38_N29
\inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(22));

-- Location: LCCOMB_X81_Y38_N14
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|count\(23) & (!\inst|Add0~49\)) # (!\inst|count\(23) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(23),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: LCCOMB_X82_Y38_N30
\inst|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~90_combout\ = (\inst|Add0~50_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~50_combout\,
	combout => \inst|Add0~90_combout\);

-- Location: FF_X82_Y38_N31
\inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(23));

-- Location: LCCOMB_X81_Y38_N16
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|count\(24) & (\inst|Add0~51\ $ (GND))) # (!\inst|count\(24) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|count\(24) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(24),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: LCCOMB_X82_Y38_N20
\inst|Add0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~91_combout\ = (\inst|Add0~52_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~9_combout\,
	datac => \inst|Add0~52_combout\,
	datad => \inst|count\(31),
	combout => \inst|Add0~91_combout\);

-- Location: FF_X82_Y38_N21
\inst|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(24));

-- Location: LCCOMB_X82_Y38_N22
\inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~6_combout\ = (\inst|count\(24)) # ((\inst|count\(22)) # ((\inst|count\(23)) # (\inst|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(24),
	datab => \inst|count\(22),
	datac => \inst|count\(23),
	datad => \inst|count\(21),
	combout => \inst|LessThan0~6_combout\);

-- Location: LCCOMB_X82_Y38_N16
\inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_combout\ = (\inst|count\(20)) # ((\inst|count\(19)) # ((\inst|count\(17)) # (\inst|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(20),
	datab => \inst|count\(19),
	datac => \inst|count\(17),
	datad => \inst|count\(18),
	combout => \inst|LessThan0~5_combout\);

-- Location: LCCOMB_X81_Y38_N18
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|count\(25) & (!\inst|Add0~53\)) # (!\inst|count\(25) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(25),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X80_Y38_N14
\inst|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~92_combout\ = (\inst|Add0~54_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~54_combout\,
	combout => \inst|Add0~92_combout\);

-- Location: FF_X80_Y38_N15
\inst|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(25));

-- Location: LCCOMB_X81_Y38_N20
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|count\(26) & (\inst|Add0~55\ $ (GND))) # (!\inst|count\(26) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|count\(26) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(26),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: LCCOMB_X80_Y38_N28
\inst|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~93_combout\ = (\inst|Add0~56_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|Add0~56_combout\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|Add0~93_combout\);

-- Location: FF_X80_Y38_N29
\inst|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~93_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(26));

-- Location: LCCOMB_X81_Y38_N22
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|count\(27) & (!\inst|Add0~57\)) # (!\inst|count\(27) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(27),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: LCCOMB_X80_Y38_N22
\inst|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~94_combout\ = (\inst|Add0~58_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~58_combout\,
	combout => \inst|Add0~94_combout\);

-- Location: FF_X80_Y38_N23
\inst|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~94_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(27));

-- Location: LCCOMB_X81_Y38_N24
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|count\(28) & (\inst|Add0~59\ $ (GND))) # (!\inst|count\(28) & (!\inst|Add0~59\ & VCC))
-- \inst|Add0~61\ = CARRY((\inst|count\(28) & !\inst|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(28),
	datad => VCC,
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X80_Y38_N16
\inst|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~95_combout\ = (\inst|Add0~60_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~60_combout\,
	combout => \inst|Add0~95_combout\);

-- Location: FF_X80_Y38_N17
\inst|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(28));

-- Location: LCCOMB_X81_Y38_N26
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = (\inst|count\(29) & (!\inst|Add0~61\)) # (!\inst|count\(29) & ((\inst|Add0~61\) # (GND)))
-- \inst|Add0~63\ = CARRY((!\inst|Add0~61\) # (!\inst|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(29),
	datad => VCC,
	cin => \inst|Add0~61\,
	combout => \inst|Add0~62_combout\,
	cout => \inst|Add0~63\);

-- Location: LCCOMB_X82_Y38_N12
\inst|Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~96_combout\ = (\inst|Add0~62_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~9_combout\,
	datac => \inst|Add0~62_combout\,
	datad => \inst|count\(31),
	combout => \inst|Add0~96_combout\);

-- Location: FF_X82_Y38_N13
\inst|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~96_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(29));

-- Location: LCCOMB_X81_Y38_N28
\inst|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~64_combout\ = (\inst|count\(30) & (\inst|Add0~63\ $ (GND))) # (!\inst|count\(30) & (!\inst|Add0~63\ & VCC))
-- \inst|Add0~65\ = CARRY((\inst|count\(30) & !\inst|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(30),
	datad => VCC,
	cin => \inst|Add0~63\,
	combout => \inst|Add0~64_combout\,
	cout => \inst|Add0~65\);

-- Location: LCCOMB_X82_Y38_N6
\inst|Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~99_combout\ = (\inst|Add0~64_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|LessThan0~9_combout\,
	datad => \inst|Add0~64_combout\,
	combout => \inst|Add0~99_combout\);

-- Location: FF_X82_Y38_N7
\inst|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(30));

-- Location: LCCOMB_X80_Y38_N26
\inst|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_combout\ = (\inst|count\(27)) # ((\inst|count\(26)) # ((\inst|count\(25)) # (\inst|count\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(27),
	datab => \inst|count\(26),
	datac => \inst|count\(25),
	datad => \inst|count\(28),
	combout => \inst|LessThan0~7_combout\);

-- Location: LCCOMB_X82_Y38_N8
\inst|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~8_combout\ = (\inst|count\(30)) # ((\inst|LessThan0~7_combout\) # (\inst|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(30),
	datac => \inst|LessThan0~7_combout\,
	datad => \inst|count\(29),
	combout => \inst|LessThan0~8_combout\);

-- Location: LCCOMB_X80_Y38_N20
\inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = (\inst|count\(8)) # ((\inst|count\(6)) # ((\inst|count\(7)) # (\inst|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(8),
	datab => \inst|count\(6),
	datac => \inst|count\(7),
	datad => \inst|count\(5),
	combout => \inst|LessThan0~1_combout\);

-- Location: LCCOMB_X82_Y39_N24
\inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = (\inst|count\(12)) # ((\inst|count\(10)) # ((\inst|count\(9)) # (\inst|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(12),
	datab => \inst|count\(10),
	datac => \inst|count\(9),
	datad => \inst|count\(11),
	combout => \inst|LessThan0~2_combout\);

-- Location: LCCOMB_X82_Y39_N30
\inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = (\inst|count\(4)) # ((\inst|count\(3)) # ((\inst|count\(2) & \inst|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datab => \inst|count\(2),
	datac => \inst|count\(1),
	datad => \inst|count\(3),
	combout => \inst|LessThan0~0_combout\);

-- Location: LCCOMB_X82_Y39_N6
\inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = (\inst|count\(13)) # ((\inst|count\(16)) # ((\inst|count\(14)) # (\inst|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(13),
	datab => \inst|count\(16),
	datac => \inst|count\(14),
	datad => \inst|count\(15),
	combout => \inst|LessThan0~3_combout\);

-- Location: LCCOMB_X82_Y38_N10
\inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = (\inst|LessThan0~1_combout\) # ((\inst|LessThan0~2_combout\) # ((\inst|LessThan0~0_combout\) # (\inst|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~1_combout\,
	datab => \inst|LessThan0~2_combout\,
	datac => \inst|LessThan0~0_combout\,
	datad => \inst|LessThan0~3_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LCCOMB_X82_Y38_N14
\inst|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_combout\ = (\inst|LessThan0~6_combout\) # ((\inst|LessThan0~5_combout\) # ((\inst|LessThan0~8_combout\) # (\inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~6_combout\,
	datab => \inst|LessThan0~5_combout\,
	datac => \inst|LessThan0~8_combout\,
	datad => \inst|LessThan0~4_combout\,
	combout => \inst|LessThan0~9_combout\);

-- Location: LCCOMB_X81_Y38_N30
\inst|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = \inst|count\(31) $ (\inst|Add0~65\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(31),
	cin => \inst|Add0~65\,
	combout => \inst|Add0~66_combout\);

-- Location: LCCOMB_X82_Y38_N24
\inst|Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~98_combout\ = (\inst|Add0~66_combout\ & ((\inst|count\(31)) # (!\inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|LessThan0~9_combout\,
	datac => \inst|count\(31),
	datad => \inst|Add0~66_combout\,
	combout => \inst|Add0~98_combout\);

-- Location: FF_X82_Y38_N25
\inst|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(31));

-- Location: LCCOMB_X83_Y38_N16
\inst|tmp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|tmp~0_combout\ = \inst|tmp~q\ $ (((!\inst|count\(31) & \inst|LessThan0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(31),
	datac => \inst|tmp~q\,
	datad => \inst|LessThan0~9_combout\,
	combout => \inst|tmp~0_combout\);

-- Location: FF_X83_Y38_N17
\inst|tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|tmp~q\);

ww_clock_out <= \clock_out~output_o\;
END structure;


