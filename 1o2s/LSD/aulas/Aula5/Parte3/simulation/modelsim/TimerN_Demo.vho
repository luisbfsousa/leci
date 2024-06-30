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

-- DATE "04/21/2022 18:48:45"

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

ENTITY 	TimerN_Demo IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0)
	);
END TimerN_Demo;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_count[0]~32_combout\ : std_logic;
SIGNAL \inst|s_count[23]~81\ : std_logic;
SIGNAL \inst|s_count[24]~82_combout\ : std_logic;
SIGNAL \inst|s_count[1]~51_combout\ : std_logic;
SIGNAL \inst|s_count[24]~83\ : std_logic;
SIGNAL \inst|s_count[25]~84_combout\ : std_logic;
SIGNAL \inst|s_count[25]~85\ : std_logic;
SIGNAL \inst|s_count[26]~86_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|s_count[26]~87\ : std_logic;
SIGNAL \inst|s_count[27]~88_combout\ : std_logic;
SIGNAL \inst|s_count[27]~89\ : std_logic;
SIGNAL \inst|s_count[28]~90_combout\ : std_logic;
SIGNAL \inst|s_count[28]~91\ : std_logic;
SIGNAL \inst|s_count[29]~92_combout\ : std_logic;
SIGNAL \inst|s_count[29]~93\ : std_logic;
SIGNAL \inst|s_count[30]~94_combout\ : std_logic;
SIGNAL \inst|s_count[30]~95\ : std_logic;
SIGNAL \inst|s_count[31]~96_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Equal1~4_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~5_combout\ : std_logic;
SIGNAL \inst|timerOut~0_combout\ : std_logic;
SIGNAL \inst|s_count[1]~50_combout\ : std_logic;
SIGNAL \inst|s_count[0]~33\ : std_logic;
SIGNAL \inst|s_count[1]~34_combout\ : std_logic;
SIGNAL \inst|s_count[1]~35\ : std_logic;
SIGNAL \inst|s_count[2]~36_combout\ : std_logic;
SIGNAL \inst|s_count[2]~37\ : std_logic;
SIGNAL \inst|s_count[3]~38_combout\ : std_logic;
SIGNAL \inst|s_count[3]~39\ : std_logic;
SIGNAL \inst|s_count[4]~40_combout\ : std_logic;
SIGNAL \inst|s_count[4]~41\ : std_logic;
SIGNAL \inst|s_count[5]~42_combout\ : std_logic;
SIGNAL \inst|s_count[5]~43\ : std_logic;
SIGNAL \inst|s_count[6]~44_combout\ : std_logic;
SIGNAL \inst|s_count[6]~45\ : std_logic;
SIGNAL \inst|s_count[7]~46_combout\ : std_logic;
SIGNAL \inst|s_count[7]~47\ : std_logic;
SIGNAL \inst|s_count[8]~48_combout\ : std_logic;
SIGNAL \inst|s_count[8]~49\ : std_logic;
SIGNAL \inst|s_count[9]~52_combout\ : std_logic;
SIGNAL \inst|s_count[9]~53\ : std_logic;
SIGNAL \inst|s_count[10]~54_combout\ : std_logic;
SIGNAL \inst|s_count[10]~55\ : std_logic;
SIGNAL \inst|s_count[11]~56_combout\ : std_logic;
SIGNAL \inst|s_count[11]~57\ : std_logic;
SIGNAL \inst|s_count[12]~58_combout\ : std_logic;
SIGNAL \inst|s_count[12]~59\ : std_logic;
SIGNAL \inst|s_count[13]~60_combout\ : std_logic;
SIGNAL \inst|s_count[13]~61\ : std_logic;
SIGNAL \inst|s_count[14]~62_combout\ : std_logic;
SIGNAL \inst|s_count[14]~63\ : std_logic;
SIGNAL \inst|s_count[15]~64_combout\ : std_logic;
SIGNAL \inst|s_count[15]~65\ : std_logic;
SIGNAL \inst|s_count[16]~66_combout\ : std_logic;
SIGNAL \inst|s_count[16]~67\ : std_logic;
SIGNAL \inst|s_count[17]~68_combout\ : std_logic;
SIGNAL \inst|s_count[17]~69\ : std_logic;
SIGNAL \inst|s_count[18]~70_combout\ : std_logic;
SIGNAL \inst|s_count[18]~71\ : std_logic;
SIGNAL \inst|s_count[19]~72_combout\ : std_logic;
SIGNAL \inst|s_count[19]~73\ : std_logic;
SIGNAL \inst|s_count[20]~74_combout\ : std_logic;
SIGNAL \inst|s_count[20]~75\ : std_logic;
SIGNAL \inst|s_count[21]~76_combout\ : std_logic;
SIGNAL \inst|s_count[21]~77\ : std_logic;
SIGNAL \inst|s_count[22]~78_combout\ : std_logic;
SIGNAL \inst|s_count[22]~79\ : std_logic;
SIGNAL \inst|s_count[23]~80_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|timerOut~1_combout\ : std_logic;
SIGNAL \inst|timerOut~2_combout\ : std_logic;
SIGNAL \inst|timerOut~q\ : std_logic;
SIGNAL \inst|s_count\ : std_logic_vector(31 DOWNTO 0);

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
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y4_N9
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|timerOut~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: IOIBUF_X0_Y4_N22
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X4_Y6_N0
\inst|s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[0]~32_combout\ = \inst|s_count\(0) $ (VCC)
-- \inst|s_count[0]~33\ = CARRY(\inst|s_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(0),
	datad => VCC,
	combout => \inst|s_count[0]~32_combout\,
	cout => \inst|s_count[0]~33\);

-- Location: LCCOMB_X4_Y5_N14
\inst|s_count[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[23]~80_combout\ = (\inst|s_count\(23) & (!\inst|s_count[22]~79\)) # (!\inst|s_count\(23) & ((\inst|s_count[22]~79\) # (GND)))
-- \inst|s_count[23]~81\ = CARRY((!\inst|s_count[22]~79\) # (!\inst|s_count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(23),
	datad => VCC,
	cin => \inst|s_count[22]~79\,
	combout => \inst|s_count[23]~80_combout\,
	cout => \inst|s_count[23]~81\);

-- Location: LCCOMB_X4_Y5_N16
\inst|s_count[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[24]~82_combout\ = (\inst|s_count\(24) & (\inst|s_count[23]~81\ $ (GND))) # (!\inst|s_count\(24) & (!\inst|s_count[23]~81\ & VCC))
-- \inst|s_count[24]~83\ = CARRY((\inst|s_count\(24) & !\inst|s_count[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(24),
	datad => VCC,
	cin => \inst|s_count[23]~81\,
	combout => \inst|s_count[24]~82_combout\,
	cout => \inst|s_count[24]~83\);

-- Location: LCCOMB_X3_Y5_N6
\inst|s_count[1]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~51_combout\ = (\SW[2]~input_o\) # ((\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|s_count[1]~51_combout\);

-- Location: FF_X4_Y5_N17
\inst|s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[24]~82_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(24));

-- Location: LCCOMB_X4_Y5_N18
\inst|s_count[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[25]~84_combout\ = (\inst|s_count\(25) & (!\inst|s_count[24]~83\)) # (!\inst|s_count\(25) & ((\inst|s_count[24]~83\) # (GND)))
-- \inst|s_count[25]~85\ = CARRY((!\inst|s_count[24]~83\) # (!\inst|s_count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(25),
	datad => VCC,
	cin => \inst|s_count[24]~83\,
	combout => \inst|s_count[25]~84_combout\,
	cout => \inst|s_count[25]~85\);

-- Location: FF_X2_Y5_N19
\inst|s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[25]~84_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(25));

-- Location: LCCOMB_X4_Y5_N20
\inst|s_count[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[26]~86_combout\ = (\inst|s_count\(26) & (\inst|s_count[25]~85\ $ (GND))) # (!\inst|s_count\(26) & (!\inst|s_count[25]~85\ & VCC))
-- \inst|s_count[26]~87\ = CARRY((\inst|s_count\(26) & !\inst|s_count[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(26),
	datad => VCC,
	cin => \inst|s_count[25]~85\,
	combout => \inst|s_count[26]~86_combout\,
	cout => \inst|s_count[26]~87\);

-- Location: FF_X4_Y5_N21
\inst|s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[26]~86_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(26));

-- Location: LCCOMB_X2_Y5_N12
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|s_count\(23) & (\inst|s_count\(26) & \inst|s_count\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(23),
	datab => \inst|s_count\(26),
	datad => \inst|s_count\(24),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X2_Y5_N26
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|s_count\(17) & (!\inst|s_count\(19) & (!\inst|s_count\(12) & !\inst|s_count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(17),
	datab => \inst|s_count\(19),
	datac => \inst|s_count\(12),
	datad => \inst|s_count\(25),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X4_Y5_N22
\inst|s_count[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[27]~88_combout\ = (\inst|s_count\(27) & (!\inst|s_count[26]~87\)) # (!\inst|s_count\(27) & ((\inst|s_count[26]~87\) # (GND)))
-- \inst|s_count[27]~89\ = CARRY((!\inst|s_count[26]~87\) # (!\inst|s_count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(27),
	datad => VCC,
	cin => \inst|s_count[26]~87\,
	combout => \inst|s_count[27]~88_combout\,
	cout => \inst|s_count[27]~89\);

-- Location: FF_X4_Y5_N23
\inst|s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[27]~88_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(27));

-- Location: LCCOMB_X4_Y5_N24
\inst|s_count[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[28]~90_combout\ = (\inst|s_count\(28) & (\inst|s_count[27]~89\ $ (GND))) # (!\inst|s_count\(28) & (!\inst|s_count[27]~89\ & VCC))
-- \inst|s_count[28]~91\ = CARRY((\inst|s_count\(28) & !\inst|s_count[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(28),
	datad => VCC,
	cin => \inst|s_count[27]~89\,
	combout => \inst|s_count[28]~90_combout\,
	cout => \inst|s_count[28]~91\);

-- Location: FF_X4_Y5_N25
\inst|s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[28]~90_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(28));

-- Location: LCCOMB_X4_Y5_N26
\inst|s_count[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[29]~92_combout\ = (\inst|s_count\(29) & (!\inst|s_count[28]~91\)) # (!\inst|s_count\(29) & ((\inst|s_count[28]~91\) # (GND)))
-- \inst|s_count[29]~93\ = CARRY((!\inst|s_count[28]~91\) # (!\inst|s_count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(29),
	datad => VCC,
	cin => \inst|s_count[28]~91\,
	combout => \inst|s_count[29]~92_combout\,
	cout => \inst|s_count[29]~93\);

-- Location: FF_X4_Y5_N27
\inst|s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[29]~92_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(29));

-- Location: LCCOMB_X4_Y5_N28
\inst|s_count[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[30]~94_combout\ = (\inst|s_count\(30) & (\inst|s_count[29]~93\ $ (GND))) # (!\inst|s_count\(30) & (!\inst|s_count[29]~93\ & VCC))
-- \inst|s_count[30]~95\ = CARRY((\inst|s_count\(30) & !\inst|s_count[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(30),
	datad => VCC,
	cin => \inst|s_count[29]~93\,
	combout => \inst|s_count[30]~94_combout\,
	cout => \inst|s_count[30]~95\);

-- Location: FF_X4_Y5_N29
\inst|s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[30]~94_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(30));

-- Location: LCCOMB_X4_Y5_N30
\inst|s_count[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[31]~96_combout\ = \inst|s_count\(31) $ (\inst|s_count[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(31),
	cin => \inst|s_count[30]~95\,
	combout => \inst|s_count[31]~96_combout\);

-- Location: FF_X4_Y5_N31
\inst|s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[31]~96_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(31));

-- Location: LCCOMB_X2_Y5_N4
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|s_count\(9) & (!\inst|s_count\(8) & (!\inst|s_count\(11) & !\inst|s_count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(9),
	datab => \inst|s_count\(8),
	datac => \inst|s_count\(11),
	datad => \inst|s_count\(10),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y5_N28
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|s_count\(30) & (!\inst|s_count\(28) & (!\inst|s_count\(27) & !\inst|s_count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(30),
	datab => \inst|s_count\(28),
	datac => \inst|s_count\(27),
	datad => \inst|s_count\(29),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y5_N6
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (\inst|Equal0~1_combout\ & (!\inst|s_count\(31) & (\inst|Equal0~0_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|s_count\(31),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X3_Y5_N12
\inst|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = (\inst|s_count\(16) & (\inst|s_count\(14) & (\inst|s_count\(13) & \inst|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datab => \inst|s_count\(14),
	datac => \inst|s_count\(13),
	datad => \inst|s_count\(15),
	combout => \inst|Equal1~3_combout\);

-- Location: LCCOMB_X3_Y5_N2
\inst|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~4_combout\ = (\inst|s_count\(18) & (\inst|s_count\(20) & (\inst|s_count\(21) & \inst|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(18),
	datab => \inst|s_count\(20),
	datac => \inst|s_count\(21),
	datad => \inst|s_count\(22),
	combout => \inst|Equal1~4_combout\);

-- Location: LCCOMB_X3_Y5_N26
\inst|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = (\inst|s_count\(6) & (\inst|s_count\(5) & (\inst|s_count\(7) & \inst|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(6),
	datab => \inst|s_count\(5),
	datac => \inst|s_count\(7),
	datad => \inst|s_count\(4),
	combout => \inst|Equal1~2_combout\);

-- Location: LCCOMB_X3_Y6_N20
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|s_count\(3) & (\inst|s_count\(0) & (\inst|s_count\(1) & \inst|s_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(3),
	datab => \inst|s_count\(0),
	datac => \inst|s_count\(1),
	datad => \inst|s_count\(2),
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X3_Y5_N4
\inst|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~5_combout\ = (\inst|Equal1~3_combout\ & (\inst|Equal1~4_combout\ & (\inst|Equal1~2_combout\ & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~3_combout\,
	datab => \inst|Equal1~4_combout\,
	datac => \inst|Equal1~2_combout\,
	datad => \inst|Equal1~1_combout\,
	combout => \inst|Equal1~5_combout\);

-- Location: LCCOMB_X3_Y5_N10
\inst|timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~0_combout\ = (!\inst|Equal0~10_combout\ & (((!\inst|Equal1~5_combout\) # (!\inst|Equal0~3_combout\)) # (!\inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal1~0_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal1~5_combout\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|timerOut~0_combout\);

-- Location: LCCOMB_X3_Y5_N0
\inst|s_count[1]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~50_combout\ = (\SW[2]~input_o\) # ((!\inst|timerOut~0_combout\ & ((!\SW[0]~input_o\) # (!\inst|Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|Equal0~10_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|timerOut~0_combout\,
	combout => \inst|s_count[1]~50_combout\);

-- Location: FF_X4_Y6_N1
\inst|s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[0]~32_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(0));

-- Location: LCCOMB_X4_Y6_N2
\inst|s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[1]~34_combout\ = (\inst|s_count\(1) & (!\inst|s_count[0]~33\)) # (!\inst|s_count\(1) & ((\inst|s_count[0]~33\) # (GND)))
-- \inst|s_count[1]~35\ = CARRY((!\inst|s_count[0]~33\) # (!\inst|s_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(1),
	datad => VCC,
	cin => \inst|s_count[0]~33\,
	combout => \inst|s_count[1]~34_combout\,
	cout => \inst|s_count[1]~35\);

-- Location: FF_X4_Y6_N3
\inst|s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[1]~34_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(1));

-- Location: LCCOMB_X4_Y6_N4
\inst|s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[2]~36_combout\ = (\inst|s_count\(2) & (\inst|s_count[1]~35\ $ (GND))) # (!\inst|s_count\(2) & (!\inst|s_count[1]~35\ & VCC))
-- \inst|s_count[2]~37\ = CARRY((\inst|s_count\(2) & !\inst|s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(2),
	datad => VCC,
	cin => \inst|s_count[1]~35\,
	combout => \inst|s_count[2]~36_combout\,
	cout => \inst|s_count[2]~37\);

-- Location: FF_X4_Y6_N5
\inst|s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[2]~36_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(2));

-- Location: LCCOMB_X4_Y6_N6
\inst|s_count[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[3]~38_combout\ = (\inst|s_count\(3) & (!\inst|s_count[2]~37\)) # (!\inst|s_count\(3) & ((\inst|s_count[2]~37\) # (GND)))
-- \inst|s_count[3]~39\ = CARRY((!\inst|s_count[2]~37\) # (!\inst|s_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(3),
	datad => VCC,
	cin => \inst|s_count[2]~37\,
	combout => \inst|s_count[3]~38_combout\,
	cout => \inst|s_count[3]~39\);

-- Location: FF_X4_Y6_N7
\inst|s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[3]~38_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(3));

-- Location: LCCOMB_X4_Y6_N8
\inst|s_count[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[4]~40_combout\ = (\inst|s_count\(4) & (\inst|s_count[3]~39\ $ (GND))) # (!\inst|s_count\(4) & (!\inst|s_count[3]~39\ & VCC))
-- \inst|s_count[4]~41\ = CARRY((\inst|s_count\(4) & !\inst|s_count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(4),
	datad => VCC,
	cin => \inst|s_count[3]~39\,
	combout => \inst|s_count[4]~40_combout\,
	cout => \inst|s_count[4]~41\);

-- Location: FF_X4_Y6_N9
\inst|s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[4]~40_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(4));

-- Location: LCCOMB_X4_Y6_N10
\inst|s_count[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[5]~42_combout\ = (\inst|s_count\(5) & (!\inst|s_count[4]~41\)) # (!\inst|s_count\(5) & ((\inst|s_count[4]~41\) # (GND)))
-- \inst|s_count[5]~43\ = CARRY((!\inst|s_count[4]~41\) # (!\inst|s_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(5),
	datad => VCC,
	cin => \inst|s_count[4]~41\,
	combout => \inst|s_count[5]~42_combout\,
	cout => \inst|s_count[5]~43\);

-- Location: FF_X4_Y6_N11
\inst|s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[5]~42_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(5));

-- Location: LCCOMB_X4_Y6_N12
\inst|s_count[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[6]~44_combout\ = (\inst|s_count\(6) & (\inst|s_count[5]~43\ $ (GND))) # (!\inst|s_count\(6) & (!\inst|s_count[5]~43\ & VCC))
-- \inst|s_count[6]~45\ = CARRY((\inst|s_count\(6) & !\inst|s_count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(6),
	datad => VCC,
	cin => \inst|s_count[5]~43\,
	combout => \inst|s_count[6]~44_combout\,
	cout => \inst|s_count[6]~45\);

-- Location: FF_X3_Y5_N25
\inst|s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[6]~44_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(6));

-- Location: LCCOMB_X4_Y6_N14
\inst|s_count[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[7]~46_combout\ = (\inst|s_count\(7) & (!\inst|s_count[6]~45\)) # (!\inst|s_count\(7) & ((\inst|s_count[6]~45\) # (GND)))
-- \inst|s_count[7]~47\ = CARRY((!\inst|s_count[6]~45\) # (!\inst|s_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(7),
	datad => VCC,
	cin => \inst|s_count[6]~45\,
	combout => \inst|s_count[7]~46_combout\,
	cout => \inst|s_count[7]~47\);

-- Location: FF_X3_Y5_N27
\inst|s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[7]~46_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(7));

-- Location: LCCOMB_X4_Y6_N16
\inst|s_count[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[8]~48_combout\ = (\inst|s_count\(8) & (\inst|s_count[7]~47\ $ (GND))) # (!\inst|s_count\(8) & (!\inst|s_count[7]~47\ & VCC))
-- \inst|s_count[8]~49\ = CARRY((\inst|s_count\(8) & !\inst|s_count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(8),
	datad => VCC,
	cin => \inst|s_count[7]~47\,
	combout => \inst|s_count[8]~48_combout\,
	cout => \inst|s_count[8]~49\);

-- Location: FF_X2_Y5_N1
\inst|s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[8]~48_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(8));

-- Location: LCCOMB_X4_Y6_N18
\inst|s_count[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[9]~52_combout\ = (\inst|s_count\(9) & (!\inst|s_count[8]~49\)) # (!\inst|s_count\(9) & ((\inst|s_count[8]~49\) # (GND)))
-- \inst|s_count[9]~53\ = CARRY((!\inst|s_count[8]~49\) # (!\inst|s_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(9),
	datad => VCC,
	cin => \inst|s_count[8]~49\,
	combout => \inst|s_count[9]~52_combout\,
	cout => \inst|s_count[9]~53\);

-- Location: FF_X2_Y5_N31
\inst|s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[9]~52_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(9));

-- Location: LCCOMB_X4_Y6_N20
\inst|s_count[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[10]~54_combout\ = (\inst|s_count\(10) & (\inst|s_count[9]~53\ $ (GND))) # (!\inst|s_count\(10) & (!\inst|s_count[9]~53\ & VCC))
-- \inst|s_count[10]~55\ = CARRY((\inst|s_count\(10) & !\inst|s_count[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(10),
	datad => VCC,
	cin => \inst|s_count[9]~53\,
	combout => \inst|s_count[10]~54_combout\,
	cout => \inst|s_count[10]~55\);

-- Location: FF_X2_Y5_N17
\inst|s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[10]~54_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(10));

-- Location: LCCOMB_X4_Y6_N22
\inst|s_count[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[11]~56_combout\ = (\inst|s_count\(11) & (!\inst|s_count[10]~55\)) # (!\inst|s_count\(11) & ((\inst|s_count[10]~55\) # (GND)))
-- \inst|s_count[11]~57\ = CARRY((!\inst|s_count[10]~55\) # (!\inst|s_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(11),
	datad => VCC,
	cin => \inst|s_count[10]~55\,
	combout => \inst|s_count[11]~56_combout\,
	cout => \inst|s_count[11]~57\);

-- Location: FF_X2_Y5_N15
\inst|s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[11]~56_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(11));

-- Location: LCCOMB_X4_Y6_N24
\inst|s_count[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[12]~58_combout\ = (\inst|s_count\(12) & (\inst|s_count[11]~57\ $ (GND))) # (!\inst|s_count\(12) & (!\inst|s_count[11]~57\ & VCC))
-- \inst|s_count[12]~59\ = CARRY((\inst|s_count\(12) & !\inst|s_count[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(12),
	datad => VCC,
	cin => \inst|s_count[11]~57\,
	combout => \inst|s_count[12]~58_combout\,
	cout => \inst|s_count[12]~59\);

-- Location: FF_X2_Y5_N9
\inst|s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[12]~58_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(12));

-- Location: LCCOMB_X4_Y6_N26
\inst|s_count[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[13]~60_combout\ = (\inst|s_count\(13) & (!\inst|s_count[12]~59\)) # (!\inst|s_count\(13) & ((\inst|s_count[12]~59\) # (GND)))
-- \inst|s_count[13]~61\ = CARRY((!\inst|s_count[12]~59\) # (!\inst|s_count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(13),
	datad => VCC,
	cin => \inst|s_count[12]~59\,
	combout => \inst|s_count[13]~60_combout\,
	cout => \inst|s_count[13]~61\);

-- Location: FF_X4_Y6_N27
\inst|s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[13]~60_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(13));

-- Location: LCCOMB_X4_Y6_N28
\inst|s_count[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[14]~62_combout\ = (\inst|s_count\(14) & (\inst|s_count[13]~61\ $ (GND))) # (!\inst|s_count\(14) & (!\inst|s_count[13]~61\ & VCC))
-- \inst|s_count[14]~63\ = CARRY((\inst|s_count\(14) & !\inst|s_count[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(14),
	datad => VCC,
	cin => \inst|s_count[13]~61\,
	combout => \inst|s_count[14]~62_combout\,
	cout => \inst|s_count[14]~63\);

-- Location: FF_X4_Y6_N29
\inst|s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[14]~62_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(14));

-- Location: LCCOMB_X4_Y6_N30
\inst|s_count[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[15]~64_combout\ = (\inst|s_count\(15) & (!\inst|s_count[14]~63\)) # (!\inst|s_count\(15) & ((\inst|s_count[14]~63\) # (GND)))
-- \inst|s_count[15]~65\ = CARRY((!\inst|s_count[14]~63\) # (!\inst|s_count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(15),
	datad => VCC,
	cin => \inst|s_count[14]~63\,
	combout => \inst|s_count[15]~64_combout\,
	cout => \inst|s_count[15]~65\);

-- Location: FF_X4_Y6_N31
\inst|s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[15]~64_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(15));

-- Location: LCCOMB_X4_Y5_N0
\inst|s_count[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[16]~66_combout\ = (\inst|s_count\(16) & (\inst|s_count[15]~65\ $ (GND))) # (!\inst|s_count\(16) & (!\inst|s_count[15]~65\ & VCC))
-- \inst|s_count[16]~67\ = CARRY((\inst|s_count\(16) & !\inst|s_count[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(16),
	datad => VCC,
	cin => \inst|s_count[15]~65\,
	combout => \inst|s_count[16]~66_combout\,
	cout => \inst|s_count[16]~67\);

-- Location: FF_X4_Y5_N1
\inst|s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[16]~66_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(16));

-- Location: LCCOMB_X4_Y5_N2
\inst|s_count[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[17]~68_combout\ = (\inst|s_count\(17) & (!\inst|s_count[16]~67\)) # (!\inst|s_count\(17) & ((\inst|s_count[16]~67\) # (GND)))
-- \inst|s_count[17]~69\ = CARRY((!\inst|s_count[16]~67\) # (!\inst|s_count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(17),
	datad => VCC,
	cin => \inst|s_count[16]~67\,
	combout => \inst|s_count[17]~68_combout\,
	cout => \inst|s_count[17]~69\);

-- Location: FF_X2_Y5_N23
\inst|s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[17]~68_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(17));

-- Location: LCCOMB_X4_Y5_N4
\inst|s_count[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[18]~70_combout\ = (\inst|s_count\(18) & (\inst|s_count[17]~69\ $ (GND))) # (!\inst|s_count\(18) & (!\inst|s_count[17]~69\ & VCC))
-- \inst|s_count[18]~71\ = CARRY((\inst|s_count\(18) & !\inst|s_count[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(18),
	datad => VCC,
	cin => \inst|s_count[17]~69\,
	combout => \inst|s_count[18]~70_combout\,
	cout => \inst|s_count[18]~71\);

-- Location: FF_X4_Y5_N5
\inst|s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[18]~70_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(18));

-- Location: LCCOMB_X4_Y5_N6
\inst|s_count[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[19]~72_combout\ = (\inst|s_count\(19) & (!\inst|s_count[18]~71\)) # (!\inst|s_count\(19) & ((\inst|s_count[18]~71\) # (GND)))
-- \inst|s_count[19]~73\ = CARRY((!\inst|s_count[18]~71\) # (!\inst|s_count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(19),
	datad => VCC,
	cin => \inst|s_count[18]~71\,
	combout => \inst|s_count[19]~72_combout\,
	cout => \inst|s_count[19]~73\);

-- Location: FF_X2_Y5_N21
\inst|s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|s_count[19]~72_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	sload => VCC,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(19));

-- Location: LCCOMB_X4_Y5_N8
\inst|s_count[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[20]~74_combout\ = (\inst|s_count\(20) & (\inst|s_count[19]~73\ $ (GND))) # (!\inst|s_count\(20) & (!\inst|s_count[19]~73\ & VCC))
-- \inst|s_count[20]~75\ = CARRY((\inst|s_count\(20) & !\inst|s_count[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_count\(20),
	datad => VCC,
	cin => \inst|s_count[19]~73\,
	combout => \inst|s_count[20]~74_combout\,
	cout => \inst|s_count[20]~75\);

-- Location: FF_X4_Y5_N9
\inst|s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[20]~74_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(20));

-- Location: LCCOMB_X4_Y5_N10
\inst|s_count[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[21]~76_combout\ = (\inst|s_count\(21) & (!\inst|s_count[20]~75\)) # (!\inst|s_count\(21) & ((\inst|s_count[20]~75\) # (GND)))
-- \inst|s_count[21]~77\ = CARRY((!\inst|s_count[20]~75\) # (!\inst|s_count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(21),
	datad => VCC,
	cin => \inst|s_count[20]~75\,
	combout => \inst|s_count[21]~76_combout\,
	cout => \inst|s_count[21]~77\);

-- Location: FF_X4_Y5_N11
\inst|s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[21]~76_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(21));

-- Location: LCCOMB_X4_Y5_N12
\inst|s_count[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_count[22]~78_combout\ = (\inst|s_count\(22) & (\inst|s_count[21]~77\ $ (GND))) # (!\inst|s_count\(22) & (!\inst|s_count[21]~77\ & VCC))
-- \inst|s_count[22]~79\ = CARRY((\inst|s_count\(22) & !\inst|s_count[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(22),
	datad => VCC,
	cin => \inst|s_count[21]~77\,
	combout => \inst|s_count[22]~78_combout\,
	cout => \inst|s_count[22]~79\);

-- Location: FF_X4_Y5_N13
\inst|s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[22]~78_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(22));

-- Location: FF_X4_Y5_N15
\inst|s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_count[23]~80_combout\,
	sclr => \inst|s_count[1]~50_combout\,
	ena => \inst|s_count[1]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_count\(23));

-- Location: LCCOMB_X3_Y5_N14
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|s_count\(23) & (!\inst|s_count\(24) & !\inst|s_count\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(23),
	datac => \inst|s_count\(24),
	datad => \inst|s_count\(26),
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X3_Y5_N30
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|s_count\(18) & (!\inst|s_count\(20) & (!\inst|s_count\(21) & !\inst|s_count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(18),
	datab => \inst|s_count\(20),
	datac => \inst|s_count\(21),
	datad => \inst|s_count\(22),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X3_Y5_N20
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|s_count\(2) & (!\inst|s_count\(3) & (!\inst|s_count\(1) & !\inst|s_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(2),
	datab => \inst|s_count\(3),
	datac => \inst|s_count\(1),
	datad => \inst|s_count\(0),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X3_Y5_N22
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|s_count\(6) & (!\inst|s_count\(7) & (!\inst|s_count\(5) & !\inst|s_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(6),
	datab => \inst|s_count\(7),
	datac => \inst|s_count\(5),
	datad => \inst|s_count\(4),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X3_Y5_N28
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|s_count\(16) & (!\inst|s_count\(14) & (!\inst|s_count\(13) & !\inst|s_count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_count\(16),
	datab => \inst|s_count\(14),
	datac => \inst|s_count\(13),
	datad => \inst|s_count\(15),
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X3_Y5_N16
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (\inst|Equal0~8_combout\ & (\inst|Equal0~5_combout\ & (\inst|Equal0~6_combout\ & \inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~8_combout\,
	datab => \inst|Equal0~5_combout\,
	datac => \inst|Equal0~6_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X3_Y5_N18
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|Equal0~4_combout\ & (\inst|Equal0~3_combout\ & \inst|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~4_combout\,
	datac => \inst|Equal0~3_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: LCCOMB_X3_Y5_N24
\inst|timerOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~1_combout\ = (\inst|timerOut~0_combout\) # ((\SW[0]~input_o\ & \inst|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|Equal0~10_combout\,
	datad => \inst|timerOut~0_combout\,
	combout => \inst|timerOut~1_combout\);

-- Location: LCCOMB_X3_Y5_N8
\inst|timerOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|timerOut~2_combout\ = (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\inst|timerOut~1_combout\))) # (!\SW[1]~input_o\ & (\inst|timerOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \inst|timerOut~q\,
	datad => \inst|timerOut~1_combout\,
	combout => \inst|timerOut~2_combout\);

-- Location: FF_X3_Y5_N9
\inst|timerOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|timerOut~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|timerOut~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


