-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/03/2022 11:11:26"

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

ENTITY 	SeqShiftUnit_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(13 DOWNTO 0)
	);
END SeqShiftUnit_Demo;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqShiftUnit_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(13 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[7]~42\ : std_logic;
SIGNAL \inst4|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[8]~44\ : std_logic;
SIGNAL \inst4|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[9]~46\ : std_logic;
SIGNAL \inst4|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[10]~48\ : std_logic;
SIGNAL \inst4|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[11]~50\ : std_logic;
SIGNAL \inst4|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[12]~52\ : std_logic;
SIGNAL \inst4|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[13]~54\ : std_logic;
SIGNAL \inst4|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[14]~56\ : std_logic;
SIGNAL \inst4|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[15]~58\ : std_logic;
SIGNAL \inst4|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[16]~60\ : std_logic;
SIGNAL \inst4|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[17]~62\ : std_logic;
SIGNAL \inst4|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[18]~64\ : std_logic;
SIGNAL \inst4|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[19]~66\ : std_logic;
SIGNAL \inst4|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[20]~68\ : std_logic;
SIGNAL \inst4|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[21]~70\ : std_logic;
SIGNAL \inst4|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[22]~72\ : std_logic;
SIGNAL \inst4|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[23]~74\ : std_logic;
SIGNAL \inst4|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[24]~76\ : std_logic;
SIGNAL \inst4|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[25]~78\ : std_logic;
SIGNAL \inst4|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|clkOut~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[0]~28\ : std_logic;
SIGNAL \inst4|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[1]~30\ : std_logic;
SIGNAL \inst4|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[2]~32\ : std_logic;
SIGNAL \inst4|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[3]~34\ : std_logic;
SIGNAL \inst4|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[4]~36\ : std_logic;
SIGNAL \inst4|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[5]~38\ : std_logic;
SIGNAL \inst4|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \inst4|s_divCounter[6]~40\ : std_logic;
SIGNAL \inst4|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|clkOut~2_combout\ : std_logic;
SIGNAL \inst4|clkOut~0_combout\ : std_logic;
SIGNAL \inst4|clkOut~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|clkOut~6_combout\ : std_logic;
SIGNAL \inst4|clkOut~5_combout\ : std_logic;
SIGNAL \inst4|clkOut~4_combout\ : std_logic;
SIGNAL \inst4|clkOut~7_combout\ : std_logic;
SIGNAL \inst4|clkOut~8_combout\ : std_logic;
SIGNAL \inst4|clkOut~9_combout\ : std_logic;
SIGNAL \inst4|clkOut~feeder_combout\ : std_logic;
SIGNAL \inst4|clkOut~q\ : std_logic;
SIGNAL \inst4|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[6]~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[5]~2_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[4]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[3]~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[2]~5_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[1]~6_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg~10_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[0]~7_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~8_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~9_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~0_combout\ : std_logic;
SIGNAL \inst|s_shiftReg[7]~feeder_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst|s_shiftReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|s_divCounter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst4|ALT_INV_clkOut~clkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst4|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|clkOut~q\);
\inst4|ALT_INV_clkOut~clkctrl_outclk\ <= NOT \inst4|clkOut~clkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_shiftReg\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X49_Y2_N6
\inst4|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[0]~27_combout\ = \inst4|s_divCounter\(0) $ (VCC)
-- \inst4|s_divCounter[0]~28\ = CARRY(\inst4|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(0),
	datad => VCC,
	combout => \inst4|s_divCounter[0]~27_combout\,
	cout => \inst4|s_divCounter[0]~28\);

-- Location: LCCOMB_X49_Y2_N20
\inst4|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[7]~41_combout\ = (\inst4|s_divCounter\(7) & (!\inst4|s_divCounter[6]~40\)) # (!\inst4|s_divCounter\(7) & ((\inst4|s_divCounter[6]~40\) # (GND)))
-- \inst4|s_divCounter[7]~42\ = CARRY((!\inst4|s_divCounter[6]~40\) # (!\inst4|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(7),
	datad => VCC,
	cin => \inst4|s_divCounter[6]~40\,
	combout => \inst4|s_divCounter[7]~41_combout\,
	cout => \inst4|s_divCounter[7]~42\);

-- Location: LCCOMB_X49_Y2_N22
\inst4|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[8]~43_combout\ = (\inst4|s_divCounter\(8) & (\inst4|s_divCounter[7]~42\ $ (GND))) # (!\inst4|s_divCounter\(8) & (!\inst4|s_divCounter[7]~42\ & VCC))
-- \inst4|s_divCounter[8]~44\ = CARRY((\inst4|s_divCounter\(8) & !\inst4|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(8),
	datad => VCC,
	cin => \inst4|s_divCounter[7]~42\,
	combout => \inst4|s_divCounter[8]~43_combout\,
	cout => \inst4|s_divCounter[8]~44\);

-- Location: FF_X49_Y2_N23
\inst4|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[8]~43_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(8));

-- Location: LCCOMB_X49_Y2_N24
\inst4|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[9]~45_combout\ = (\inst4|s_divCounter\(9) & (!\inst4|s_divCounter[8]~44\)) # (!\inst4|s_divCounter\(9) & ((\inst4|s_divCounter[8]~44\) # (GND)))
-- \inst4|s_divCounter[9]~46\ = CARRY((!\inst4|s_divCounter[8]~44\) # (!\inst4|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(9),
	datad => VCC,
	cin => \inst4|s_divCounter[8]~44\,
	combout => \inst4|s_divCounter[9]~45_combout\,
	cout => \inst4|s_divCounter[9]~46\);

-- Location: FF_X49_Y2_N25
\inst4|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[9]~45_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(9));

-- Location: LCCOMB_X49_Y2_N26
\inst4|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[10]~47_combout\ = (\inst4|s_divCounter\(10) & (\inst4|s_divCounter[9]~46\ $ (GND))) # (!\inst4|s_divCounter\(10) & (!\inst4|s_divCounter[9]~46\ & VCC))
-- \inst4|s_divCounter[10]~48\ = CARRY((\inst4|s_divCounter\(10) & !\inst4|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(10),
	datad => VCC,
	cin => \inst4|s_divCounter[9]~46\,
	combout => \inst4|s_divCounter[10]~47_combout\,
	cout => \inst4|s_divCounter[10]~48\);

-- Location: FF_X49_Y2_N27
\inst4|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[10]~47_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(10));

-- Location: LCCOMB_X49_Y2_N28
\inst4|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[11]~49_combout\ = (\inst4|s_divCounter\(11) & (!\inst4|s_divCounter[10]~48\)) # (!\inst4|s_divCounter\(11) & ((\inst4|s_divCounter[10]~48\) # (GND)))
-- \inst4|s_divCounter[11]~50\ = CARRY((!\inst4|s_divCounter[10]~48\) # (!\inst4|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(11),
	datad => VCC,
	cin => \inst4|s_divCounter[10]~48\,
	combout => \inst4|s_divCounter[11]~49_combout\,
	cout => \inst4|s_divCounter[11]~50\);

-- Location: FF_X49_Y2_N29
\inst4|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[11]~49_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(11));

-- Location: LCCOMB_X49_Y2_N30
\inst4|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[12]~51_combout\ = (\inst4|s_divCounter\(12) & (\inst4|s_divCounter[11]~50\ $ (GND))) # (!\inst4|s_divCounter\(12) & (!\inst4|s_divCounter[11]~50\ & VCC))
-- \inst4|s_divCounter[12]~52\ = CARRY((\inst4|s_divCounter\(12) & !\inst4|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(12),
	datad => VCC,
	cin => \inst4|s_divCounter[11]~50\,
	combout => \inst4|s_divCounter[12]~51_combout\,
	cout => \inst4|s_divCounter[12]~52\);

-- Location: FF_X50_Y1_N21
\inst4|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|s_divCounter[12]~51_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(12));

-- Location: LCCOMB_X49_Y1_N0
\inst4|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[13]~53_combout\ = (\inst4|s_divCounter\(13) & (!\inst4|s_divCounter[12]~52\)) # (!\inst4|s_divCounter\(13) & ((\inst4|s_divCounter[12]~52\) # (GND)))
-- \inst4|s_divCounter[13]~54\ = CARRY((!\inst4|s_divCounter[12]~52\) # (!\inst4|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(13),
	datad => VCC,
	cin => \inst4|s_divCounter[12]~52\,
	combout => \inst4|s_divCounter[13]~53_combout\,
	cout => \inst4|s_divCounter[13]~54\);

-- Location: FF_X49_Y1_N1
\inst4|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[13]~53_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(13));

-- Location: LCCOMB_X49_Y1_N2
\inst4|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[14]~55_combout\ = (\inst4|s_divCounter\(14) & (\inst4|s_divCounter[13]~54\ $ (GND))) # (!\inst4|s_divCounter\(14) & (!\inst4|s_divCounter[13]~54\ & VCC))
-- \inst4|s_divCounter[14]~56\ = CARRY((\inst4|s_divCounter\(14) & !\inst4|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(14),
	datad => VCC,
	cin => \inst4|s_divCounter[13]~54\,
	combout => \inst4|s_divCounter[14]~55_combout\,
	cout => \inst4|s_divCounter[14]~56\);

-- Location: FF_X49_Y1_N3
\inst4|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[14]~55_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(14));

-- Location: LCCOMB_X49_Y1_N4
\inst4|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[15]~57_combout\ = (\inst4|s_divCounter\(15) & (!\inst4|s_divCounter[14]~56\)) # (!\inst4|s_divCounter\(15) & ((\inst4|s_divCounter[14]~56\) # (GND)))
-- \inst4|s_divCounter[15]~58\ = CARRY((!\inst4|s_divCounter[14]~56\) # (!\inst4|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(15),
	datad => VCC,
	cin => \inst4|s_divCounter[14]~56\,
	combout => \inst4|s_divCounter[15]~57_combout\,
	cout => \inst4|s_divCounter[15]~58\);

-- Location: FF_X49_Y1_N5
\inst4|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[15]~57_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(15));

-- Location: LCCOMB_X49_Y1_N6
\inst4|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[16]~59_combout\ = (\inst4|s_divCounter\(16) & (\inst4|s_divCounter[15]~58\ $ (GND))) # (!\inst4|s_divCounter\(16) & (!\inst4|s_divCounter[15]~58\ & VCC))
-- \inst4|s_divCounter[16]~60\ = CARRY((\inst4|s_divCounter\(16) & !\inst4|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(16),
	datad => VCC,
	cin => \inst4|s_divCounter[15]~58\,
	combout => \inst4|s_divCounter[16]~59_combout\,
	cout => \inst4|s_divCounter[16]~60\);

-- Location: FF_X49_Y1_N7
\inst4|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[16]~59_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(16));

-- Location: LCCOMB_X49_Y1_N8
\inst4|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[17]~61_combout\ = (\inst4|s_divCounter\(17) & (!\inst4|s_divCounter[16]~60\)) # (!\inst4|s_divCounter\(17) & ((\inst4|s_divCounter[16]~60\) # (GND)))
-- \inst4|s_divCounter[17]~62\ = CARRY((!\inst4|s_divCounter[16]~60\) # (!\inst4|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(17),
	datad => VCC,
	cin => \inst4|s_divCounter[16]~60\,
	combout => \inst4|s_divCounter[17]~61_combout\,
	cout => \inst4|s_divCounter[17]~62\);

-- Location: FF_X49_Y1_N9
\inst4|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[17]~61_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(17));

-- Location: LCCOMB_X49_Y1_N10
\inst4|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[18]~63_combout\ = (\inst4|s_divCounter\(18) & (\inst4|s_divCounter[17]~62\ $ (GND))) # (!\inst4|s_divCounter\(18) & (!\inst4|s_divCounter[17]~62\ & VCC))
-- \inst4|s_divCounter[18]~64\ = CARRY((\inst4|s_divCounter\(18) & !\inst4|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datad => VCC,
	cin => \inst4|s_divCounter[17]~62\,
	combout => \inst4|s_divCounter[18]~63_combout\,
	cout => \inst4|s_divCounter[18]~64\);

-- Location: FF_X49_Y1_N11
\inst4|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[18]~63_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(18));

-- Location: LCCOMB_X49_Y1_N12
\inst4|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[19]~65_combout\ = (\inst4|s_divCounter\(19) & (!\inst4|s_divCounter[18]~64\)) # (!\inst4|s_divCounter\(19) & ((\inst4|s_divCounter[18]~64\) # (GND)))
-- \inst4|s_divCounter[19]~66\ = CARRY((!\inst4|s_divCounter[18]~64\) # (!\inst4|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(19),
	datad => VCC,
	cin => \inst4|s_divCounter[18]~64\,
	combout => \inst4|s_divCounter[19]~65_combout\,
	cout => \inst4|s_divCounter[19]~66\);

-- Location: FF_X49_Y1_N13
\inst4|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[19]~65_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(19));

-- Location: LCCOMB_X49_Y1_N14
\inst4|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[20]~67_combout\ = (\inst4|s_divCounter\(20) & (\inst4|s_divCounter[19]~66\ $ (GND))) # (!\inst4|s_divCounter\(20) & (!\inst4|s_divCounter[19]~66\ & VCC))
-- \inst4|s_divCounter[20]~68\ = CARRY((\inst4|s_divCounter\(20) & !\inst4|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(20),
	datad => VCC,
	cin => \inst4|s_divCounter[19]~66\,
	combout => \inst4|s_divCounter[20]~67_combout\,
	cout => \inst4|s_divCounter[20]~68\);

-- Location: FF_X49_Y1_N15
\inst4|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[20]~67_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(20));

-- Location: LCCOMB_X49_Y1_N16
\inst4|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[21]~69_combout\ = (\inst4|s_divCounter\(21) & (!\inst4|s_divCounter[20]~68\)) # (!\inst4|s_divCounter\(21) & ((\inst4|s_divCounter[20]~68\) # (GND)))
-- \inst4|s_divCounter[21]~70\ = CARRY((!\inst4|s_divCounter[20]~68\) # (!\inst4|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(21),
	datad => VCC,
	cin => \inst4|s_divCounter[20]~68\,
	combout => \inst4|s_divCounter[21]~69_combout\,
	cout => \inst4|s_divCounter[21]~70\);

-- Location: FF_X49_Y1_N17
\inst4|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[21]~69_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(21));

-- Location: LCCOMB_X49_Y1_N18
\inst4|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[22]~71_combout\ = (\inst4|s_divCounter\(22) & (\inst4|s_divCounter[21]~70\ $ (GND))) # (!\inst4|s_divCounter\(22) & (!\inst4|s_divCounter[21]~70\ & VCC))
-- \inst4|s_divCounter[22]~72\ = CARRY((\inst4|s_divCounter\(22) & !\inst4|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(22),
	datad => VCC,
	cin => \inst4|s_divCounter[21]~70\,
	combout => \inst4|s_divCounter[22]~71_combout\,
	cout => \inst4|s_divCounter[22]~72\);

-- Location: FF_X49_Y1_N19
\inst4|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[22]~71_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(22));

-- Location: LCCOMB_X49_Y1_N20
\inst4|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[23]~73_combout\ = (\inst4|s_divCounter\(23) & (!\inst4|s_divCounter[22]~72\)) # (!\inst4|s_divCounter\(23) & ((\inst4|s_divCounter[22]~72\) # (GND)))
-- \inst4|s_divCounter[23]~74\ = CARRY((!\inst4|s_divCounter[22]~72\) # (!\inst4|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(23),
	datad => VCC,
	cin => \inst4|s_divCounter[22]~72\,
	combout => \inst4|s_divCounter[23]~73_combout\,
	cout => \inst4|s_divCounter[23]~74\);

-- Location: FF_X49_Y1_N21
\inst4|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[23]~73_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(23));

-- Location: LCCOMB_X49_Y1_N22
\inst4|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[24]~75_combout\ = (\inst4|s_divCounter\(24) & (\inst4|s_divCounter[23]~74\ $ (GND))) # (!\inst4|s_divCounter\(24) & (!\inst4|s_divCounter[23]~74\ & VCC))
-- \inst4|s_divCounter[24]~76\ = CARRY((\inst4|s_divCounter\(24) & !\inst4|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(24),
	datad => VCC,
	cin => \inst4|s_divCounter[23]~74\,
	combout => \inst4|s_divCounter[24]~75_combout\,
	cout => \inst4|s_divCounter[24]~76\);

-- Location: FF_X49_Y1_N23
\inst4|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[24]~75_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(24));

-- Location: LCCOMB_X49_Y1_N24
\inst4|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[25]~77_combout\ = (\inst4|s_divCounter\(25) & (!\inst4|s_divCounter[24]~76\)) # (!\inst4|s_divCounter\(25) & ((\inst4|s_divCounter[24]~76\) # (GND)))
-- \inst4|s_divCounter[25]~78\ = CARRY((!\inst4|s_divCounter[24]~76\) # (!\inst4|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(25),
	datad => VCC,
	cin => \inst4|s_divCounter[24]~76\,
	combout => \inst4|s_divCounter[25]~77_combout\,
	cout => \inst4|s_divCounter[25]~78\);

-- Location: FF_X49_Y1_N25
\inst4|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[25]~77_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(25));

-- Location: LCCOMB_X49_Y1_N26
\inst4|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[26]~79_combout\ = \inst4|s_divCounter\(26) $ (!\inst4|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(26),
	cin => \inst4|s_divCounter[25]~78\,
	combout => \inst4|s_divCounter[26]~79_combout\);

-- Location: FF_X49_Y1_N27
\inst4|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[26]~79_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(26));

-- Location: LCCOMB_X49_Y1_N30
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (((!\inst4|s_divCounter\(14)) # (!\inst4|s_divCounter\(15))) # (!\inst4|s_divCounter\(13))) # (!\inst4|s_divCounter\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(16),
	datab => \inst4|s_divCounter\(13),
	datac => \inst4|s_divCounter\(15),
	datad => \inst4|s_divCounter\(14),
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y1_N22
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (!\inst4|s_divCounter\(19) & (!\inst4|s_divCounter\(25) & (!\inst4|s_divCounter\(17) & \inst4|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(19),
	datab => \inst4|s_divCounter\(25),
	datac => \inst4|s_divCounter\(17),
	datad => \inst4|LessThan0~2_combout\,
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y1_N28
\inst4|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~3_combout\ = (\inst4|s_divCounter\(23) & (\inst4|s_divCounter\(21) & (\inst4|s_divCounter\(20) & \inst4|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(23),
	datab => \inst4|s_divCounter\(21),
	datac => \inst4|s_divCounter\(20),
	datad => \inst4|s_divCounter\(22),
	combout => \inst4|clkOut~3_combout\);

-- Location: LCCOMB_X50_Y1_N6
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (((!\inst4|s_divCounter\(18) & !\inst4|s_divCounter\(19))) # (!\inst4|clkOut~3_combout\)) # (!\inst4|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datab => \inst4|s_divCounter\(24),
	datac => \inst4|s_divCounter\(19),
	datad => \inst4|clkOut~3_combout\,
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y1_N26
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = ((\inst4|LessThan0~3_combout\) # ((!\inst4|s_divCounter\(25) & \inst4|LessThan0~4_combout\))) # (!\inst4|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(26),
	datab => \inst4|s_divCounter\(25),
	datac => \inst4|LessThan0~3_combout\,
	datad => \inst4|LessThan0~4_combout\,
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y1_N0
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (!\inst4|LessThan0~5_combout\ & !\inst4|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LessThan0~5_combout\,
	datad => \inst4|LessThan0~1_combout\,
	combout => \inst4|LessThan0~6_combout\);

-- Location: FF_X49_Y2_N7
\inst4|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[0]~27_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(0));

-- Location: LCCOMB_X49_Y2_N8
\inst4|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[1]~29_combout\ = (\inst4|s_divCounter\(1) & (!\inst4|s_divCounter[0]~28\)) # (!\inst4|s_divCounter\(1) & ((\inst4|s_divCounter[0]~28\) # (GND)))
-- \inst4|s_divCounter[1]~30\ = CARRY((!\inst4|s_divCounter[0]~28\) # (!\inst4|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(1),
	datad => VCC,
	cin => \inst4|s_divCounter[0]~28\,
	combout => \inst4|s_divCounter[1]~29_combout\,
	cout => \inst4|s_divCounter[1]~30\);

-- Location: FF_X49_Y2_N9
\inst4|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[1]~29_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(1));

-- Location: LCCOMB_X49_Y2_N10
\inst4|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[2]~31_combout\ = (\inst4|s_divCounter\(2) & (\inst4|s_divCounter[1]~30\ $ (GND))) # (!\inst4|s_divCounter\(2) & (!\inst4|s_divCounter[1]~30\ & VCC))
-- \inst4|s_divCounter[2]~32\ = CARRY((\inst4|s_divCounter\(2) & !\inst4|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(2),
	datad => VCC,
	cin => \inst4|s_divCounter[1]~30\,
	combout => \inst4|s_divCounter[2]~31_combout\,
	cout => \inst4|s_divCounter[2]~32\);

-- Location: FF_X49_Y2_N11
\inst4|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[2]~31_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(2));

-- Location: LCCOMB_X49_Y2_N12
\inst4|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[3]~33_combout\ = (\inst4|s_divCounter\(3) & (!\inst4|s_divCounter[2]~32\)) # (!\inst4|s_divCounter\(3) & ((\inst4|s_divCounter[2]~32\) # (GND)))
-- \inst4|s_divCounter[3]~34\ = CARRY((!\inst4|s_divCounter[2]~32\) # (!\inst4|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(3),
	datad => VCC,
	cin => \inst4|s_divCounter[2]~32\,
	combout => \inst4|s_divCounter[3]~33_combout\,
	cout => \inst4|s_divCounter[3]~34\);

-- Location: FF_X49_Y2_N13
\inst4|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[3]~33_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(3));

-- Location: LCCOMB_X49_Y2_N14
\inst4|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[4]~35_combout\ = (\inst4|s_divCounter\(4) & (\inst4|s_divCounter[3]~34\ $ (GND))) # (!\inst4|s_divCounter\(4) & (!\inst4|s_divCounter[3]~34\ & VCC))
-- \inst4|s_divCounter[4]~36\ = CARRY((\inst4|s_divCounter\(4) & !\inst4|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(4),
	datad => VCC,
	cin => \inst4|s_divCounter[3]~34\,
	combout => \inst4|s_divCounter[4]~35_combout\,
	cout => \inst4|s_divCounter[4]~36\);

-- Location: FF_X49_Y2_N15
\inst4|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[4]~35_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(4));

-- Location: LCCOMB_X49_Y2_N16
\inst4|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[5]~37_combout\ = (\inst4|s_divCounter\(5) & (!\inst4|s_divCounter[4]~36\)) # (!\inst4|s_divCounter\(5) & ((\inst4|s_divCounter[4]~36\) # (GND)))
-- \inst4|s_divCounter[5]~38\ = CARRY((!\inst4|s_divCounter[4]~36\) # (!\inst4|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(5),
	datad => VCC,
	cin => \inst4|s_divCounter[4]~36\,
	combout => \inst4|s_divCounter[5]~37_combout\,
	cout => \inst4|s_divCounter[5]~38\);

-- Location: FF_X49_Y2_N17
\inst4|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[5]~37_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(5));

-- Location: LCCOMB_X49_Y2_N18
\inst4|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_divCounter[6]~39_combout\ = (\inst4|s_divCounter\(6) & (\inst4|s_divCounter[5]~38\ $ (GND))) # (!\inst4|s_divCounter\(6) & (!\inst4|s_divCounter[5]~38\ & VCC))
-- \inst4|s_divCounter[6]~40\ = CARRY((\inst4|s_divCounter\(6) & !\inst4|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_divCounter\(6),
	datad => VCC,
	cin => \inst4|s_divCounter[5]~38\,
	combout => \inst4|s_divCounter[6]~39_combout\,
	cout => \inst4|s_divCounter[6]~40\);

-- Location: FF_X49_Y2_N19
\inst4|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[6]~39_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(6));

-- Location: FF_X49_Y2_N21
\inst4|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_divCounter[7]~41_combout\,
	sclr => \inst4|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_divCounter\(7));

-- Location: LCCOMB_X50_Y1_N8
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (!\inst4|s_divCounter\(17) & (!\inst4|s_divCounter\(12) & (!\inst4|s_divCounter\(25) & !\inst4|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(17),
	datab => \inst4|s_divCounter\(12),
	datac => \inst4|s_divCounter\(25),
	datad => \inst4|s_divCounter\(19),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y2_N4
\inst4|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~2_combout\ = (!\inst4|s_divCounter\(10) & (!\inst4|s_divCounter\(9) & (!\inst4|s_divCounter\(8) & !\inst4|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(10),
	datab => \inst4|s_divCounter\(9),
	datac => \inst4|s_divCounter\(8),
	datad => \inst4|s_divCounter\(11),
	combout => \inst4|clkOut~2_combout\);

-- Location: LCCOMB_X49_Y2_N0
\inst4|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~0_combout\ = (\inst4|s_divCounter\(3) & (\inst4|s_divCounter\(0) & (\inst4|s_divCounter\(1) & \inst4|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(3),
	datab => \inst4|s_divCounter\(0),
	datac => \inst4|s_divCounter\(1),
	datad => \inst4|s_divCounter\(2),
	combout => \inst4|clkOut~0_combout\);

-- Location: LCCOMB_X49_Y2_N2
\inst4|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~1_combout\ = (\inst4|s_divCounter\(4) & (\inst4|s_divCounter\(6) & (\inst4|s_divCounter\(5) & \inst4|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(4),
	datab => \inst4|s_divCounter\(6),
	datac => \inst4|s_divCounter\(5),
	datad => \inst4|clkOut~0_combout\,
	combout => \inst4|clkOut~1_combout\);

-- Location: LCCOMB_X50_Y1_N12
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (\inst4|LessThan0~0_combout\ & (\inst4|clkOut~2_combout\ & ((!\inst4|clkOut~1_combout\) # (!\inst4|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(7),
	datab => \inst4|LessThan0~0_combout\,
	datac => \inst4|clkOut~2_combout\,
	datad => \inst4|clkOut~1_combout\,
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y1_N16
\inst4|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~6_combout\ = (\inst4|s_divCounter\(19) & (\inst4|s_divCounter\(25) & (!\inst4|s_divCounter\(26) & !\inst4|s_divCounter\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(19),
	datab => \inst4|s_divCounter\(25),
	datac => \inst4|s_divCounter\(26),
	datad => \inst4|s_divCounter\(24),
	combout => \inst4|clkOut~6_combout\);

-- Location: LCCOMB_X50_Y1_N4
\inst4|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~5_combout\ = (!\inst4|s_divCounter\(18) & (\inst4|s_divCounter\(12) & (!\inst4|s_divCounter\(16) & \inst4|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(18),
	datab => \inst4|s_divCounter\(12),
	datac => \inst4|s_divCounter\(16),
	datad => \inst4|s_divCounter\(17),
	combout => \inst4|clkOut~5_combout\);

-- Location: LCCOMB_X50_Y1_N28
\inst4|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~4_combout\ = (\inst4|s_divCounter\(13) & (\inst4|s_divCounter\(15) & (!\inst4|s_divCounter\(7) & \inst4|s_divCounter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_divCounter\(13),
	datab => \inst4|s_divCounter\(15),
	datac => \inst4|s_divCounter\(7),
	datad => \inst4|s_divCounter\(14),
	combout => \inst4|clkOut~4_combout\);

-- Location: LCCOMB_X50_Y1_N30
\inst4|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~7_combout\ = (\inst4|clkOut~6_combout\ & (\inst4|clkOut~5_combout\ & \inst4|clkOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|clkOut~6_combout\,
	datac => \inst4|clkOut~5_combout\,
	datad => \inst4|clkOut~4_combout\,
	combout => \inst4|clkOut~7_combout\);

-- Location: LCCOMB_X50_Y1_N10
\inst4|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~8_combout\ = (\inst4|clkOut~7_combout\ & (\inst4|clkOut~3_combout\ & (\inst4|clkOut~2_combout\ & \inst4|clkOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|clkOut~7_combout\,
	datab => \inst4|clkOut~3_combout\,
	datac => \inst4|clkOut~2_combout\,
	datad => \inst4|clkOut~1_combout\,
	combout => \inst4|clkOut~8_combout\);

-- Location: LCCOMB_X50_Y1_N24
\inst4|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~9_combout\ = (\inst4|LessThan0~1_combout\ & ((\inst4|clkOut~q\) # ((\inst4|clkOut~8_combout\)))) # (!\inst4|LessThan0~1_combout\ & (\inst4|LessThan0~5_combout\ & ((\inst4|clkOut~q\) # (\inst4|clkOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~1_combout\,
	datab => \inst4|clkOut~q\,
	datac => \inst4|LessThan0~5_combout\,
	datad => \inst4|clkOut~8_combout\,
	combout => \inst4|clkOut~9_combout\);

-- Location: LCCOMB_X50_Y1_N18
\inst4|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|clkOut~feeder_combout\ = \inst4|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|clkOut~9_combout\,
	combout => \inst4|clkOut~feeder_combout\);

-- Location: FF_X50_Y1_N19
\inst4|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|clkOut~q\);

-- Location: CLKCTRL_G15
\inst4|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|clkOut~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y15_N10
\inst|s_shiftReg[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[6]~1_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(5)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(7),
	datad => \inst|s_shiftReg\(5),
	combout => \inst|s_shiftReg[6]~1_combout\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X114_Y15_N11
\inst|s_shiftReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[6]~1_combout\,
	asdata => \SW[6]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(6));

-- Location: LCCOMB_X114_Y15_N12
\inst|s_shiftReg[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[5]~2_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(4)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(6),
	datad => \inst|s_shiftReg\(4),
	combout => \inst|s_shiftReg[5]~2_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X114_Y15_N13
\inst|s_shiftReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[5]~2_combout\,
	asdata => \SW[5]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(5));

-- Location: LCCOMB_X114_Y15_N2
\inst|s_shiftReg[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[4]~3_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(3))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(3),
	datad => \inst|s_shiftReg\(5),
	combout => \inst|s_shiftReg[4]~3_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X114_Y15_N3
\inst|s_shiftReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[4]~3_combout\,
	asdata => \SW[4]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(4));

-- Location: LCCOMB_X114_Y15_N28
\inst|s_shiftReg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[3]~4_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(2))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(2),
	datad => \inst|s_shiftReg\(4),
	combout => \inst|s_shiftReg[3]~4_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X114_Y15_N29
\inst|s_shiftReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[3]~4_combout\,
	asdata => \SW[3]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(3));

-- Location: LCCOMB_X114_Y15_N14
\inst|s_shiftReg[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[2]~5_combout\ = (\SW[12]~input_o\ & (\inst|s_shiftReg\(1))) # (!\SW[12]~input_o\ & ((\inst|s_shiftReg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(1),
	datad => \inst|s_shiftReg\(3),
	combout => \inst|s_shiftReg[2]~5_combout\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X114_Y15_N15
\inst|s_shiftReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[2]~5_combout\,
	asdata => \SW[2]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(2));

-- Location: LCCOMB_X114_Y15_N8
\inst|s_shiftReg[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[1]~6_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(0)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(2),
	datad => \inst|s_shiftReg\(0),
	combout => \inst|s_shiftReg[1]~6_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X114_Y15_N9
\inst|s_shiftReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[1]~6_combout\,
	asdata => \SW[1]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(1));

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X114_Y15_N18
\inst|s_shiftReg~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg~10_combout\ = (\SW[11]~input_o\ & ((\inst|s_shiftReg\(7)))) # (!\SW[11]~input_o\ & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[8]~input_o\,
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg~10_combout\);

-- Location: LCCOMB_X114_Y15_N6
\inst|s_shiftReg[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[0]~7_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg~10_combout\))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst|s_shiftReg\(1),
	datad => \inst|s_shiftReg~10_combout\,
	combout => \inst|s_shiftReg[0]~7_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X114_Y15_N7
\inst|s_shiftReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[0]~7_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(0));

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y15_N22
\inst|s_shiftReg[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~8_combout\ = (\SW[11]~input_o\) # ((\SW[13]~input_o\ & ((\inst|s_shiftReg\(7)))) # (!\SW[13]~input_o\ & (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \inst|s_shiftReg\(7),
	combout => \inst|s_shiftReg[7]~8_combout\);

-- Location: LCCOMB_X114_Y15_N20
\inst|s_shiftReg[7]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~9_combout\ = (\SW[12]~input_o\ & ((\inst|s_shiftReg\(6)))) # (!\SW[12]~input_o\ & (!\SW[11]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datac => \SW[12]~input_o\,
	datad => \inst|s_shiftReg\(6),
	combout => \inst|s_shiftReg[7]~9_combout\);

-- Location: LCCOMB_X114_Y15_N24
\inst|s_shiftReg[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~0_combout\ = (\SW[12]~input_o\ & (((\inst|s_shiftReg[7]~9_combout\)))) # (!\SW[12]~input_o\ & (\inst|s_shiftReg[7]~8_combout\ & ((\inst|s_shiftReg\(0)) # (\inst|s_shiftReg[7]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_shiftReg\(0),
	datab => \SW[12]~input_o\,
	datac => \inst|s_shiftReg[7]~8_combout\,
	datad => \inst|s_shiftReg[7]~9_combout\,
	combout => \inst|s_shiftReg[7]~0_combout\);

-- Location: LCCOMB_X114_Y15_N16
\inst|s_shiftReg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_shiftReg[7]~feeder_combout\ = \inst|s_shiftReg[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_shiftReg[7]~0_combout\,
	combout => \inst|s_shiftReg[7]~feeder_combout\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X114_Y15_N17
\inst|s_shiftReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_clkOut~clkctrl_outclk\,
	d => \inst|s_shiftReg[7]~feeder_combout\,
	asdata => \SW[7]~input_o\,
	sload => \SW[10]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_shiftReg\(7));

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


