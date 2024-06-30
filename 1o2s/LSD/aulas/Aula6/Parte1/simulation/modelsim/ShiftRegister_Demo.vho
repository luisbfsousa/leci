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

-- DATE "05/03/2022 10:35:18"

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

ENTITY 	ShiftRegister_Demo IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END ShiftRegister_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ShiftRegister_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FreqDiv|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~0_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~0_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~1_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~2_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~1_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~6_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[0]~28\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[1]~30\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[2]~32\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[3]~34\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[4]~36\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[5]~38\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[6]~40\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[7]~42\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[8]~44\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[9]~46\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[10]~48\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[11]~50\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[12]~52\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[13]~54\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[14]~56\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[15]~58\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[16]~60\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[17]~62\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[18]~64\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[19]~66\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[20]~68\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[21]~70\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[22]~72\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[23]~74\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[24]~76\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[25]~78\ : std_logic;
SIGNAL \FreqDiv|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~3_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~4_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~2_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~3_combout\ : std_logic;
SIGNAL \FreqDiv|LessThan0~5_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~5_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~6_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~4_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~7_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~8_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~9_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~feeder_combout\ : std_logic;
SIGNAL \FreqDiv|clkOut~q\ : std_logic;
SIGNAL \FreqDiv|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[1]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[2]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[3]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[4]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[5]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[6]~feeder_combout\ : std_logic;
SIGNAL \ShiftRegister_8|s_dataOut[7]~feeder_combout\ : std_logic;
SIGNAL \FreqDiv|s_divCounter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \ShiftRegister_8|s_dataOut\ : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\FreqDiv|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \FreqDiv|clkOut~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ShiftRegister_8|s_dataOut\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X49_Y5_N6
\FreqDiv|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[0]~27_combout\ = \FreqDiv|s_divCounter\(0) $ (VCC)
-- \FreqDiv|s_divCounter[0]~28\ = CARRY(\FreqDiv|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(0),
	datad => VCC,
	combout => \FreqDiv|s_divCounter[0]~27_combout\,
	cout => \FreqDiv|s_divCounter[0]~28\);

-- Location: LCCOMB_X50_Y4_N6
\FreqDiv|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~0_combout\ = (!\FreqDiv|s_divCounter\(17) & (!\FreqDiv|s_divCounter\(12) & (!\FreqDiv|s_divCounter\(25) & !\FreqDiv|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(17),
	datab => \FreqDiv|s_divCounter\(12),
	datac => \FreqDiv|s_divCounter\(25),
	datad => \FreqDiv|s_divCounter\(19),
	combout => \FreqDiv|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y5_N0
\FreqDiv|clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~0_combout\ = (\FreqDiv|s_divCounter\(3) & (\FreqDiv|s_divCounter\(0) & (\FreqDiv|s_divCounter\(1) & \FreqDiv|s_divCounter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(3),
	datab => \FreqDiv|s_divCounter\(0),
	datac => \FreqDiv|s_divCounter\(1),
	datad => \FreqDiv|s_divCounter\(2),
	combout => \FreqDiv|clkOut~0_combout\);

-- Location: LCCOMB_X49_Y5_N2
\FreqDiv|clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~1_combout\ = (\FreqDiv|s_divCounter\(5) & (\FreqDiv|s_divCounter\(6) & (\FreqDiv|s_divCounter\(4) & \FreqDiv|clkOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(5),
	datab => \FreqDiv|s_divCounter\(6),
	datac => \FreqDiv|s_divCounter\(4),
	datad => \FreqDiv|clkOut~0_combout\,
	combout => \FreqDiv|clkOut~1_combout\);

-- Location: LCCOMB_X49_Y5_N4
\FreqDiv|clkOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~2_combout\ = (!\FreqDiv|s_divCounter\(8) & (!\FreqDiv|s_divCounter\(9) & (!\FreqDiv|s_divCounter\(10) & !\FreqDiv|s_divCounter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(8),
	datab => \FreqDiv|s_divCounter\(9),
	datac => \FreqDiv|s_divCounter\(10),
	datad => \FreqDiv|s_divCounter\(11),
	combout => \FreqDiv|clkOut~2_combout\);

-- Location: LCCOMB_X50_Y4_N24
\FreqDiv|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~1_combout\ = (\FreqDiv|LessThan0~0_combout\ & (\FreqDiv|clkOut~2_combout\ & ((!\FreqDiv|clkOut~1_combout\) # (!\FreqDiv|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|LessThan0~0_combout\,
	datab => \FreqDiv|s_divCounter\(7),
	datac => \FreqDiv|clkOut~1_combout\,
	datad => \FreqDiv|clkOut~2_combout\,
	combout => \FreqDiv|LessThan0~1_combout\);

-- Location: LCCOMB_X50_Y4_N0
\FreqDiv|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~6_combout\ = (!\FreqDiv|LessThan0~5_combout\ & !\FreqDiv|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FreqDiv|LessThan0~5_combout\,
	datad => \FreqDiv|LessThan0~1_combout\,
	combout => \FreqDiv|LessThan0~6_combout\);

-- Location: FF_X49_Y5_N7
\FreqDiv|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[0]~27_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(0));

-- Location: LCCOMB_X49_Y5_N8
\FreqDiv|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[1]~29_combout\ = (\FreqDiv|s_divCounter\(1) & (!\FreqDiv|s_divCounter[0]~28\)) # (!\FreqDiv|s_divCounter\(1) & ((\FreqDiv|s_divCounter[0]~28\) # (GND)))
-- \FreqDiv|s_divCounter[1]~30\ = CARRY((!\FreqDiv|s_divCounter[0]~28\) # (!\FreqDiv|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(1),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[0]~28\,
	combout => \FreqDiv|s_divCounter[1]~29_combout\,
	cout => \FreqDiv|s_divCounter[1]~30\);

-- Location: FF_X49_Y5_N9
\FreqDiv|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[1]~29_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(1));

-- Location: LCCOMB_X49_Y5_N10
\FreqDiv|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[2]~31_combout\ = (\FreqDiv|s_divCounter\(2) & (\FreqDiv|s_divCounter[1]~30\ $ (GND))) # (!\FreqDiv|s_divCounter\(2) & (!\FreqDiv|s_divCounter[1]~30\ & VCC))
-- \FreqDiv|s_divCounter[2]~32\ = CARRY((\FreqDiv|s_divCounter\(2) & !\FreqDiv|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(2),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[1]~30\,
	combout => \FreqDiv|s_divCounter[2]~31_combout\,
	cout => \FreqDiv|s_divCounter[2]~32\);

-- Location: FF_X49_Y5_N11
\FreqDiv|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[2]~31_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(2));

-- Location: LCCOMB_X49_Y5_N12
\FreqDiv|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[3]~33_combout\ = (\FreqDiv|s_divCounter\(3) & (!\FreqDiv|s_divCounter[2]~32\)) # (!\FreqDiv|s_divCounter\(3) & ((\FreqDiv|s_divCounter[2]~32\) # (GND)))
-- \FreqDiv|s_divCounter[3]~34\ = CARRY((!\FreqDiv|s_divCounter[2]~32\) # (!\FreqDiv|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(3),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[2]~32\,
	combout => \FreqDiv|s_divCounter[3]~33_combout\,
	cout => \FreqDiv|s_divCounter[3]~34\);

-- Location: FF_X49_Y5_N13
\FreqDiv|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[3]~33_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(3));

-- Location: LCCOMB_X49_Y5_N14
\FreqDiv|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[4]~35_combout\ = (\FreqDiv|s_divCounter\(4) & (\FreqDiv|s_divCounter[3]~34\ $ (GND))) # (!\FreqDiv|s_divCounter\(4) & (!\FreqDiv|s_divCounter[3]~34\ & VCC))
-- \FreqDiv|s_divCounter[4]~36\ = CARRY((\FreqDiv|s_divCounter\(4) & !\FreqDiv|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(4),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[3]~34\,
	combout => \FreqDiv|s_divCounter[4]~35_combout\,
	cout => \FreqDiv|s_divCounter[4]~36\);

-- Location: FF_X49_Y5_N15
\FreqDiv|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[4]~35_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(4));

-- Location: LCCOMB_X49_Y5_N16
\FreqDiv|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[5]~37_combout\ = (\FreqDiv|s_divCounter\(5) & (!\FreqDiv|s_divCounter[4]~36\)) # (!\FreqDiv|s_divCounter\(5) & ((\FreqDiv|s_divCounter[4]~36\) # (GND)))
-- \FreqDiv|s_divCounter[5]~38\ = CARRY((!\FreqDiv|s_divCounter[4]~36\) # (!\FreqDiv|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(5),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[4]~36\,
	combout => \FreqDiv|s_divCounter[5]~37_combout\,
	cout => \FreqDiv|s_divCounter[5]~38\);

-- Location: FF_X49_Y5_N17
\FreqDiv|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[5]~37_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(5));

-- Location: LCCOMB_X49_Y5_N18
\FreqDiv|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[6]~39_combout\ = (\FreqDiv|s_divCounter\(6) & (\FreqDiv|s_divCounter[5]~38\ $ (GND))) # (!\FreqDiv|s_divCounter\(6) & (!\FreqDiv|s_divCounter[5]~38\ & VCC))
-- \FreqDiv|s_divCounter[6]~40\ = CARRY((\FreqDiv|s_divCounter\(6) & !\FreqDiv|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(6),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[5]~38\,
	combout => \FreqDiv|s_divCounter[6]~39_combout\,
	cout => \FreqDiv|s_divCounter[6]~40\);

-- Location: FF_X49_Y5_N19
\FreqDiv|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[6]~39_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(6));

-- Location: LCCOMB_X49_Y5_N20
\FreqDiv|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[7]~41_combout\ = (\FreqDiv|s_divCounter\(7) & (!\FreqDiv|s_divCounter[6]~40\)) # (!\FreqDiv|s_divCounter\(7) & ((\FreqDiv|s_divCounter[6]~40\) # (GND)))
-- \FreqDiv|s_divCounter[7]~42\ = CARRY((!\FreqDiv|s_divCounter[6]~40\) # (!\FreqDiv|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(7),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[6]~40\,
	combout => \FreqDiv|s_divCounter[7]~41_combout\,
	cout => \FreqDiv|s_divCounter[7]~42\);

-- Location: FF_X49_Y5_N21
\FreqDiv|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[7]~41_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(7));

-- Location: LCCOMB_X49_Y5_N22
\FreqDiv|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[8]~43_combout\ = (\FreqDiv|s_divCounter\(8) & (\FreqDiv|s_divCounter[7]~42\ $ (GND))) # (!\FreqDiv|s_divCounter\(8) & (!\FreqDiv|s_divCounter[7]~42\ & VCC))
-- \FreqDiv|s_divCounter[8]~44\ = CARRY((\FreqDiv|s_divCounter\(8) & !\FreqDiv|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(8),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[7]~42\,
	combout => \FreqDiv|s_divCounter[8]~43_combout\,
	cout => \FreqDiv|s_divCounter[8]~44\);

-- Location: FF_X49_Y5_N23
\FreqDiv|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[8]~43_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(8));

-- Location: LCCOMB_X49_Y5_N24
\FreqDiv|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[9]~45_combout\ = (\FreqDiv|s_divCounter\(9) & (!\FreqDiv|s_divCounter[8]~44\)) # (!\FreqDiv|s_divCounter\(9) & ((\FreqDiv|s_divCounter[8]~44\) # (GND)))
-- \FreqDiv|s_divCounter[9]~46\ = CARRY((!\FreqDiv|s_divCounter[8]~44\) # (!\FreqDiv|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(9),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[8]~44\,
	combout => \FreqDiv|s_divCounter[9]~45_combout\,
	cout => \FreqDiv|s_divCounter[9]~46\);

-- Location: FF_X49_Y5_N25
\FreqDiv|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[9]~45_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(9));

-- Location: LCCOMB_X49_Y5_N26
\FreqDiv|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[10]~47_combout\ = (\FreqDiv|s_divCounter\(10) & (\FreqDiv|s_divCounter[9]~46\ $ (GND))) # (!\FreqDiv|s_divCounter\(10) & (!\FreqDiv|s_divCounter[9]~46\ & VCC))
-- \FreqDiv|s_divCounter[10]~48\ = CARRY((\FreqDiv|s_divCounter\(10) & !\FreqDiv|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(10),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[9]~46\,
	combout => \FreqDiv|s_divCounter[10]~47_combout\,
	cout => \FreqDiv|s_divCounter[10]~48\);

-- Location: FF_X49_Y5_N27
\FreqDiv|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[10]~47_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(10));

-- Location: LCCOMB_X49_Y5_N28
\FreqDiv|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[11]~49_combout\ = (\FreqDiv|s_divCounter\(11) & (!\FreqDiv|s_divCounter[10]~48\)) # (!\FreqDiv|s_divCounter\(11) & ((\FreqDiv|s_divCounter[10]~48\) # (GND)))
-- \FreqDiv|s_divCounter[11]~50\ = CARRY((!\FreqDiv|s_divCounter[10]~48\) # (!\FreqDiv|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(11),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[10]~48\,
	combout => \FreqDiv|s_divCounter[11]~49_combout\,
	cout => \FreqDiv|s_divCounter[11]~50\);

-- Location: FF_X49_Y5_N29
\FreqDiv|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[11]~49_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(11));

-- Location: LCCOMB_X49_Y5_N30
\FreqDiv|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[12]~51_combout\ = (\FreqDiv|s_divCounter\(12) & (\FreqDiv|s_divCounter[11]~50\ $ (GND))) # (!\FreqDiv|s_divCounter\(12) & (!\FreqDiv|s_divCounter[11]~50\ & VCC))
-- \FreqDiv|s_divCounter[12]~52\ = CARRY((\FreqDiv|s_divCounter\(12) & !\FreqDiv|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(12),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[11]~50\,
	combout => \FreqDiv|s_divCounter[12]~51_combout\,
	cout => \FreqDiv|s_divCounter[12]~52\);

-- Location: FF_X50_Y4_N11
\FreqDiv|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \FreqDiv|s_divCounter[12]~51_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(12));

-- Location: LCCOMB_X49_Y4_N0
\FreqDiv|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[13]~53_combout\ = (\FreqDiv|s_divCounter\(13) & (!\FreqDiv|s_divCounter[12]~52\)) # (!\FreqDiv|s_divCounter\(13) & ((\FreqDiv|s_divCounter[12]~52\) # (GND)))
-- \FreqDiv|s_divCounter[13]~54\ = CARRY((!\FreqDiv|s_divCounter[12]~52\) # (!\FreqDiv|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(13),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[12]~52\,
	combout => \FreqDiv|s_divCounter[13]~53_combout\,
	cout => \FreqDiv|s_divCounter[13]~54\);

-- Location: FF_X49_Y4_N1
\FreqDiv|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[13]~53_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(13));

-- Location: LCCOMB_X49_Y4_N2
\FreqDiv|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[14]~55_combout\ = (\FreqDiv|s_divCounter\(14) & (\FreqDiv|s_divCounter[13]~54\ $ (GND))) # (!\FreqDiv|s_divCounter\(14) & (!\FreqDiv|s_divCounter[13]~54\ & VCC))
-- \FreqDiv|s_divCounter[14]~56\ = CARRY((\FreqDiv|s_divCounter\(14) & !\FreqDiv|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(14),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[13]~54\,
	combout => \FreqDiv|s_divCounter[14]~55_combout\,
	cout => \FreqDiv|s_divCounter[14]~56\);

-- Location: FF_X49_Y4_N3
\FreqDiv|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[14]~55_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(14));

-- Location: LCCOMB_X49_Y4_N4
\FreqDiv|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[15]~57_combout\ = (\FreqDiv|s_divCounter\(15) & (!\FreqDiv|s_divCounter[14]~56\)) # (!\FreqDiv|s_divCounter\(15) & ((\FreqDiv|s_divCounter[14]~56\) # (GND)))
-- \FreqDiv|s_divCounter[15]~58\ = CARRY((!\FreqDiv|s_divCounter[14]~56\) # (!\FreqDiv|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(15),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[14]~56\,
	combout => \FreqDiv|s_divCounter[15]~57_combout\,
	cout => \FreqDiv|s_divCounter[15]~58\);

-- Location: FF_X49_Y4_N5
\FreqDiv|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[15]~57_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(15));

-- Location: LCCOMB_X49_Y4_N6
\FreqDiv|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[16]~59_combout\ = (\FreqDiv|s_divCounter\(16) & (\FreqDiv|s_divCounter[15]~58\ $ (GND))) # (!\FreqDiv|s_divCounter\(16) & (!\FreqDiv|s_divCounter[15]~58\ & VCC))
-- \FreqDiv|s_divCounter[16]~60\ = CARRY((\FreqDiv|s_divCounter\(16) & !\FreqDiv|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(16),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[15]~58\,
	combout => \FreqDiv|s_divCounter[16]~59_combout\,
	cout => \FreqDiv|s_divCounter[16]~60\);

-- Location: FF_X49_Y4_N7
\FreqDiv|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[16]~59_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(16));

-- Location: LCCOMB_X49_Y4_N8
\FreqDiv|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[17]~61_combout\ = (\FreqDiv|s_divCounter\(17) & (!\FreqDiv|s_divCounter[16]~60\)) # (!\FreqDiv|s_divCounter\(17) & ((\FreqDiv|s_divCounter[16]~60\) # (GND)))
-- \FreqDiv|s_divCounter[17]~62\ = CARRY((!\FreqDiv|s_divCounter[16]~60\) # (!\FreqDiv|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(17),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[16]~60\,
	combout => \FreqDiv|s_divCounter[17]~61_combout\,
	cout => \FreqDiv|s_divCounter[17]~62\);

-- Location: FF_X49_Y4_N9
\FreqDiv|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[17]~61_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(17));

-- Location: LCCOMB_X49_Y4_N10
\FreqDiv|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[18]~63_combout\ = (\FreqDiv|s_divCounter\(18) & (\FreqDiv|s_divCounter[17]~62\ $ (GND))) # (!\FreqDiv|s_divCounter\(18) & (!\FreqDiv|s_divCounter[17]~62\ & VCC))
-- \FreqDiv|s_divCounter[18]~64\ = CARRY((\FreqDiv|s_divCounter\(18) & !\FreqDiv|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(18),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[17]~62\,
	combout => \FreqDiv|s_divCounter[18]~63_combout\,
	cout => \FreqDiv|s_divCounter[18]~64\);

-- Location: FF_X49_Y4_N11
\FreqDiv|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[18]~63_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(18));

-- Location: LCCOMB_X49_Y4_N12
\FreqDiv|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[19]~65_combout\ = (\FreqDiv|s_divCounter\(19) & (!\FreqDiv|s_divCounter[18]~64\)) # (!\FreqDiv|s_divCounter\(19) & ((\FreqDiv|s_divCounter[18]~64\) # (GND)))
-- \FreqDiv|s_divCounter[19]~66\ = CARRY((!\FreqDiv|s_divCounter[18]~64\) # (!\FreqDiv|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(19),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[18]~64\,
	combout => \FreqDiv|s_divCounter[19]~65_combout\,
	cout => \FreqDiv|s_divCounter[19]~66\);

-- Location: FF_X49_Y4_N13
\FreqDiv|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[19]~65_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(19));

-- Location: LCCOMB_X49_Y4_N14
\FreqDiv|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[20]~67_combout\ = (\FreqDiv|s_divCounter\(20) & (\FreqDiv|s_divCounter[19]~66\ $ (GND))) # (!\FreqDiv|s_divCounter\(20) & (!\FreqDiv|s_divCounter[19]~66\ & VCC))
-- \FreqDiv|s_divCounter[20]~68\ = CARRY((\FreqDiv|s_divCounter\(20) & !\FreqDiv|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(20),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[19]~66\,
	combout => \FreqDiv|s_divCounter[20]~67_combout\,
	cout => \FreqDiv|s_divCounter[20]~68\);

-- Location: FF_X49_Y4_N15
\FreqDiv|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[20]~67_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(20));

-- Location: LCCOMB_X49_Y4_N16
\FreqDiv|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[21]~69_combout\ = (\FreqDiv|s_divCounter\(21) & (!\FreqDiv|s_divCounter[20]~68\)) # (!\FreqDiv|s_divCounter\(21) & ((\FreqDiv|s_divCounter[20]~68\) # (GND)))
-- \FreqDiv|s_divCounter[21]~70\ = CARRY((!\FreqDiv|s_divCounter[20]~68\) # (!\FreqDiv|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(21),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[20]~68\,
	combout => \FreqDiv|s_divCounter[21]~69_combout\,
	cout => \FreqDiv|s_divCounter[21]~70\);

-- Location: FF_X49_Y4_N17
\FreqDiv|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[21]~69_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(21));

-- Location: LCCOMB_X49_Y4_N18
\FreqDiv|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[22]~71_combout\ = (\FreqDiv|s_divCounter\(22) & (\FreqDiv|s_divCounter[21]~70\ $ (GND))) # (!\FreqDiv|s_divCounter\(22) & (!\FreqDiv|s_divCounter[21]~70\ & VCC))
-- \FreqDiv|s_divCounter[22]~72\ = CARRY((\FreqDiv|s_divCounter\(22) & !\FreqDiv|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(22),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[21]~70\,
	combout => \FreqDiv|s_divCounter[22]~71_combout\,
	cout => \FreqDiv|s_divCounter[22]~72\);

-- Location: FF_X49_Y4_N19
\FreqDiv|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[22]~71_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(22));

-- Location: LCCOMB_X49_Y4_N20
\FreqDiv|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[23]~73_combout\ = (\FreqDiv|s_divCounter\(23) & (!\FreqDiv|s_divCounter[22]~72\)) # (!\FreqDiv|s_divCounter\(23) & ((\FreqDiv|s_divCounter[22]~72\) # (GND)))
-- \FreqDiv|s_divCounter[23]~74\ = CARRY((!\FreqDiv|s_divCounter[22]~72\) # (!\FreqDiv|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(23),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[22]~72\,
	combout => \FreqDiv|s_divCounter[23]~73_combout\,
	cout => \FreqDiv|s_divCounter[23]~74\);

-- Location: FF_X49_Y4_N21
\FreqDiv|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[23]~73_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(23));

-- Location: LCCOMB_X49_Y4_N22
\FreqDiv|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[24]~75_combout\ = (\FreqDiv|s_divCounter\(24) & (\FreqDiv|s_divCounter[23]~74\ $ (GND))) # (!\FreqDiv|s_divCounter\(24) & (!\FreqDiv|s_divCounter[23]~74\ & VCC))
-- \FreqDiv|s_divCounter[24]~76\ = CARRY((\FreqDiv|s_divCounter\(24) & !\FreqDiv|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(24),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[23]~74\,
	combout => \FreqDiv|s_divCounter[24]~75_combout\,
	cout => \FreqDiv|s_divCounter[24]~76\);

-- Location: FF_X49_Y4_N23
\FreqDiv|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[24]~75_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(24));

-- Location: LCCOMB_X49_Y4_N24
\FreqDiv|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[25]~77_combout\ = (\FreqDiv|s_divCounter\(25) & (!\FreqDiv|s_divCounter[24]~76\)) # (!\FreqDiv|s_divCounter\(25) & ((\FreqDiv|s_divCounter[24]~76\) # (GND)))
-- \FreqDiv|s_divCounter[25]~78\ = CARRY((!\FreqDiv|s_divCounter[24]~76\) # (!\FreqDiv|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FreqDiv|s_divCounter\(25),
	datad => VCC,
	cin => \FreqDiv|s_divCounter[24]~76\,
	combout => \FreqDiv|s_divCounter[25]~77_combout\,
	cout => \FreqDiv|s_divCounter[25]~78\);

-- Location: FF_X49_Y4_N25
\FreqDiv|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[25]~77_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(25));

-- Location: LCCOMB_X49_Y4_N26
\FreqDiv|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|s_divCounter[26]~79_combout\ = \FreqDiv|s_divCounter\(26) $ (!\FreqDiv|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(26),
	cin => \FreqDiv|s_divCounter[25]~78\,
	combout => \FreqDiv|s_divCounter[26]~79_combout\);

-- Location: FF_X49_Y4_N27
\FreqDiv|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|s_divCounter[26]~79_combout\,
	sclr => \FreqDiv|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|s_divCounter\(26));

-- Location: LCCOMB_X49_Y4_N28
\FreqDiv|clkOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~3_combout\ = (\FreqDiv|s_divCounter\(23) & (\FreqDiv|s_divCounter\(21) & (\FreqDiv|s_divCounter\(20) & \FreqDiv|s_divCounter\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(23),
	datab => \FreqDiv|s_divCounter\(21),
	datac => \FreqDiv|s_divCounter\(20),
	datad => \FreqDiv|s_divCounter\(22),
	combout => \FreqDiv|clkOut~3_combout\);

-- Location: LCCOMB_X50_Y4_N22
\FreqDiv|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~4_combout\ = (((!\FreqDiv|s_divCounter\(18) & !\FreqDiv|s_divCounter\(19))) # (!\FreqDiv|clkOut~3_combout\)) # (!\FreqDiv|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(18),
	datab => \FreqDiv|s_divCounter\(24),
	datac => \FreqDiv|s_divCounter\(19),
	datad => \FreqDiv|clkOut~3_combout\,
	combout => \FreqDiv|LessThan0~4_combout\);

-- Location: LCCOMB_X49_Y4_N30
\FreqDiv|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~2_combout\ = (((!\FreqDiv|s_divCounter\(16)) # (!\FreqDiv|s_divCounter\(15))) # (!\FreqDiv|s_divCounter\(13))) # (!\FreqDiv|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(14),
	datab => \FreqDiv|s_divCounter\(13),
	datac => \FreqDiv|s_divCounter\(15),
	datad => \FreqDiv|s_divCounter\(16),
	combout => \FreqDiv|LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y4_N18
\FreqDiv|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~3_combout\ = (!\FreqDiv|s_divCounter\(17) & (!\FreqDiv|s_divCounter\(25) & (!\FreqDiv|s_divCounter\(19) & \FreqDiv|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(17),
	datab => \FreqDiv|s_divCounter\(25),
	datac => \FreqDiv|s_divCounter\(19),
	datad => \FreqDiv|LessThan0~2_combout\,
	combout => \FreqDiv|LessThan0~3_combout\);

-- Location: LCCOMB_X50_Y4_N30
\FreqDiv|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|LessThan0~5_combout\ = ((\FreqDiv|LessThan0~3_combout\) # ((!\FreqDiv|s_divCounter\(25) & \FreqDiv|LessThan0~4_combout\))) # (!\FreqDiv|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(26),
	datab => \FreqDiv|s_divCounter\(25),
	datac => \FreqDiv|LessThan0~4_combout\,
	datad => \FreqDiv|LessThan0~3_combout\,
	combout => \FreqDiv|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y4_N12
\FreqDiv|clkOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~5_combout\ = (!\FreqDiv|s_divCounter\(18) & (!\FreqDiv|s_divCounter\(16) & (\FreqDiv|s_divCounter\(12) & \FreqDiv|s_divCounter\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(18),
	datab => \FreqDiv|s_divCounter\(16),
	datac => \FreqDiv|s_divCounter\(12),
	datad => \FreqDiv|s_divCounter\(17),
	combout => \FreqDiv|clkOut~5_combout\);

-- Location: LCCOMB_X50_Y4_N26
\FreqDiv|clkOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~6_combout\ = (\FreqDiv|s_divCounter\(19) & (!\FreqDiv|s_divCounter\(24) & (!\FreqDiv|s_divCounter\(26) & \FreqDiv|s_divCounter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(19),
	datab => \FreqDiv|s_divCounter\(24),
	datac => \FreqDiv|s_divCounter\(26),
	datad => \FreqDiv|s_divCounter\(25),
	combout => \FreqDiv|clkOut~6_combout\);

-- Location: LCCOMB_X50_Y4_N16
\FreqDiv|clkOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~4_combout\ = (\FreqDiv|s_divCounter\(13) & (\FreqDiv|s_divCounter\(15) & (\FreqDiv|s_divCounter\(14) & !\FreqDiv|s_divCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|s_divCounter\(13),
	datab => \FreqDiv|s_divCounter\(15),
	datac => \FreqDiv|s_divCounter\(14),
	datad => \FreqDiv|s_divCounter\(7),
	combout => \FreqDiv|clkOut~4_combout\);

-- Location: LCCOMB_X50_Y4_N14
\FreqDiv|clkOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~7_combout\ = (\FreqDiv|clkOut~5_combout\ & (\FreqDiv|clkOut~6_combout\ & \FreqDiv|clkOut~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|clkOut~5_combout\,
	datac => \FreqDiv|clkOut~6_combout\,
	datad => \FreqDiv|clkOut~4_combout\,
	combout => \FreqDiv|clkOut~7_combout\);

-- Location: LCCOMB_X50_Y4_N20
\FreqDiv|clkOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~8_combout\ = (\FreqDiv|clkOut~1_combout\ & (\FreqDiv|clkOut~3_combout\ & (\FreqDiv|clkOut~7_combout\ & \FreqDiv|clkOut~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|clkOut~1_combout\,
	datab => \FreqDiv|clkOut~3_combout\,
	datac => \FreqDiv|clkOut~7_combout\,
	datad => \FreqDiv|clkOut~2_combout\,
	combout => \FreqDiv|clkOut~8_combout\);

-- Location: LCCOMB_X50_Y4_N28
\FreqDiv|clkOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~9_combout\ = (\FreqDiv|LessThan0~5_combout\ & (((\FreqDiv|clkOut~q\) # (\FreqDiv|clkOut~8_combout\)))) # (!\FreqDiv|LessThan0~5_combout\ & (\FreqDiv|LessThan0~1_combout\ & ((\FreqDiv|clkOut~q\) # (\FreqDiv|clkOut~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|LessThan0~5_combout\,
	datab => \FreqDiv|LessThan0~1_combout\,
	datac => \FreqDiv|clkOut~q\,
	datad => \FreqDiv|clkOut~8_combout\,
	combout => \FreqDiv|clkOut~9_combout\);

-- Location: LCCOMB_X50_Y4_N8
\FreqDiv|clkOut~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \FreqDiv|clkOut~feeder_combout\ = \FreqDiv|clkOut~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FreqDiv|clkOut~9_combout\,
	combout => \FreqDiv|clkOut~feeder_combout\);

-- Location: FF_X50_Y4_N9
\FreqDiv|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \FreqDiv|clkOut~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FreqDiv|clkOut~q\);

-- Location: CLKCTRL_G15
\FreqDiv|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \FreqDiv|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \FreqDiv|clkOut~clkctrl_outclk\);

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

-- Location: FF_X88_Y72_N29
\ShiftRegister_8|s_dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(0));

-- Location: LCCOMB_X88_Y72_N18
\ShiftRegister_8|s_dataOut[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[1]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(0),
	combout => \ShiftRegister_8|s_dataOut[1]~feeder_combout\);

-- Location: FF_X88_Y72_N19
\ShiftRegister_8|s_dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(1));

-- Location: LCCOMB_X88_Y72_N16
\ShiftRegister_8|s_dataOut[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[2]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(1),
	combout => \ShiftRegister_8|s_dataOut[2]~feeder_combout\);

-- Location: FF_X88_Y72_N17
\ShiftRegister_8|s_dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(2));

-- Location: LCCOMB_X88_Y72_N6
\ShiftRegister_8|s_dataOut[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[3]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(2),
	combout => \ShiftRegister_8|s_dataOut[3]~feeder_combout\);

-- Location: FF_X88_Y72_N7
\ShiftRegister_8|s_dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(3));

-- Location: LCCOMB_X88_Y72_N0
\ShiftRegister_8|s_dataOut[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[4]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(3),
	combout => \ShiftRegister_8|s_dataOut[4]~feeder_combout\);

-- Location: FF_X88_Y72_N1
\ShiftRegister_8|s_dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(4));

-- Location: LCCOMB_X88_Y72_N2
\ShiftRegister_8|s_dataOut[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[5]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(4),
	combout => \ShiftRegister_8|s_dataOut[5]~feeder_combout\);

-- Location: FF_X88_Y72_N3
\ShiftRegister_8|s_dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(5));

-- Location: LCCOMB_X88_Y72_N20
\ShiftRegister_8|s_dataOut[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[6]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(5),
	combout => \ShiftRegister_8|s_dataOut[6]~feeder_combout\);

-- Location: FF_X88_Y72_N21
\ShiftRegister_8|s_dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(6));

-- Location: LCCOMB_X88_Y72_N22
\ShiftRegister_8|s_dataOut[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRegister_8|s_dataOut[7]~feeder_combout\ = \ShiftRegister_8|s_dataOut\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ShiftRegister_8|s_dataOut\(6),
	combout => \ShiftRegister_8|s_dataOut[7]~feeder_combout\);

-- Location: FF_X88_Y72_N23
\ShiftRegister_8|s_dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \FreqDiv|clkOut~clkctrl_outclk\,
	d => \ShiftRegister_8|s_dataOut[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ShiftRegister_8|s_dataOut\(7));

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


