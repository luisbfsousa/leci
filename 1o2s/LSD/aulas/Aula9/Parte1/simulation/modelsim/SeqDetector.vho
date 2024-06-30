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

-- DATE "05/31/2022 10:53:18"

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

ENTITY 	SeqDetector IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0)
	);
END SeqDetector;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SeqDetector IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|clkOut~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \divisor|s_divCounter[0]~27_combout\ : std_logic;
SIGNAL \divisor|LessThan0~5_combout\ : std_logic;
SIGNAL \divisor|LessThan0~4_combout\ : std_logic;
SIGNAL \divisor|LessThan0~2_combout\ : std_logic;
SIGNAL \divisor|LessThan1~0_combout\ : std_logic;
SIGNAL \divisor|LessThan0~3_combout\ : std_logic;
SIGNAL \divisor|LessThan1~4_combout\ : std_logic;
SIGNAL \divisor|LessThan1~2_combout\ : std_logic;
SIGNAL \divisor|LessThan1~3_combout\ : std_logic;
SIGNAL \divisor|LessThan0~0_combout\ : std_logic;
SIGNAL \divisor|LessThan0~1_combout\ : std_logic;
SIGNAL \divisor|LessThan0~6_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[0]~28\ : std_logic;
SIGNAL \divisor|s_divCounter[1]~29_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[1]~30\ : std_logic;
SIGNAL \divisor|s_divCounter[2]~31_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[2]~32\ : std_logic;
SIGNAL \divisor|s_divCounter[3]~33_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[3]~34\ : std_logic;
SIGNAL \divisor|s_divCounter[4]~35_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[4]~36\ : std_logic;
SIGNAL \divisor|s_divCounter[5]~37_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[5]~38\ : std_logic;
SIGNAL \divisor|s_divCounter[6]~39_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[6]~40\ : std_logic;
SIGNAL \divisor|s_divCounter[7]~41_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[7]~42\ : std_logic;
SIGNAL \divisor|s_divCounter[8]~43_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[8]~44\ : std_logic;
SIGNAL \divisor|s_divCounter[9]~45_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[9]~46\ : std_logic;
SIGNAL \divisor|s_divCounter[10]~47_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[10]~48\ : std_logic;
SIGNAL \divisor|s_divCounter[11]~49_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[11]~50\ : std_logic;
SIGNAL \divisor|s_divCounter[12]~51_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[12]~52\ : std_logic;
SIGNAL \divisor|s_divCounter[13]~53_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[13]~54\ : std_logic;
SIGNAL \divisor|s_divCounter[14]~55_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[14]~56\ : std_logic;
SIGNAL \divisor|s_divCounter[15]~57_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[15]~58\ : std_logic;
SIGNAL \divisor|s_divCounter[16]~59_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[16]~60\ : std_logic;
SIGNAL \divisor|s_divCounter[17]~61_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[17]~62\ : std_logic;
SIGNAL \divisor|s_divCounter[18]~63_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[18]~64\ : std_logic;
SIGNAL \divisor|s_divCounter[19]~65_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[19]~66\ : std_logic;
SIGNAL \divisor|s_divCounter[20]~67_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[20]~68\ : std_logic;
SIGNAL \divisor|s_divCounter[21]~69_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[21]~70\ : std_logic;
SIGNAL \divisor|s_divCounter[22]~71_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[22]~72\ : std_logic;
SIGNAL \divisor|s_divCounter[23]~73_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[23]~74\ : std_logic;
SIGNAL \divisor|s_divCounter[24]~75_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[24]~76\ : std_logic;
SIGNAL \divisor|s_divCounter[25]~77_combout\ : std_logic;
SIGNAL \divisor|s_divCounter[25]~78\ : std_logic;
SIGNAL \divisor|s_divCounter[26]~79_combout\ : std_logic;
SIGNAL \divisor|LessThan1~1_combout\ : std_logic;
SIGNAL \divisor|LessThan1~5_combout\ : std_logic;
SIGNAL \divisor|LessThan1~6_combout\ : std_logic;
SIGNAL \divisor|LessThan1~7_combout\ : std_logic;
SIGNAL \divisor|LessThan1~8_combout\ : std_logic;
SIGNAL \divisor|clkOut~q\ : std_logic;
SIGNAL \divisor|clkOut~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \system_core|PS~8_combout\ : std_logic;
SIGNAL \system_core|PS.B~q\ : std_logic;
SIGNAL \system_core|PS~7_combout\ : std_logic;
SIGNAL \system_core|PS.C~q\ : std_logic;
SIGNAL \system_core|PS~6_combout\ : std_logic;
SIGNAL \system_core|PS.D~q\ : std_logic;
SIGNAL \system_core|zOut~1_combout\ : std_logic;
SIGNAL \divisor|s_divCounter\ : std_logic_vector(26 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\divisor|clkOut~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \divisor|clkOut~q\);
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
	i => \system_core|zOut~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \divisor|clkOut~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: LCCOMB_X96_Y69_N6
\divisor|s_divCounter[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[0]~27_combout\ = \divisor|s_divCounter\(0) $ (VCC)
-- \divisor|s_divCounter[0]~28\ = CARRY(\divisor|s_divCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(0),
	datad => VCC,
	combout => \divisor|s_divCounter[0]~27_combout\,
	cout => \divisor|s_divCounter[0]~28\);

-- Location: LCCOMB_X95_Y69_N22
\divisor|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~5_combout\ = (((!\divisor|s_divCounter\(15)) # (!\divisor|s_divCounter\(16))) # (!\divisor|s_divCounter\(13))) # (!\divisor|s_divCounter\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(14),
	datab => \divisor|s_divCounter\(13),
	datac => \divisor|s_divCounter\(16),
	datad => \divisor|s_divCounter\(15),
	combout => \divisor|LessThan0~5_combout\);

-- Location: LCCOMB_X95_Y69_N4
\divisor|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~4_combout\ = (!\divisor|s_divCounter\(19) & (!\divisor|s_divCounter\(25) & !\divisor|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datac => \divisor|s_divCounter\(25),
	datad => \divisor|s_divCounter\(17),
	combout => \divisor|LessThan0~4_combout\);

-- Location: LCCOMB_X95_Y69_N20
\divisor|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~2_combout\ = ((!\divisor|s_divCounter\(19) & !\divisor|s_divCounter\(18))) # (!\divisor|s_divCounter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datac => \divisor|s_divCounter\(24),
	datad => \divisor|s_divCounter\(18),
	combout => \divisor|LessThan0~2_combout\);

-- Location: LCCOMB_X96_Y68_N28
\divisor|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~0_combout\ = (\divisor|s_divCounter\(22) & (\divisor|s_divCounter\(21) & (\divisor|s_divCounter\(20) & \divisor|s_divCounter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(22),
	datab => \divisor|s_divCounter\(21),
	datac => \divisor|s_divCounter\(20),
	datad => \divisor|s_divCounter\(23),
	combout => \divisor|LessThan1~0_combout\);

-- Location: LCCOMB_X95_Y69_N8
\divisor|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~3_combout\ = ((!\divisor|s_divCounter\(25) & ((\divisor|LessThan0~2_combout\) # (!\divisor|LessThan1~0_combout\)))) # (!\divisor|s_divCounter\(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(25),
	datab => \divisor|LessThan0~2_combout\,
	datac => \divisor|s_divCounter\(26),
	datad => \divisor|LessThan1~0_combout\,
	combout => \divisor|LessThan0~3_combout\);

-- Location: LCCOMB_X96_Y69_N4
\divisor|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~4_combout\ = (!\divisor|s_divCounter\(8) & (!\divisor|s_divCounter\(11) & (!\divisor|s_divCounter\(10) & !\divisor|s_divCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(8),
	datab => \divisor|s_divCounter\(11),
	datac => \divisor|s_divCounter\(10),
	datad => \divisor|s_divCounter\(9),
	combout => \divisor|LessThan1~4_combout\);

-- Location: LCCOMB_X96_Y69_N0
\divisor|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~2_combout\ = (((!\divisor|s_divCounter\(3)) # (!\divisor|s_divCounter\(0))) # (!\divisor|s_divCounter\(1))) # (!\divisor|s_divCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(2),
	datab => \divisor|s_divCounter\(1),
	datac => \divisor|s_divCounter\(0),
	datad => \divisor|s_divCounter\(3),
	combout => \divisor|LessThan1~2_combout\);

-- Location: LCCOMB_X96_Y69_N2
\divisor|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~3_combout\ = (((\divisor|LessThan1~2_combout\) # (!\divisor|s_divCounter\(4))) # (!\divisor|s_divCounter\(5))) # (!\divisor|s_divCounter\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(6),
	datab => \divisor|s_divCounter\(5),
	datac => \divisor|s_divCounter\(4),
	datad => \divisor|LessThan1~2_combout\,
	combout => \divisor|LessThan1~3_combout\);

-- Location: LCCOMB_X95_Y69_N28
\divisor|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~0_combout\ = (!\divisor|s_divCounter\(17) & (!\divisor|s_divCounter\(12) & (!\divisor|s_divCounter\(25) & !\divisor|s_divCounter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(17),
	datab => \divisor|s_divCounter\(12),
	datac => \divisor|s_divCounter\(25),
	datad => \divisor|s_divCounter\(19),
	combout => \divisor|LessThan0~0_combout\);

-- Location: LCCOMB_X95_Y69_N6
\divisor|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~1_combout\ = (\divisor|LessThan1~4_combout\ & (\divisor|LessThan0~0_combout\ & ((\divisor|LessThan1~3_combout\) # (!\divisor|s_divCounter\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan1~4_combout\,
	datab => \divisor|s_divCounter\(7),
	datac => \divisor|LessThan1~3_combout\,
	datad => \divisor|LessThan0~0_combout\,
	combout => \divisor|LessThan0~1_combout\);

-- Location: LCCOMB_X95_Y69_N30
\divisor|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan0~6_combout\ = (!\divisor|LessThan0~3_combout\ & (!\divisor|LessThan0~1_combout\ & ((!\divisor|LessThan0~4_combout\) # (!\divisor|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan0~5_combout\,
	datab => \divisor|LessThan0~4_combout\,
	datac => \divisor|LessThan0~3_combout\,
	datad => \divisor|LessThan0~1_combout\,
	combout => \divisor|LessThan0~6_combout\);

-- Location: FF_X96_Y69_N7
\divisor|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[0]~27_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(0));

-- Location: LCCOMB_X96_Y69_N8
\divisor|s_divCounter[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[1]~29_combout\ = (\divisor|s_divCounter\(1) & (!\divisor|s_divCounter[0]~28\)) # (!\divisor|s_divCounter\(1) & ((\divisor|s_divCounter[0]~28\) # (GND)))
-- \divisor|s_divCounter[1]~30\ = CARRY((!\divisor|s_divCounter[0]~28\) # (!\divisor|s_divCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(1),
	datad => VCC,
	cin => \divisor|s_divCounter[0]~28\,
	combout => \divisor|s_divCounter[1]~29_combout\,
	cout => \divisor|s_divCounter[1]~30\);

-- Location: FF_X96_Y69_N9
\divisor|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[1]~29_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(1));

-- Location: LCCOMB_X96_Y69_N10
\divisor|s_divCounter[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[2]~31_combout\ = (\divisor|s_divCounter\(2) & (\divisor|s_divCounter[1]~30\ $ (GND))) # (!\divisor|s_divCounter\(2) & (!\divisor|s_divCounter[1]~30\ & VCC))
-- \divisor|s_divCounter[2]~32\ = CARRY((\divisor|s_divCounter\(2) & !\divisor|s_divCounter[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(2),
	datad => VCC,
	cin => \divisor|s_divCounter[1]~30\,
	combout => \divisor|s_divCounter[2]~31_combout\,
	cout => \divisor|s_divCounter[2]~32\);

-- Location: FF_X96_Y69_N11
\divisor|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[2]~31_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(2));

-- Location: LCCOMB_X96_Y69_N12
\divisor|s_divCounter[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[3]~33_combout\ = (\divisor|s_divCounter\(3) & (!\divisor|s_divCounter[2]~32\)) # (!\divisor|s_divCounter\(3) & ((\divisor|s_divCounter[2]~32\) # (GND)))
-- \divisor|s_divCounter[3]~34\ = CARRY((!\divisor|s_divCounter[2]~32\) # (!\divisor|s_divCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(3),
	datad => VCC,
	cin => \divisor|s_divCounter[2]~32\,
	combout => \divisor|s_divCounter[3]~33_combout\,
	cout => \divisor|s_divCounter[3]~34\);

-- Location: FF_X96_Y69_N13
\divisor|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[3]~33_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(3));

-- Location: LCCOMB_X96_Y69_N14
\divisor|s_divCounter[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[4]~35_combout\ = (\divisor|s_divCounter\(4) & (\divisor|s_divCounter[3]~34\ $ (GND))) # (!\divisor|s_divCounter\(4) & (!\divisor|s_divCounter[3]~34\ & VCC))
-- \divisor|s_divCounter[4]~36\ = CARRY((\divisor|s_divCounter\(4) & !\divisor|s_divCounter[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(4),
	datad => VCC,
	cin => \divisor|s_divCounter[3]~34\,
	combout => \divisor|s_divCounter[4]~35_combout\,
	cout => \divisor|s_divCounter[4]~36\);

-- Location: FF_X96_Y69_N15
\divisor|s_divCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[4]~35_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(4));

-- Location: LCCOMB_X96_Y69_N16
\divisor|s_divCounter[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[5]~37_combout\ = (\divisor|s_divCounter\(5) & (!\divisor|s_divCounter[4]~36\)) # (!\divisor|s_divCounter\(5) & ((\divisor|s_divCounter[4]~36\) # (GND)))
-- \divisor|s_divCounter[5]~38\ = CARRY((!\divisor|s_divCounter[4]~36\) # (!\divisor|s_divCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(5),
	datad => VCC,
	cin => \divisor|s_divCounter[4]~36\,
	combout => \divisor|s_divCounter[5]~37_combout\,
	cout => \divisor|s_divCounter[5]~38\);

-- Location: FF_X96_Y69_N17
\divisor|s_divCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[5]~37_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(5));

-- Location: LCCOMB_X96_Y69_N18
\divisor|s_divCounter[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[6]~39_combout\ = (\divisor|s_divCounter\(6) & (\divisor|s_divCounter[5]~38\ $ (GND))) # (!\divisor|s_divCounter\(6) & (!\divisor|s_divCounter[5]~38\ & VCC))
-- \divisor|s_divCounter[6]~40\ = CARRY((\divisor|s_divCounter\(6) & !\divisor|s_divCounter[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(6),
	datad => VCC,
	cin => \divisor|s_divCounter[5]~38\,
	combout => \divisor|s_divCounter[6]~39_combout\,
	cout => \divisor|s_divCounter[6]~40\);

-- Location: FF_X96_Y69_N19
\divisor|s_divCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[6]~39_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(6));

-- Location: LCCOMB_X96_Y69_N20
\divisor|s_divCounter[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[7]~41_combout\ = (\divisor|s_divCounter\(7) & (!\divisor|s_divCounter[6]~40\)) # (!\divisor|s_divCounter\(7) & ((\divisor|s_divCounter[6]~40\) # (GND)))
-- \divisor|s_divCounter[7]~42\ = CARRY((!\divisor|s_divCounter[6]~40\) # (!\divisor|s_divCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(7),
	datad => VCC,
	cin => \divisor|s_divCounter[6]~40\,
	combout => \divisor|s_divCounter[7]~41_combout\,
	cout => \divisor|s_divCounter[7]~42\);

-- Location: FF_X96_Y69_N21
\divisor|s_divCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[7]~41_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(7));

-- Location: LCCOMB_X96_Y69_N22
\divisor|s_divCounter[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[8]~43_combout\ = (\divisor|s_divCounter\(8) & (\divisor|s_divCounter[7]~42\ $ (GND))) # (!\divisor|s_divCounter\(8) & (!\divisor|s_divCounter[7]~42\ & VCC))
-- \divisor|s_divCounter[8]~44\ = CARRY((\divisor|s_divCounter\(8) & !\divisor|s_divCounter[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(8),
	datad => VCC,
	cin => \divisor|s_divCounter[7]~42\,
	combout => \divisor|s_divCounter[8]~43_combout\,
	cout => \divisor|s_divCounter[8]~44\);

-- Location: FF_X96_Y69_N23
\divisor|s_divCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[8]~43_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(8));

-- Location: LCCOMB_X96_Y69_N24
\divisor|s_divCounter[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[9]~45_combout\ = (\divisor|s_divCounter\(9) & (!\divisor|s_divCounter[8]~44\)) # (!\divisor|s_divCounter\(9) & ((\divisor|s_divCounter[8]~44\) # (GND)))
-- \divisor|s_divCounter[9]~46\ = CARRY((!\divisor|s_divCounter[8]~44\) # (!\divisor|s_divCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(9),
	datad => VCC,
	cin => \divisor|s_divCounter[8]~44\,
	combout => \divisor|s_divCounter[9]~45_combout\,
	cout => \divisor|s_divCounter[9]~46\);

-- Location: FF_X96_Y69_N25
\divisor|s_divCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[9]~45_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(9));

-- Location: LCCOMB_X96_Y69_N26
\divisor|s_divCounter[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[10]~47_combout\ = (\divisor|s_divCounter\(10) & (\divisor|s_divCounter[9]~46\ $ (GND))) # (!\divisor|s_divCounter\(10) & (!\divisor|s_divCounter[9]~46\ & VCC))
-- \divisor|s_divCounter[10]~48\ = CARRY((\divisor|s_divCounter\(10) & !\divisor|s_divCounter[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(10),
	datad => VCC,
	cin => \divisor|s_divCounter[9]~46\,
	combout => \divisor|s_divCounter[10]~47_combout\,
	cout => \divisor|s_divCounter[10]~48\);

-- Location: FF_X96_Y69_N27
\divisor|s_divCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[10]~47_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(10));

-- Location: LCCOMB_X96_Y69_N28
\divisor|s_divCounter[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[11]~49_combout\ = (\divisor|s_divCounter\(11) & (!\divisor|s_divCounter[10]~48\)) # (!\divisor|s_divCounter\(11) & ((\divisor|s_divCounter[10]~48\) # (GND)))
-- \divisor|s_divCounter[11]~50\ = CARRY((!\divisor|s_divCounter[10]~48\) # (!\divisor|s_divCounter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(11),
	datad => VCC,
	cin => \divisor|s_divCounter[10]~48\,
	combout => \divisor|s_divCounter[11]~49_combout\,
	cout => \divisor|s_divCounter[11]~50\);

-- Location: FF_X96_Y69_N29
\divisor|s_divCounter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[11]~49_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(11));

-- Location: LCCOMB_X96_Y69_N30
\divisor|s_divCounter[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[12]~51_combout\ = (\divisor|s_divCounter\(12) & (\divisor|s_divCounter[11]~50\ $ (GND))) # (!\divisor|s_divCounter\(12) & (!\divisor|s_divCounter[11]~50\ & VCC))
-- \divisor|s_divCounter[12]~52\ = CARRY((\divisor|s_divCounter\(12) & !\divisor|s_divCounter[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(12),
	datad => VCC,
	cin => \divisor|s_divCounter[11]~50\,
	combout => \divisor|s_divCounter[12]~51_combout\,
	cout => \divisor|s_divCounter[12]~52\);

-- Location: FF_X96_Y69_N31
\divisor|s_divCounter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[12]~51_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(12));

-- Location: LCCOMB_X96_Y68_N0
\divisor|s_divCounter[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[13]~53_combout\ = (\divisor|s_divCounter\(13) & (!\divisor|s_divCounter[12]~52\)) # (!\divisor|s_divCounter\(13) & ((\divisor|s_divCounter[12]~52\) # (GND)))
-- \divisor|s_divCounter[13]~54\ = CARRY((!\divisor|s_divCounter[12]~52\) # (!\divisor|s_divCounter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(13),
	datad => VCC,
	cin => \divisor|s_divCounter[12]~52\,
	combout => \divisor|s_divCounter[13]~53_combout\,
	cout => \divisor|s_divCounter[13]~54\);

-- Location: FF_X96_Y68_N1
\divisor|s_divCounter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[13]~53_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(13));

-- Location: LCCOMB_X96_Y68_N2
\divisor|s_divCounter[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[14]~55_combout\ = (\divisor|s_divCounter\(14) & (\divisor|s_divCounter[13]~54\ $ (GND))) # (!\divisor|s_divCounter\(14) & (!\divisor|s_divCounter[13]~54\ & VCC))
-- \divisor|s_divCounter[14]~56\ = CARRY((\divisor|s_divCounter\(14) & !\divisor|s_divCounter[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(14),
	datad => VCC,
	cin => \divisor|s_divCounter[13]~54\,
	combout => \divisor|s_divCounter[14]~55_combout\,
	cout => \divisor|s_divCounter[14]~56\);

-- Location: FF_X96_Y68_N3
\divisor|s_divCounter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[14]~55_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(14));

-- Location: LCCOMB_X96_Y68_N4
\divisor|s_divCounter[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[15]~57_combout\ = (\divisor|s_divCounter\(15) & (!\divisor|s_divCounter[14]~56\)) # (!\divisor|s_divCounter\(15) & ((\divisor|s_divCounter[14]~56\) # (GND)))
-- \divisor|s_divCounter[15]~58\ = CARRY((!\divisor|s_divCounter[14]~56\) # (!\divisor|s_divCounter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(15),
	datad => VCC,
	cin => \divisor|s_divCounter[14]~56\,
	combout => \divisor|s_divCounter[15]~57_combout\,
	cout => \divisor|s_divCounter[15]~58\);

-- Location: FF_X96_Y68_N5
\divisor|s_divCounter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[15]~57_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(15));

-- Location: LCCOMB_X96_Y68_N6
\divisor|s_divCounter[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[16]~59_combout\ = (\divisor|s_divCounter\(16) & (\divisor|s_divCounter[15]~58\ $ (GND))) # (!\divisor|s_divCounter\(16) & (!\divisor|s_divCounter[15]~58\ & VCC))
-- \divisor|s_divCounter[16]~60\ = CARRY((\divisor|s_divCounter\(16) & !\divisor|s_divCounter[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(16),
	datad => VCC,
	cin => \divisor|s_divCounter[15]~58\,
	combout => \divisor|s_divCounter[16]~59_combout\,
	cout => \divisor|s_divCounter[16]~60\);

-- Location: FF_X96_Y68_N7
\divisor|s_divCounter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[16]~59_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(16));

-- Location: LCCOMB_X96_Y68_N8
\divisor|s_divCounter[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[17]~61_combout\ = (\divisor|s_divCounter\(17) & (!\divisor|s_divCounter[16]~60\)) # (!\divisor|s_divCounter\(17) & ((\divisor|s_divCounter[16]~60\) # (GND)))
-- \divisor|s_divCounter[17]~62\ = CARRY((!\divisor|s_divCounter[16]~60\) # (!\divisor|s_divCounter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(17),
	datad => VCC,
	cin => \divisor|s_divCounter[16]~60\,
	combout => \divisor|s_divCounter[17]~61_combout\,
	cout => \divisor|s_divCounter[17]~62\);

-- Location: FF_X96_Y68_N9
\divisor|s_divCounter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[17]~61_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(17));

-- Location: LCCOMB_X96_Y68_N10
\divisor|s_divCounter[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[18]~63_combout\ = (\divisor|s_divCounter\(18) & (\divisor|s_divCounter[17]~62\ $ (GND))) # (!\divisor|s_divCounter\(18) & (!\divisor|s_divCounter[17]~62\ & VCC))
-- \divisor|s_divCounter[18]~64\ = CARRY((\divisor|s_divCounter\(18) & !\divisor|s_divCounter[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(18),
	datad => VCC,
	cin => \divisor|s_divCounter[17]~62\,
	combout => \divisor|s_divCounter[18]~63_combout\,
	cout => \divisor|s_divCounter[18]~64\);

-- Location: FF_X96_Y68_N11
\divisor|s_divCounter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[18]~63_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(18));

-- Location: LCCOMB_X96_Y68_N12
\divisor|s_divCounter[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[19]~65_combout\ = (\divisor|s_divCounter\(19) & (!\divisor|s_divCounter[18]~64\)) # (!\divisor|s_divCounter\(19) & ((\divisor|s_divCounter[18]~64\) # (GND)))
-- \divisor|s_divCounter[19]~66\ = CARRY((!\divisor|s_divCounter[18]~64\) # (!\divisor|s_divCounter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(19),
	datad => VCC,
	cin => \divisor|s_divCounter[18]~64\,
	combout => \divisor|s_divCounter[19]~65_combout\,
	cout => \divisor|s_divCounter[19]~66\);

-- Location: FF_X96_Y68_N13
\divisor|s_divCounter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[19]~65_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(19));

-- Location: LCCOMB_X96_Y68_N14
\divisor|s_divCounter[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[20]~67_combout\ = (\divisor|s_divCounter\(20) & (\divisor|s_divCounter[19]~66\ $ (GND))) # (!\divisor|s_divCounter\(20) & (!\divisor|s_divCounter[19]~66\ & VCC))
-- \divisor|s_divCounter[20]~68\ = CARRY((\divisor|s_divCounter\(20) & !\divisor|s_divCounter[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(20),
	datad => VCC,
	cin => \divisor|s_divCounter[19]~66\,
	combout => \divisor|s_divCounter[20]~67_combout\,
	cout => \divisor|s_divCounter[20]~68\);

-- Location: FF_X96_Y68_N15
\divisor|s_divCounter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[20]~67_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(20));

-- Location: LCCOMB_X96_Y68_N16
\divisor|s_divCounter[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[21]~69_combout\ = (\divisor|s_divCounter\(21) & (!\divisor|s_divCounter[20]~68\)) # (!\divisor|s_divCounter\(21) & ((\divisor|s_divCounter[20]~68\) # (GND)))
-- \divisor|s_divCounter[21]~70\ = CARRY((!\divisor|s_divCounter[20]~68\) # (!\divisor|s_divCounter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(21),
	datad => VCC,
	cin => \divisor|s_divCounter[20]~68\,
	combout => \divisor|s_divCounter[21]~69_combout\,
	cout => \divisor|s_divCounter[21]~70\);

-- Location: FF_X96_Y68_N17
\divisor|s_divCounter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[21]~69_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(21));

-- Location: LCCOMB_X96_Y68_N18
\divisor|s_divCounter[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[22]~71_combout\ = (\divisor|s_divCounter\(22) & (\divisor|s_divCounter[21]~70\ $ (GND))) # (!\divisor|s_divCounter\(22) & (!\divisor|s_divCounter[21]~70\ & VCC))
-- \divisor|s_divCounter[22]~72\ = CARRY((\divisor|s_divCounter\(22) & !\divisor|s_divCounter[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(22),
	datad => VCC,
	cin => \divisor|s_divCounter[21]~70\,
	combout => \divisor|s_divCounter[22]~71_combout\,
	cout => \divisor|s_divCounter[22]~72\);

-- Location: FF_X96_Y68_N19
\divisor|s_divCounter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[22]~71_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(22));

-- Location: LCCOMB_X96_Y68_N20
\divisor|s_divCounter[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[23]~73_combout\ = (\divisor|s_divCounter\(23) & (!\divisor|s_divCounter[22]~72\)) # (!\divisor|s_divCounter\(23) & ((\divisor|s_divCounter[22]~72\) # (GND)))
-- \divisor|s_divCounter[23]~74\ = CARRY((!\divisor|s_divCounter[22]~72\) # (!\divisor|s_divCounter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(23),
	datad => VCC,
	cin => \divisor|s_divCounter[22]~72\,
	combout => \divisor|s_divCounter[23]~73_combout\,
	cout => \divisor|s_divCounter[23]~74\);

-- Location: FF_X96_Y68_N21
\divisor|s_divCounter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[23]~73_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(23));

-- Location: LCCOMB_X96_Y68_N22
\divisor|s_divCounter[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[24]~75_combout\ = (\divisor|s_divCounter\(24) & (\divisor|s_divCounter[23]~74\ $ (GND))) # (!\divisor|s_divCounter\(24) & (!\divisor|s_divCounter[23]~74\ & VCC))
-- \divisor|s_divCounter[24]~76\ = CARRY((\divisor|s_divCounter\(24) & !\divisor|s_divCounter[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(24),
	datad => VCC,
	cin => \divisor|s_divCounter[23]~74\,
	combout => \divisor|s_divCounter[24]~75_combout\,
	cout => \divisor|s_divCounter[24]~76\);

-- Location: FF_X96_Y68_N23
\divisor|s_divCounter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[24]~75_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(24));

-- Location: LCCOMB_X96_Y68_N24
\divisor|s_divCounter[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[25]~77_combout\ = (\divisor|s_divCounter\(25) & (!\divisor|s_divCounter[24]~76\)) # (!\divisor|s_divCounter\(25) & ((\divisor|s_divCounter[24]~76\) # (GND)))
-- \divisor|s_divCounter[25]~78\ = CARRY((!\divisor|s_divCounter[24]~76\) # (!\divisor|s_divCounter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \divisor|s_divCounter\(25),
	datad => VCC,
	cin => \divisor|s_divCounter[24]~76\,
	combout => \divisor|s_divCounter[25]~77_combout\,
	cout => \divisor|s_divCounter[25]~78\);

-- Location: FF_X96_Y68_N25
\divisor|s_divCounter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[25]~77_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(25));

-- Location: LCCOMB_X96_Y68_N26
\divisor|s_divCounter[26]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|s_divCounter[26]~79_combout\ = \divisor|s_divCounter\(26) $ (!\divisor|s_divCounter[25]~78\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(26),
	cin => \divisor|s_divCounter[25]~78\,
	combout => \divisor|s_divCounter[26]~79_combout\);

-- Location: FF_X96_Y68_N27
\divisor|s_divCounter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|s_divCounter[26]~79_combout\,
	sclr => \divisor|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|s_divCounter\(26));

-- Location: LCCOMB_X95_Y69_N18
\divisor|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~1_combout\ = (((!\divisor|s_divCounter\(14)) # (!\divisor|s_divCounter\(15))) # (!\divisor|s_divCounter\(13))) # (!\divisor|s_divCounter\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(12),
	datab => \divisor|s_divCounter\(13),
	datac => \divisor|s_divCounter\(15),
	datad => \divisor|s_divCounter\(14),
	combout => \divisor|LessThan1~1_combout\);

-- Location: LCCOMB_X95_Y69_N16
\divisor|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~5_combout\ = (\divisor|LessThan1~1_combout\) # ((\divisor|LessThan1~4_combout\ & (!\divisor|s_divCounter\(7) & \divisor|LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|LessThan1~4_combout\,
	datab => \divisor|s_divCounter\(7),
	datac => \divisor|LessThan1~3_combout\,
	datad => \divisor|LessThan1~1_combout\,
	combout => \divisor|LessThan1~5_combout\);

-- Location: LCCOMB_X95_Y69_N14
\divisor|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~6_combout\ = (\divisor|s_divCounter\(17) & ((\divisor|s_divCounter\(16)) # (!\divisor|LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(17),
	datac => \divisor|s_divCounter\(16),
	datad => \divisor|LessThan1~5_combout\,
	combout => \divisor|LessThan1~6_combout\);

-- Location: LCCOMB_X95_Y69_N0
\divisor|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~7_combout\ = (\divisor|LessThan1~0_combout\ & (\divisor|s_divCounter\(19) & ((\divisor|s_divCounter\(18)) # (\divisor|LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(18),
	datab => \divisor|LessThan1~0_combout\,
	datac => \divisor|LessThan1~6_combout\,
	datad => \divisor|s_divCounter\(19),
	combout => \divisor|LessThan1~7_combout\);

-- Location: LCCOMB_X95_Y69_N2
\divisor|LessThan1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \divisor|LessThan1~8_combout\ = (\divisor|s_divCounter\(26)) # ((\divisor|s_divCounter\(25) & ((\divisor|s_divCounter\(24)) # (\divisor|LessThan1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|s_divCounter\(26),
	datab => \divisor|s_divCounter\(25),
	datac => \divisor|s_divCounter\(24),
	datad => \divisor|LessThan1~7_combout\,
	combout => \divisor|LessThan1~8_combout\);

-- Location: FF_X95_Y69_N3
\divisor|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \divisor|LessThan1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|clkOut~q\);

-- Location: CLKCTRL_G11
\divisor|clkOut~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \divisor|clkOut~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \divisor|clkOut~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y17_N18
\system_core|PS~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|PS~8_combout\ = (!\SW[1]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \system_core|PS~8_combout\);

-- Location: FF_X114_Y17_N19
\system_core|PS.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clkOut~clkctrl_outclk\,
	d => \system_core|PS~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|PS.B~q\);

-- Location: LCCOMB_X114_Y17_N12
\system_core|PS~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|PS~7_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \system_core|PS.B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \system_core|PS.B~q\,
	combout => \system_core|PS~7_combout\);

-- Location: FF_X114_Y17_N13
\system_core|PS.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clkOut~clkctrl_outclk\,
	d => \system_core|PS~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|PS.C~q\);

-- Location: LCCOMB_X114_Y17_N28
\system_core|PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|PS~6_combout\ = (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \system_core|PS.C~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \system_core|PS.C~q\,
	combout => \system_core|PS~6_combout\);

-- Location: FF_X114_Y17_N29
\system_core|PS.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|clkOut~clkctrl_outclk\,
	d => \system_core|PS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \system_core|PS.D~q\);

-- Location: LCCOMB_X114_Y17_N6
\system_core|zOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \system_core|zOut~1_combout\ = (\system_core|PS.D~q\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \system_core|PS.D~q\,
	datad => \SW[0]~input_o\,
	combout => \system_core|zOut~1_combout\);

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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


