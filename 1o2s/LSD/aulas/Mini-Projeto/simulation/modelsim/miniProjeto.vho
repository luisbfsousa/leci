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

-- DATE "05/17/2022 11:54:17"

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

ENTITY 	miniProjeto IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END miniProjeto;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF miniProjeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pulseGenerator|pulse~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \pulseGenerator|s_counter[0]~25_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[6]~27_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[0]~26\ : std_logic;
SIGNAL \pulseGenerator|s_counter[1]~28_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[1]~29\ : std_logic;
SIGNAL \pulseGenerator|s_counter[2]~30_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[2]~31\ : std_logic;
SIGNAL \pulseGenerator|s_counter[3]~32_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[3]~33\ : std_logic;
SIGNAL \pulseGenerator|s_counter[4]~34_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[4]~35\ : std_logic;
SIGNAL \pulseGenerator|s_counter[5]~36_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[5]~37\ : std_logic;
SIGNAL \pulseGenerator|s_counter[6]~38_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[6]~39\ : std_logic;
SIGNAL \pulseGenerator|s_counter[7]~40_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[7]~41\ : std_logic;
SIGNAL \pulseGenerator|s_counter[8]~42_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[8]~43\ : std_logic;
SIGNAL \pulseGenerator|s_counter[9]~44_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[9]~45\ : std_logic;
SIGNAL \pulseGenerator|s_counter[10]~46_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[10]~47\ : std_logic;
SIGNAL \pulseGenerator|s_counter[11]~48_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[11]~49\ : std_logic;
SIGNAL \pulseGenerator|s_counter[12]~50_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[12]~51\ : std_logic;
SIGNAL \pulseGenerator|s_counter[13]~52_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[13]~53\ : std_logic;
SIGNAL \pulseGenerator|s_counter[14]~54_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[14]~55\ : std_logic;
SIGNAL \pulseGenerator|s_counter[15]~56_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[15]~57\ : std_logic;
SIGNAL \pulseGenerator|s_counter[16]~58_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[16]~59\ : std_logic;
SIGNAL \pulseGenerator|s_counter[17]~60_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[17]~61\ : std_logic;
SIGNAL \pulseGenerator|s_counter[18]~62_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[18]~63\ : std_logic;
SIGNAL \pulseGenerator|s_counter[19]~64_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[19]~65\ : std_logic;
SIGNAL \pulseGenerator|s_counter[20]~66_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[20]~67\ : std_logic;
SIGNAL \pulseGenerator|s_counter[21]~68_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[21]~69\ : std_logic;
SIGNAL \pulseGenerator|s_counter[22]~70_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[22]~71\ : std_logic;
SIGNAL \pulseGenerator|s_counter[23]~72_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter[23]~73\ : std_logic;
SIGNAL \pulseGenerator|s_counter[24]~74_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~6_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~5_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~1_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~2_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~0_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~3_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~4_combout\ : std_logic;
SIGNAL \pulseGenerator|Equal0~7_combout\ : std_logic;
SIGNAL \pulseGenerator|pulse~0_combout\ : std_logic;
SIGNAL \pulseGenerator|pulse~q\ : std_logic;
SIGNAL \pulseGenerator|pulse~clkctrl_outclk\ : std_logic;
SIGNAL \counter|s_count[0]~2_combout\ : std_logic;
SIGNAL \decoder|decOut_n~17_combout\ : std_logic;
SIGNAL \counter|Add0~0_combout\ : std_logic;
SIGNAL \counter|Add0~1_combout\ : std_logic;
SIGNAL \decoder|decOut_n~6_combout\ : std_logic;
SIGNAL \decoder|decOut_n~7_combout\ : std_logic;
SIGNAL \decoder|decOut_n~8_combout\ : std_logic;
SIGNAL \decoder|decOut_n~9_combout\ : std_logic;
SIGNAL \decoder|decOut_n~10_combout\ : std_logic;
SIGNAL \decoder|decOut_n~11_combout\ : std_logic;
SIGNAL \decoder|decOut_n~12_combout\ : std_logic;
SIGNAL \decoder|decOut_n[3]~2_combout\ : std_logic;
SIGNAL \decoder|decOut_n[3]~18_combout\ : std_logic;
SIGNAL \decoder|decOut_n~13_combout\ : std_logic;
SIGNAL \decoder|decOut_n~14_combout\ : std_logic;
SIGNAL \decoder|decOut_n~15_combout\ : std_logic;
SIGNAL \decoder|decOut_n~16_combout\ : std_logic;
SIGNAL \decoder|decOut_n[6]~5_combout\ : std_logic;
SIGNAL \decoder|decOut_n[6]~19_combout\ : std_logic;
SIGNAL \pulseGenerator|s_counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \counter|s_count\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\pulseGenerator|pulse~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \pulseGenerator|pulse~q\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n~10_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n~12_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n[3]~18_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n~14_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|decOut_n[6]~19_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

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

-- Location: LCCOMB_X114_Y23_N8
\pulseGenerator|s_counter[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[0]~25_combout\ = \pulseGenerator|s_counter\(0) $ (VCC)
-- \pulseGenerator|s_counter[0]~26\ = CARRY(\pulseGenerator|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(0),
	datad => VCC,
	combout => \pulseGenerator|s_counter[0]~25_combout\,
	cout => \pulseGenerator|s_counter[0]~26\);

-- Location: LCCOMB_X114_Y23_N2
\pulseGenerator|s_counter[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[6]~27_combout\ = (\SW[1]~input_o\) # (!\pulseGenerator|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \pulseGenerator|Equal0~7_combout\,
	combout => \pulseGenerator|s_counter[6]~27_combout\);

-- Location: FF_X114_Y23_N9
\pulseGenerator|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[0]~25_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(0));

-- Location: LCCOMB_X114_Y23_N10
\pulseGenerator|s_counter[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[1]~28_combout\ = (\pulseGenerator|s_counter\(1) & (!\pulseGenerator|s_counter[0]~26\)) # (!\pulseGenerator|s_counter\(1) & ((\pulseGenerator|s_counter[0]~26\) # (GND)))
-- \pulseGenerator|s_counter[1]~29\ = CARRY((!\pulseGenerator|s_counter[0]~26\) # (!\pulseGenerator|s_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(1),
	datad => VCC,
	cin => \pulseGenerator|s_counter[0]~26\,
	combout => \pulseGenerator|s_counter[1]~28_combout\,
	cout => \pulseGenerator|s_counter[1]~29\);

-- Location: FF_X114_Y23_N11
\pulseGenerator|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[1]~28_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(1));

-- Location: LCCOMB_X114_Y23_N12
\pulseGenerator|s_counter[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[2]~30_combout\ = (\pulseGenerator|s_counter\(2) & (\pulseGenerator|s_counter[1]~29\ $ (GND))) # (!\pulseGenerator|s_counter\(2) & (!\pulseGenerator|s_counter[1]~29\ & VCC))
-- \pulseGenerator|s_counter[2]~31\ = CARRY((\pulseGenerator|s_counter\(2) & !\pulseGenerator|s_counter[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(2),
	datad => VCC,
	cin => \pulseGenerator|s_counter[1]~29\,
	combout => \pulseGenerator|s_counter[2]~30_combout\,
	cout => \pulseGenerator|s_counter[2]~31\);

-- Location: FF_X114_Y23_N13
\pulseGenerator|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[2]~30_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(2));

-- Location: LCCOMB_X114_Y23_N14
\pulseGenerator|s_counter[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[3]~32_combout\ = (\pulseGenerator|s_counter\(3) & (!\pulseGenerator|s_counter[2]~31\)) # (!\pulseGenerator|s_counter\(3) & ((\pulseGenerator|s_counter[2]~31\) # (GND)))
-- \pulseGenerator|s_counter[3]~33\ = CARRY((!\pulseGenerator|s_counter[2]~31\) # (!\pulseGenerator|s_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(3),
	datad => VCC,
	cin => \pulseGenerator|s_counter[2]~31\,
	combout => \pulseGenerator|s_counter[3]~32_combout\,
	cout => \pulseGenerator|s_counter[3]~33\);

-- Location: FF_X114_Y23_N15
\pulseGenerator|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[3]~32_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(3));

-- Location: LCCOMB_X114_Y23_N16
\pulseGenerator|s_counter[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[4]~34_combout\ = (\pulseGenerator|s_counter\(4) & (\pulseGenerator|s_counter[3]~33\ $ (GND))) # (!\pulseGenerator|s_counter\(4) & (!\pulseGenerator|s_counter[3]~33\ & VCC))
-- \pulseGenerator|s_counter[4]~35\ = CARRY((\pulseGenerator|s_counter\(4) & !\pulseGenerator|s_counter[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(4),
	datad => VCC,
	cin => \pulseGenerator|s_counter[3]~33\,
	combout => \pulseGenerator|s_counter[4]~34_combout\,
	cout => \pulseGenerator|s_counter[4]~35\);

-- Location: FF_X114_Y23_N17
\pulseGenerator|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[4]~34_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(4));

-- Location: LCCOMB_X114_Y23_N18
\pulseGenerator|s_counter[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[5]~36_combout\ = (\pulseGenerator|s_counter\(5) & (!\pulseGenerator|s_counter[4]~35\)) # (!\pulseGenerator|s_counter\(5) & ((\pulseGenerator|s_counter[4]~35\) # (GND)))
-- \pulseGenerator|s_counter[5]~37\ = CARRY((!\pulseGenerator|s_counter[4]~35\) # (!\pulseGenerator|s_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(5),
	datad => VCC,
	cin => \pulseGenerator|s_counter[4]~35\,
	combout => \pulseGenerator|s_counter[5]~36_combout\,
	cout => \pulseGenerator|s_counter[5]~37\);

-- Location: FF_X114_Y23_N19
\pulseGenerator|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[5]~36_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(5));

-- Location: LCCOMB_X114_Y23_N20
\pulseGenerator|s_counter[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[6]~38_combout\ = (\pulseGenerator|s_counter\(6) & (\pulseGenerator|s_counter[5]~37\ $ (GND))) # (!\pulseGenerator|s_counter\(6) & (!\pulseGenerator|s_counter[5]~37\ & VCC))
-- \pulseGenerator|s_counter[6]~39\ = CARRY((\pulseGenerator|s_counter\(6) & !\pulseGenerator|s_counter[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(6),
	datad => VCC,
	cin => \pulseGenerator|s_counter[5]~37\,
	combout => \pulseGenerator|s_counter[6]~38_combout\,
	cout => \pulseGenerator|s_counter[6]~39\);

-- Location: FF_X114_Y23_N21
\pulseGenerator|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[6]~38_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(6));

-- Location: LCCOMB_X114_Y23_N22
\pulseGenerator|s_counter[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[7]~40_combout\ = (\pulseGenerator|s_counter\(7) & (!\pulseGenerator|s_counter[6]~39\)) # (!\pulseGenerator|s_counter\(7) & ((\pulseGenerator|s_counter[6]~39\) # (GND)))
-- \pulseGenerator|s_counter[7]~41\ = CARRY((!\pulseGenerator|s_counter[6]~39\) # (!\pulseGenerator|s_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(7),
	datad => VCC,
	cin => \pulseGenerator|s_counter[6]~39\,
	combout => \pulseGenerator|s_counter[7]~40_combout\,
	cout => \pulseGenerator|s_counter[7]~41\);

-- Location: FF_X114_Y23_N23
\pulseGenerator|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[7]~40_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(7));

-- Location: LCCOMB_X114_Y23_N24
\pulseGenerator|s_counter[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[8]~42_combout\ = (\pulseGenerator|s_counter\(8) & (\pulseGenerator|s_counter[7]~41\ $ (GND))) # (!\pulseGenerator|s_counter\(8) & (!\pulseGenerator|s_counter[7]~41\ & VCC))
-- \pulseGenerator|s_counter[8]~43\ = CARRY((\pulseGenerator|s_counter\(8) & !\pulseGenerator|s_counter[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(8),
	datad => VCC,
	cin => \pulseGenerator|s_counter[7]~41\,
	combout => \pulseGenerator|s_counter[8]~42_combout\,
	cout => \pulseGenerator|s_counter[8]~43\);

-- Location: FF_X114_Y23_N25
\pulseGenerator|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[8]~42_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(8));

-- Location: LCCOMB_X114_Y23_N26
\pulseGenerator|s_counter[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[9]~44_combout\ = (\pulseGenerator|s_counter\(9) & (!\pulseGenerator|s_counter[8]~43\)) # (!\pulseGenerator|s_counter\(9) & ((\pulseGenerator|s_counter[8]~43\) # (GND)))
-- \pulseGenerator|s_counter[9]~45\ = CARRY((!\pulseGenerator|s_counter[8]~43\) # (!\pulseGenerator|s_counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(9),
	datad => VCC,
	cin => \pulseGenerator|s_counter[8]~43\,
	combout => \pulseGenerator|s_counter[9]~44_combout\,
	cout => \pulseGenerator|s_counter[9]~45\);

-- Location: FF_X114_Y23_N27
\pulseGenerator|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[9]~44_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(9));

-- Location: LCCOMB_X114_Y23_N28
\pulseGenerator|s_counter[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[10]~46_combout\ = (\pulseGenerator|s_counter\(10) & (\pulseGenerator|s_counter[9]~45\ $ (GND))) # (!\pulseGenerator|s_counter\(10) & (!\pulseGenerator|s_counter[9]~45\ & VCC))
-- \pulseGenerator|s_counter[10]~47\ = CARRY((\pulseGenerator|s_counter\(10) & !\pulseGenerator|s_counter[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(10),
	datad => VCC,
	cin => \pulseGenerator|s_counter[9]~45\,
	combout => \pulseGenerator|s_counter[10]~46_combout\,
	cout => \pulseGenerator|s_counter[10]~47\);

-- Location: FF_X114_Y23_N29
\pulseGenerator|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[10]~46_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(10));

-- Location: LCCOMB_X114_Y23_N30
\pulseGenerator|s_counter[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[11]~48_combout\ = (\pulseGenerator|s_counter\(11) & (!\pulseGenerator|s_counter[10]~47\)) # (!\pulseGenerator|s_counter\(11) & ((\pulseGenerator|s_counter[10]~47\) # (GND)))
-- \pulseGenerator|s_counter[11]~49\ = CARRY((!\pulseGenerator|s_counter[10]~47\) # (!\pulseGenerator|s_counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(11),
	datad => VCC,
	cin => \pulseGenerator|s_counter[10]~47\,
	combout => \pulseGenerator|s_counter[11]~48_combout\,
	cout => \pulseGenerator|s_counter[11]~49\);

-- Location: FF_X114_Y23_N31
\pulseGenerator|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[11]~48_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(11));

-- Location: LCCOMB_X114_Y22_N0
\pulseGenerator|s_counter[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[12]~50_combout\ = (\pulseGenerator|s_counter\(12) & (\pulseGenerator|s_counter[11]~49\ $ (GND))) # (!\pulseGenerator|s_counter\(12) & (!\pulseGenerator|s_counter[11]~49\ & VCC))
-- \pulseGenerator|s_counter[12]~51\ = CARRY((\pulseGenerator|s_counter\(12) & !\pulseGenerator|s_counter[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(12),
	datad => VCC,
	cin => \pulseGenerator|s_counter[11]~49\,
	combout => \pulseGenerator|s_counter[12]~50_combout\,
	cout => \pulseGenerator|s_counter[12]~51\);

-- Location: FF_X114_Y22_N1
\pulseGenerator|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[12]~50_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(12));

-- Location: LCCOMB_X114_Y22_N2
\pulseGenerator|s_counter[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[13]~52_combout\ = (\pulseGenerator|s_counter\(13) & (!\pulseGenerator|s_counter[12]~51\)) # (!\pulseGenerator|s_counter\(13) & ((\pulseGenerator|s_counter[12]~51\) # (GND)))
-- \pulseGenerator|s_counter[13]~53\ = CARRY((!\pulseGenerator|s_counter[12]~51\) # (!\pulseGenerator|s_counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(13),
	datad => VCC,
	cin => \pulseGenerator|s_counter[12]~51\,
	combout => \pulseGenerator|s_counter[13]~52_combout\,
	cout => \pulseGenerator|s_counter[13]~53\);

-- Location: FF_X114_Y22_N3
\pulseGenerator|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[13]~52_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(13));

-- Location: LCCOMB_X114_Y22_N4
\pulseGenerator|s_counter[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[14]~54_combout\ = (\pulseGenerator|s_counter\(14) & (\pulseGenerator|s_counter[13]~53\ $ (GND))) # (!\pulseGenerator|s_counter\(14) & (!\pulseGenerator|s_counter[13]~53\ & VCC))
-- \pulseGenerator|s_counter[14]~55\ = CARRY((\pulseGenerator|s_counter\(14) & !\pulseGenerator|s_counter[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(14),
	datad => VCC,
	cin => \pulseGenerator|s_counter[13]~53\,
	combout => \pulseGenerator|s_counter[14]~54_combout\,
	cout => \pulseGenerator|s_counter[14]~55\);

-- Location: FF_X114_Y22_N5
\pulseGenerator|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[14]~54_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(14));

-- Location: LCCOMB_X114_Y22_N6
\pulseGenerator|s_counter[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[15]~56_combout\ = (\pulseGenerator|s_counter\(15) & (!\pulseGenerator|s_counter[14]~55\)) # (!\pulseGenerator|s_counter\(15) & ((\pulseGenerator|s_counter[14]~55\) # (GND)))
-- \pulseGenerator|s_counter[15]~57\ = CARRY((!\pulseGenerator|s_counter[14]~55\) # (!\pulseGenerator|s_counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(15),
	datad => VCC,
	cin => \pulseGenerator|s_counter[14]~55\,
	combout => \pulseGenerator|s_counter[15]~56_combout\,
	cout => \pulseGenerator|s_counter[15]~57\);

-- Location: FF_X114_Y22_N7
\pulseGenerator|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[15]~56_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(15));

-- Location: LCCOMB_X114_Y22_N8
\pulseGenerator|s_counter[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[16]~58_combout\ = (\pulseGenerator|s_counter\(16) & (\pulseGenerator|s_counter[15]~57\ $ (GND))) # (!\pulseGenerator|s_counter\(16) & (!\pulseGenerator|s_counter[15]~57\ & VCC))
-- \pulseGenerator|s_counter[16]~59\ = CARRY((\pulseGenerator|s_counter\(16) & !\pulseGenerator|s_counter[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(16),
	datad => VCC,
	cin => \pulseGenerator|s_counter[15]~57\,
	combout => \pulseGenerator|s_counter[16]~58_combout\,
	cout => \pulseGenerator|s_counter[16]~59\);

-- Location: FF_X114_Y22_N9
\pulseGenerator|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[16]~58_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(16));

-- Location: LCCOMB_X114_Y22_N10
\pulseGenerator|s_counter[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[17]~60_combout\ = (\pulseGenerator|s_counter\(17) & (!\pulseGenerator|s_counter[16]~59\)) # (!\pulseGenerator|s_counter\(17) & ((\pulseGenerator|s_counter[16]~59\) # (GND)))
-- \pulseGenerator|s_counter[17]~61\ = CARRY((!\pulseGenerator|s_counter[16]~59\) # (!\pulseGenerator|s_counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(17),
	datad => VCC,
	cin => \pulseGenerator|s_counter[16]~59\,
	combout => \pulseGenerator|s_counter[17]~60_combout\,
	cout => \pulseGenerator|s_counter[17]~61\);

-- Location: FF_X114_Y22_N11
\pulseGenerator|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[17]~60_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(17));

-- Location: LCCOMB_X114_Y22_N12
\pulseGenerator|s_counter[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[18]~62_combout\ = (\pulseGenerator|s_counter\(18) & (\pulseGenerator|s_counter[17]~61\ $ (GND))) # (!\pulseGenerator|s_counter\(18) & (!\pulseGenerator|s_counter[17]~61\ & VCC))
-- \pulseGenerator|s_counter[18]~63\ = CARRY((\pulseGenerator|s_counter\(18) & !\pulseGenerator|s_counter[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(18),
	datad => VCC,
	cin => \pulseGenerator|s_counter[17]~61\,
	combout => \pulseGenerator|s_counter[18]~62_combout\,
	cout => \pulseGenerator|s_counter[18]~63\);

-- Location: FF_X114_Y22_N13
\pulseGenerator|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[18]~62_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(18));

-- Location: LCCOMB_X114_Y22_N14
\pulseGenerator|s_counter[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[19]~64_combout\ = (\pulseGenerator|s_counter\(19) & (!\pulseGenerator|s_counter[18]~63\)) # (!\pulseGenerator|s_counter\(19) & ((\pulseGenerator|s_counter[18]~63\) # (GND)))
-- \pulseGenerator|s_counter[19]~65\ = CARRY((!\pulseGenerator|s_counter[18]~63\) # (!\pulseGenerator|s_counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(19),
	datad => VCC,
	cin => \pulseGenerator|s_counter[18]~63\,
	combout => \pulseGenerator|s_counter[19]~64_combout\,
	cout => \pulseGenerator|s_counter[19]~65\);

-- Location: FF_X114_Y22_N15
\pulseGenerator|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[19]~64_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(19));

-- Location: LCCOMB_X114_Y22_N16
\pulseGenerator|s_counter[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[20]~66_combout\ = (\pulseGenerator|s_counter\(20) & (\pulseGenerator|s_counter[19]~65\ $ (GND))) # (!\pulseGenerator|s_counter\(20) & (!\pulseGenerator|s_counter[19]~65\ & VCC))
-- \pulseGenerator|s_counter[20]~67\ = CARRY((\pulseGenerator|s_counter\(20) & !\pulseGenerator|s_counter[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(20),
	datad => VCC,
	cin => \pulseGenerator|s_counter[19]~65\,
	combout => \pulseGenerator|s_counter[20]~66_combout\,
	cout => \pulseGenerator|s_counter[20]~67\);

-- Location: FF_X114_Y22_N17
\pulseGenerator|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[20]~66_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(20));

-- Location: LCCOMB_X114_Y22_N18
\pulseGenerator|s_counter[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[21]~68_combout\ = (\pulseGenerator|s_counter\(21) & (!\pulseGenerator|s_counter[20]~67\)) # (!\pulseGenerator|s_counter\(21) & ((\pulseGenerator|s_counter[20]~67\) # (GND)))
-- \pulseGenerator|s_counter[21]~69\ = CARRY((!\pulseGenerator|s_counter[20]~67\) # (!\pulseGenerator|s_counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(21),
	datad => VCC,
	cin => \pulseGenerator|s_counter[20]~67\,
	combout => \pulseGenerator|s_counter[21]~68_combout\,
	cout => \pulseGenerator|s_counter[21]~69\);

-- Location: FF_X114_Y22_N19
\pulseGenerator|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[21]~68_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(21));

-- Location: LCCOMB_X114_Y22_N20
\pulseGenerator|s_counter[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[22]~70_combout\ = (\pulseGenerator|s_counter\(22) & (\pulseGenerator|s_counter[21]~69\ $ (GND))) # (!\pulseGenerator|s_counter\(22) & (!\pulseGenerator|s_counter[21]~69\ & VCC))
-- \pulseGenerator|s_counter[22]~71\ = CARRY((\pulseGenerator|s_counter\(22) & !\pulseGenerator|s_counter[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pulseGenerator|s_counter\(22),
	datad => VCC,
	cin => \pulseGenerator|s_counter[21]~69\,
	combout => \pulseGenerator|s_counter[22]~70_combout\,
	cout => \pulseGenerator|s_counter[22]~71\);

-- Location: FF_X114_Y22_N21
\pulseGenerator|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[22]~70_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(22));

-- Location: LCCOMB_X114_Y22_N22
\pulseGenerator|s_counter[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[23]~72_combout\ = (\pulseGenerator|s_counter\(23) & (!\pulseGenerator|s_counter[22]~71\)) # (!\pulseGenerator|s_counter\(23) & ((\pulseGenerator|s_counter[22]~71\) # (GND)))
-- \pulseGenerator|s_counter[23]~73\ = CARRY((!\pulseGenerator|s_counter[22]~71\) # (!\pulseGenerator|s_counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(23),
	datad => VCC,
	cin => \pulseGenerator|s_counter[22]~71\,
	combout => \pulseGenerator|s_counter[23]~72_combout\,
	cout => \pulseGenerator|s_counter[23]~73\);

-- Location: FF_X114_Y22_N23
\pulseGenerator|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[23]~72_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(23));

-- Location: LCCOMB_X114_Y22_N24
\pulseGenerator|s_counter[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|s_counter[24]~74_combout\ = \pulseGenerator|s_counter[23]~73\ $ (!\pulseGenerator|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pulseGenerator|s_counter\(24),
	cin => \pulseGenerator|s_counter[23]~73\,
	combout => \pulseGenerator|s_counter[24]~74_combout\);

-- Location: FF_X114_Y22_N25
\pulseGenerator|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|s_counter[24]~74_combout\,
	sclr => \pulseGenerator|s_counter[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|s_counter\(24));

-- Location: LCCOMB_X114_Y22_N30
\pulseGenerator|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~6_combout\ = (\pulseGenerator|s_counter\(23)) # (((!\pulseGenerator|s_counter\(21)) # (!\pulseGenerator|s_counter\(22))) # (!\pulseGenerator|s_counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(23),
	datab => \pulseGenerator|s_counter\(20),
	datac => \pulseGenerator|s_counter\(22),
	datad => \pulseGenerator|s_counter\(21),
	combout => \pulseGenerator|Equal0~6_combout\);

-- Location: LCCOMB_X114_Y22_N28
\pulseGenerator|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~5_combout\ = (((\pulseGenerator|s_counter\(17)) # (!\pulseGenerator|s_counter\(16))) # (!\pulseGenerator|s_counter\(19))) # (!\pulseGenerator|s_counter\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(18),
	datab => \pulseGenerator|s_counter\(19),
	datac => \pulseGenerator|s_counter\(16),
	datad => \pulseGenerator|s_counter\(17),
	combout => \pulseGenerator|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y23_N16
\pulseGenerator|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~1_combout\ = (\pulseGenerator|s_counter\(6)) # ((\pulseGenerator|s_counter\(7)) # ((!\pulseGenerator|s_counter\(5)) # (!\pulseGenerator|s_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(6),
	datab => \pulseGenerator|s_counter\(7),
	datac => \pulseGenerator|s_counter\(4),
	datad => \pulseGenerator|s_counter\(5),
	combout => \pulseGenerator|Equal0~1_combout\);

-- Location: LCCOMB_X114_Y23_N4
\pulseGenerator|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~2_combout\ = (\pulseGenerator|s_counter\(9)) # ((\pulseGenerator|s_counter\(8)) # ((\pulseGenerator|s_counter\(10)) # (!\pulseGenerator|s_counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(9),
	datab => \pulseGenerator|s_counter\(8),
	datac => \pulseGenerator|s_counter\(11),
	datad => \pulseGenerator|s_counter\(10),
	combout => \pulseGenerator|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y23_N6
\pulseGenerator|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~0_combout\ = (((!\pulseGenerator|s_counter\(3)) # (!\pulseGenerator|s_counter\(2))) # (!\pulseGenerator|s_counter\(0))) # (!\pulseGenerator|s_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(1),
	datab => \pulseGenerator|s_counter\(0),
	datac => \pulseGenerator|s_counter\(2),
	datad => \pulseGenerator|s_counter\(3),
	combout => \pulseGenerator|Equal0~0_combout\);

-- Location: LCCOMB_X114_Y22_N26
\pulseGenerator|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~3_combout\ = (\pulseGenerator|s_counter\(15)) # (((!\pulseGenerator|s_counter\(13)) # (!\pulseGenerator|s_counter\(14))) # (!\pulseGenerator|s_counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(15),
	datab => \pulseGenerator|s_counter\(12),
	datac => \pulseGenerator|s_counter\(14),
	datad => \pulseGenerator|s_counter\(13),
	combout => \pulseGenerator|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y23_N6
\pulseGenerator|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~4_combout\ = (\pulseGenerator|Equal0~1_combout\) # ((\pulseGenerator|Equal0~2_combout\) # ((\pulseGenerator|Equal0~0_combout\) # (\pulseGenerator|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|Equal0~1_combout\,
	datab => \pulseGenerator|Equal0~2_combout\,
	datac => \pulseGenerator|Equal0~0_combout\,
	datad => \pulseGenerator|Equal0~3_combout\,
	combout => \pulseGenerator|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y23_N0
\pulseGenerator|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|Equal0~7_combout\ = ((\pulseGenerator|Equal0~6_combout\) # ((\pulseGenerator|Equal0~5_combout\) # (\pulseGenerator|Equal0~4_combout\))) # (!\pulseGenerator|s_counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pulseGenerator|s_counter\(24),
	datab => \pulseGenerator|Equal0~6_combout\,
	datac => \pulseGenerator|Equal0~5_combout\,
	datad => \pulseGenerator|Equal0~4_combout\,
	combout => \pulseGenerator|Equal0~7_combout\);

-- Location: LCCOMB_X113_Y23_N26
\pulseGenerator|pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pulseGenerator|pulse~0_combout\ = (!\SW[1]~input_o\ & !\pulseGenerator|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \pulseGenerator|Equal0~7_combout\,
	combout => \pulseGenerator|pulse~0_combout\);

-- Location: FF_X113_Y23_N27
\pulseGenerator|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pulseGenerator|pulse~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pulseGenerator|pulse~q\);

-- Location: CLKCTRL_G8
\pulseGenerator|pulse~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \pulseGenerator|pulse~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \pulseGenerator|pulse~clkctrl_outclk\);

-- Location: LCCOMB_X114_Y69_N20
\counter|s_count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|s_count[0]~2_combout\ = !\counter|s_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(0),
	combout => \counter|s_count[0]~2_combout\);

-- Location: FF_X114_Y69_N21
\counter|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulseGenerator|pulse~clkctrl_outclk\,
	d => \counter|s_count[0]~2_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(0));

-- Location: LCCOMB_X114_Y69_N10
\decoder|decOut_n~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~17_combout\ = \counter|s_count\(1) $ (!\counter|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter|s_count\(1),
	datad => \counter|s_count\(0),
	combout => \decoder|decOut_n~17_combout\);

-- Location: FF_X114_Y69_N11
\counter|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulseGenerator|pulse~clkctrl_outclk\,
	d => \decoder|decOut_n~17_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(1));

-- Location: LCCOMB_X114_Y69_N24
\counter|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~0_combout\ = \counter|s_count\(2) $ (((!\counter|s_count\(1) & !\counter|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datac => \counter|s_count\(2),
	datad => \counter|s_count\(0),
	combout => \counter|Add0~0_combout\);

-- Location: FF_X114_Y69_N25
\counter|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulseGenerator|pulse~clkctrl_outclk\,
	d => \counter|Add0~0_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(2));

-- Location: LCCOMB_X114_Y69_N6
\counter|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter|Add0~1_combout\ = \counter|s_count\(3) $ (((!\counter|s_count\(1) & (!\counter|s_count\(2) & !\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(1),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(3),
	datad => \counter|s_count\(0),
	combout => \counter|Add0~1_combout\);

-- Location: FF_X114_Y69_N7
\counter|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pulseGenerator|pulse~clkctrl_outclk\,
	d => \counter|Add0~1_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter|s_count\(3));

-- Location: LCCOMB_X113_Y69_N24
\decoder|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~6_combout\ = (\counter|s_count\(3) & (\counter|s_count\(0) & (\counter|s_count\(2) $ (\counter|s_count\(1))))) # (!\counter|s_count\(3) & (!\counter|s_count\(1) & (\counter|s_count\(2) $ (\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(1),
	combout => \decoder|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y69_N12
\decoder|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~7_combout\ = (\decoder|decOut_n~6_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \decoder|decOut_n~6_combout\,
	combout => \decoder|decOut_n~7_combout\);

-- Location: LCCOMB_X113_Y69_N14
\decoder|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~8_combout\ = (\counter|s_count\(3) & (\counter|s_count\(2) & ((\counter|s_count\(1)) # (!\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(1),
	combout => \decoder|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y69_N18
\decoder|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~9_combout\ = (\counter|s_count\(2) & (!\counter|s_count\(3) & (\counter|s_count\(1) $ (\counter|s_count\(0))))) # (!\counter|s_count\(2) & (\counter|s_count\(1) & (\counter|s_count\(0) & \counter|s_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(3),
	combout => \decoder|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y69_N8
\decoder|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~10_combout\ = (\decoder|decOut_n~8_combout\) # ((\decoder|decOut_n~9_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|decOut_n~8_combout\,
	datac => \SW[0]~input_o\,
	datad => \decoder|decOut_n~9_combout\,
	combout => \decoder|decOut_n~10_combout\);

-- Location: LCCOMB_X113_Y69_N4
\decoder|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~11_combout\ = (!\counter|s_count\(3) & (!\counter|s_count\(2) & (!\counter|s_count\(0) & \counter|s_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(3),
	datab => \counter|s_count\(2),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(1),
	combout => \decoder|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y69_N2
\decoder|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~12_combout\ = (\decoder|decOut_n~11_combout\) # ((\decoder|decOut_n~8_combout\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decOut_n~11_combout\,
	datac => \SW[0]~input_o\,
	datad => \decoder|decOut_n~8_combout\,
	combout => \decoder|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y69_N16
\decoder|decOut_n[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[3]~2_combout\ = (\counter|s_count\(1) & ((\counter|s_count\(2) & (\counter|s_count\(0))) # (!\counter|s_count\(2) & (!\counter|s_count\(0) & \counter|s_count\(3))))) # (!\counter|s_count\(1) & (!\counter|s_count\(3) & 
-- (\counter|s_count\(2) $ (\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(3),
	combout => \decoder|decOut_n[3]~2_combout\);

-- Location: LCCOMB_X114_Y69_N26
\decoder|decOut_n[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[3]~18_combout\ = (\decoder|decOut_n[3]~2_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \decoder|decOut_n[3]~2_combout\,
	combout => \decoder|decOut_n[3]~18_combout\);

-- Location: LCCOMB_X114_Y69_N28
\decoder|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~13_combout\ = (\counter|s_count\(1) & (((\counter|s_count\(0) & !\counter|s_count\(3))))) # (!\counter|s_count\(1) & ((\counter|s_count\(2) & ((!\counter|s_count\(3)))) # (!\counter|s_count\(2) & (\counter|s_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(3),
	combout => \decoder|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y69_N30
\decoder|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~14_combout\ = (\decoder|decOut_n~13_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \decoder|decOut_n~13_combout\,
	combout => \decoder|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y69_N0
\decoder|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~15_combout\ = (\counter|s_count\(2) & (!\counter|s_count\(1) & \counter|s_count\(0))) # (!\counter|s_count\(2) & (\counter|s_count\(1) & !\counter|s_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(0),
	combout => \decoder|decOut_n~15_combout\);

-- Location: LCCOMB_X114_Y69_N14
\decoder|decOut_n~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n~16_combout\ = ((\counter|s_count\(0) & (\decoder|decOut_n~15_combout\ $ (!\counter|s_count\(3)))) # (!\counter|s_count\(0) & (\decoder|decOut_n~15_combout\ & !\counter|s_count\(3)))) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(0),
	datab => \decoder|decOut_n~15_combout\,
	datac => \SW[0]~input_o\,
	datad => \counter|s_count\(3),
	combout => \decoder|decOut_n~16_combout\);

-- Location: LCCOMB_X114_Y69_N4
\decoder|decOut_n[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[6]~5_combout\ = (\counter|s_count\(0) & (!\counter|s_count\(3) & (\counter|s_count\(2) $ (!\counter|s_count\(1))))) # (!\counter|s_count\(0) & (!\counter|s_count\(1) & (\counter|s_count\(2) $ (!\counter|s_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter|s_count\(2),
	datab => \counter|s_count\(1),
	datac => \counter|s_count\(0),
	datad => \counter|s_count\(3),
	combout => \decoder|decOut_n[6]~5_combout\);

-- Location: LCCOMB_X114_Y69_N22
\decoder|decOut_n[6]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[6]~19_combout\ = (\decoder|decOut_n[6]~5_combout\) # (!\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decoder|decOut_n[6]~5_combout\,
	datac => \SW[0]~input_o\,
	combout => \decoder|decOut_n[6]~19_combout\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


